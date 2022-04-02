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
- [Tableau Dashboard](https://public.tableau.com/app/profile/ryan.morin/viz/tableau_restaurants/RestaurantsHousePrices?publish=yes)

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
   - Categories for each restaurant type were extracted. Dummies were created for each restaurant category and star ratings of each category for initial exploratory modeling. 
   - Data for restaurants were aggregated by zip code. The total number of different types of restaurants were counted per zip code.

### Housing Data
   - The Zillow data set, downloaded as a csv file, included housing price data from 2000 through 2022 by zip code. We kept only the 2021 data for our model as we were interested in the most current representative prices and data for 2022 is incomplete.
   - The Redfin data listed weekly median housing prices by zip code for 2021 in csv format. We averaged the weekly prices for 2021. 
   - Additional location data such as city, state, and county names were kept for preprocessing and visualization.

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


 **Table 1: Sample Results from initial ML Models - [3 Tiers, County Level](https://github.com/pgoyal94/Restaurants_and_House_Prices/blob/main/Final/ML_Final/ML_Model_Trials/ML_optimization_county_3_tier%20.ipynb)**


|Model|Accuracy Score|Weighted F1 Score|Tier 1 Precision|Tier 1 Recall|Tier 2 Precision|Tier 2 Recall|Tier 3 Precision|Tier 3 Recall|
|---|---|---|---|---|---|--|--|--|
|Logistic Regression|52.6%|0.415|0.52|0.10|0.53|0.94|0.56|0.06|
|Balanced Random Forest|42.6%|0.419|0.35|0.52|0.55|0.33|0.37|0.52|
|AdaBoost|40.8%|0.394|0.36|0.56|0.56|0.25|0.37|0.60|
|Gradient Boost|50.8%|0.470|0.42|0.25|0.54|0.77|0.41|0.21|
|Naive Bayes|30.4%|0.246|0.37|0.16|0.51|0.11|0.27|0.85|




### Model Choice

We currently believe that Logistic Regression will be our final model as it consistently yielded some of our best results, although still needing improvement, regardless of the number of features. Given the low accuracy score, we narrowed our features set to the top 13 features that contributed to the outputs during initial modeling. 

Logistic Regression:
   - Pro: Less prone to fitting, assuming low dimension dataset. 
   - Con: It assumes some linear relationship between the dependent and independent variables. For our dataset, we cannot be sure that this assumption is correct due to the large number of features.
   - It's computationally efficient in that it does not require large amounts of memory or resources. It scales to large datasets well as it processes quickly and efficiently.
   - Can be used as a benchmark model.

---

## 5. Results and conclusions 
   - Based on our preliminary data of the academic Yelp data set, we see that there is a weak correlation, at best. We show a map of the United States, showing the zip codes included in the analysis characterized by their neighborhood tier and diversity of restaurants in the area. The hypotheses would indicate that the larger circles would all be one color, and the smaller circles would all be a seperate color, however looking at the ML model and map, we see that that is not necessarily the case. We see that our hypotheses have been debunked for the most part.

Sample Tableau Visualization - Tiers and Restaurant Diversity by Zip Code:

![image](https://user-images.githubusercontent.com/92613639/161402016-3d3a5bcd-d48d-4f63-b395-cacafcbdd1cd.png)


## 6. Recommendations for future analysis 
   - We believe prediction of house price may be more accurate when including demographic data by zip code. We will be pulling New York City census data to do a small scale analysis to suggest if the above hypothesis holds true to then make that recommendation more broadly. Additionally, things like home attributes (number of bedrooms/bathrooms, home square footage, lot size, school rankings, etc.) were not included in the data sets we pulled, but could be additionally helpful in normalizing house price to better understand how home price and restaurant diversity are related.
   - Given the low accuracy scores in our initial models during segment 2 of the project, we plan to change our target variable to two tiers only (Tier 1 = above county average, Tier 2 = below county average). 
