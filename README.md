# Restaurants and House Prices

### [Google Slides - Segment 3](https://docs.google.com/presentation/d/14StszvpA3k_Lv2KxDT2XQVPraBzJ3NBlnx0kZtt-SHQ/edit?usp=sharing)
- See slides for Description of data sources
- See slides for Description of preliminary data exploration and preprocessing
- See slides for Description of analysis, including:
  - Description of preliminary feature engineering and preliminary feature selection
  - Description of how data was split
  - Explanation of model choice
  - Current accuracy scores
- See slides for description of technologies used.


### Code
- [Code for exploratory analysis and cleaning - housing data](https://github.com/pgoyal94/Restaurants_and_House_Prices/tree/main/Final/Housing_data_cleaning)
- [Code for exploratory analysis and cleaning - restaurant data](https://github.com/pgoyal94/Restaurants_and_House_Prices/tree/main/Final/Restaurant_data_cleaning)
- [Code for machine learning](https://github.com/pgoyal94/Restaurants_and_House_Prices/tree/main/Final/ML_Final)
- [Tableau Dashboard]()
*Need to update Tableau link to published site*

---

## 1. Introduction
   We are looking at the relationship between house prices and restaurants in the area. We believe that areas where homes are more expensive, there may exist a larger variety of restaurants and that these restaurants may be ranked higher than restaurants in areas where homes are less expensive. 


## 2. Description of the data sources
   To test our hypotheses, we pulled data from Yelp, Zillow, and Redfin for our main database. This gives us data about restaurants, including the types of restaurants, their ratings, number of reviews, etc. as well as house price data. Both of these data sets included zip code, so that is what we used to define a neighborhood for the purposes of our analysis.

---

## 3. Data exploration and processing

### Restaurant Data
   - Data from Yelp was pulled from their Fusion API and downloaded as JSON. We pulled for businesses tagged as "Restaurants." Due to API download limits, we pulled 150 businesses across 13,988 zip codes for which we have housing price data (confirm with Ramya).
   - We cleaned the Yelp data set to extract any potentially useful restaurant characteristics for modeling. Additionally, location data such as city and state information was extracted for data preprocessing and visualization.
   - Categories for each restaurant type were extracted. Additionally, dummies were created for each restaurant category and star ratings of each category for initial exploratory modeling. 
   - Data for restaurants were aggregated by zip code. The total number of different types of restaurants were counted per zip code.

### Housing Data
   - We cleaned up the Yelp data set to show only businesses that are currently open and exist only in USA zip codes. Since our project is based on restaurants, we also selected only businesses that had 'restaurant' listed as a category. We defined restaurant diversity as the number of restaurant categories (ex: Coffee&Tea, Bakeries, Burgers, etc.) that exist per zip code, so we added a column to reflect that. 
   - The Zillow data set, downloaded as a csv file, included housing price data from 2000 through 2022 by zip code. We kept only the 2021 data for our model as we were interested in the most current representative prices and data for 2022 is incomplete. Location data such as  city, state, and county names were kept for preprocessing and data visualization.
   - The Redfin data listed weekly median housing prices by zip code for 2021in csv format. We averaged the weekly prices for 2021. Additional location data such as city, state, and county names were kept for preprocessing and visualization.

### Merge and Preprocessing
   - We joined the final cleaned Yelp, Zillow, and Redfin datasets on the postal code column using SQL to be able to analyze the data. This showed us, by postal code, what the median house prices were and what the types of restaurants, their review counts, their ratings were, etc.
   - Finally, "neighborhood tiers" were created based on a multiplier calculated to eliminate the bias of housing prices in very different markets (e.g. San Francisco market versus rural Texas market where housing prices for equivalent homes would be very different). The median house price for each zip code was divided by average median price for each county (usually several zip codes). Cut offs for tiers was determined by calculating quantiles.

---

## 4. Data analysis (ML modeling)

### Feature Engineering and Data Splitting
   - Neighborhood tiers was used as the target variable.   
   - Features for modeling were selected from the merged restaurant and housing data based on restaurant characteristics such as total number of reviews, ratings, categories, etc. All location variables and the 2021 housing prices were dropped.
   - We split our data using the SciKit Learn test_train_split module, which helps us avoid over-or under-fitting. 
   - Data was scaled using SciKit Learn's standard scaler.

### Initial Modeling
 - We used supervised machine learning classification models for our analysis as we are trying to solve a classification problem with our data, i.e. predicting an area's neighborhood tier based on the Yelp restaurant review data. Since we have a rather complex data set, we expected ensemble classifiers to perform better than simple logistic classifiers.
 - We modeled based on three neighborhood tiers. Tiers were determined as such:
   - Tier 1 = < 25% quantile
   - Tier 2 = 25-75% 
   - Tier 3 = > 75% quantile
 - During preliminary modeling, we including all restaurant category columns (expanded dummies for each category and category + star rating). This was over 400 columns, most of which contributed almost 0 to the output. Therefore, we reduced the restaurant features to aggregate data for total price categories, total star ratings, and number of restaurant types (See slide deck for details).
 - Table 1 below shows some sample results from our initial models.


 **Table 1: Sample Results from initial ML Models - 3 Tiers, County Level**
[Modeling Notebook](https://github.com/pgoyal94/Restaurants_and_House_Prices/blob/main/Final/ML_Final/ML_Model_Trials/ML_optimization_county_3_tier%20.ipynb)

|Model|Logistic Regression|Balanced Random Forest | AdaBoost | Gradient Boost | Naive Bayes|
|---|---|---|---|---|---|
|Accuracy Score|52.6%|42.6%|40.8%|50.8%|30.4%|
|Weighted F1 Score|0.415|0.419|0.394|0.470|0.246|
|Tier 1 Precision Score|0.52|0.35|0.36|0.42|0.37|
|Tier 1 Recall Score|0.10|0.52|0.56|0.25|0.16|
|Tier 2 Precision Score|0.53|0.55|0.56|0.54|0.51|
|Tier 2 Recall Score|0.94|0.33|0.25|0.77|0.11|
|Tier 3 Precision Score|0.56|0.37|0.37|0.41|0.27|
|Tier 3 Recall Score|0.06|0.52|0.60|0.21|0.85|

*Which table looks better?*

|Model|Accuracy Score|Weighted F1 Score|Tier 1 Precision|Tier 1 Recall|Tier 2 Precision|Tier 2 Recall|Tier 3 Precision|Tier 3 Recall|
|---|---|---|---|---|---|--|--|--|
|Logistic Regression|52.6%|0.415|0.52|0.10|0.53|0.94|0.56|0.06|
|Balanced Random Forest|42.6%|0.419|0.35|0.52|0.55|0.33|0.37|0.52|
|AdaBoost|40.8%|0.394|0.36|0.56|0.56|0.25|0.37|0.60|
|Gradient Boost|50.8%|0.470|0.42|0.25|0.54|0.77|0.41|0.21|
|Naive Bayes|30.4%|0.246|0.37|0.16|0.51|0.11|0.27|0.85|




### Final Modeling (Need to finish)

Given the low accuracy scores in our initial models during segment 2 of the project, we changed our target variable to two tiers only (Tier 1 = above county average, Tier 2 = below county average). We also narrowed our features set to the top 10 (confirm?) features that contributed to the outputs during initial modeling. We selected the **???** as our final model as it consistently yielded some of our best results regardless of the number of features.

(Additional description?)

---

## 5. Results and conclusions (Not yet updated)
   - Based on our preliminary data of the academic Yelp data set, we see that there is a weak correlation, at best. We show a map of the United States, showing the zip codes included in the analysis characterized by their neighborhood tier and diversity of restaurants in the area. The hypotheses would indicate that the larger circles would all be one color, and the smaller circles would all be a seperate color, however looking at the ML model and map, we see that that is not necessarily the case. We see that our hypotheses have been debunked for the most part.

## 6. Recommendations for future analysis (Not yet updated)
   - We believe prediction of house price may be more accurate when including demographic data by zip code. We will be pulling New York City census data to do a small scale analysis to suggest if the above hypothesis holds true to then make that recommendation more broadly. Additionally, things like home attributes (number of bedrooms/bathrooms, home square footage, lot size, school rankings, etc.) were not included in the data sets we pulled, but could be additionally helpful in normalizing house price to better understand how home price and restaurant diversity are related.

<hr style="border:2px solid gray"> </hr>


