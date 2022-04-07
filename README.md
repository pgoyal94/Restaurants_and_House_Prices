# Yelp Restaurants and House Prices

### [Final Presentation - Google Slides](https://docs.google.com/presentation/d/1VL1pErovXfj_fZwtjBl6Up0cRyxJ3M3iXg7sSbsMDSQ/edit?usp=sharing)
- See slides for Project topic and reasoning
- See slides for Description of data sources
- See slides for Description of preliminary data exploration and preprocessing
- See slides for Description of analysis, including:
  - Description of preliminary feature engineering and preliminary feature selection
  - Description of how data was split
  - Explanation of model choice
  - Current accuracy scores
- See slides for description of technologies used.
- _Note: Please see speaker notes on slides for presentation rehearsal_


### Code
1. [Data Extraction and Cleaning]()
   - Housing data clean-up
   - Restaurant data clean-up
   - Merged and transformed dataset
2. [Data Exploration]()
3. [Machine Learning]()
4. [Connection to AWS]()
5. [Resources]()
   - Contains Images folder
6. [Segments]()
   - _Note: Segments Folder contains all of the initial work, should not referenced for grading purposes._

[Tableau Interactive Dashboard](https://public.tableau.com/app/profile/ryan.morin/viz/tableau_restaurants/RestaurantsHousePrices?publish=yes)


---

## Introduction
   We are looking at the relationship between house prices and restaurants in the area. We believe that areas where homes are more expensive, there may exist a larger variety of restaurants and that these restaurants may be ranked higher than restaurants in areas where homes are less expensive. 

### Technologies Used:
- Python, Pandas, and Numpy
- Scikit Learn
- Jupyter Notebooks
- Tableau
- PostgreSQL
- Amazon RDS (AWS)


## Description of the data sources
   We pulled data from Yelp, Zillow, Redfin, and SimpleMaps for our main database. This gives us data about restaurants, including the types of restaurants, their ratings, number of reviews, etc. as well as house price data. The housing data sets included zip code (postal code in datasets), so that is what we used to define a neighborhood for the purposes of our analysis. SimpleMaps provided city and county information for the Redfin dataset.
   
_Note: "zip code" and "postal code" are used interchangably in this document._

Restaurant Data:
- Yelp Fusion API: https://fusion.yelp.com/ 

Housing Data:
- Zillow: https://www.zillow.com/research/data/
- Redfin:  https://www.redfin.com/news/data-center/
- SimpleMaps: https://simplemaps.com/data/us-counties


## [Data Extraction and Cleaning]()

### Housing Data
   - The Zillow data set, downloaded as a csv file, included housing price data from 2000 through 2022 by zip code. We kept only the 2021 data for our model as we were interested in the most current representative prices and data for 2022 is incomplete.
   - The Redfin data listed weekly median housing prices by zip code for 2021 in csv format. We averaged the weekly prices for 2021. We also merged this dataset with city and county data from SimpleMaps to create consistent fields for the merged housing dataset.
   - Additional location data such as city, state, and county names were kept for preprocessing and visualization.

![image](https://user-images.githubusercontent.com/92613639/162107696-6b2c6454-7f4b-4712-8a6e-a1f7a7699f60.png)


### Restaurant Data
   - Data from Yelp was pulled from their Fusion API and downloaded as JSON. We pulled for businesses tagged as "Restaurants." Due to API download limits, we pulled up to 150 businesses across 13,988 zip codes for which we have housing price data.
   - We cleaned the Yelp data set to extract any potentially useful restaurant characteristics for modeling. Additionally, location data such as city and state information was extracted for data preprocessing and visualization.
   - Categories for each restaurant type were extracted. Dummies were created for each restaurant category and star ratings of each category for initial exploratory modeling. 
   - Data for restaurants were aggregated by zip code. The total number of different types of restaurants were counted per zip code.

![image](https://user-images.githubusercontent.com/92613639/162107982-f8921103-8a85-4aad-aa4a-4cc096fee84a.png)


### Merge and Preprocessing
   - We joined the final cleaned Yelp and housing datasets on the postal code column using SQL to be able to analyze the data. This showed us, by postal code (zip code), what the median house prices were and what the types of restaurants, their review counts, their ratings were, etc.

![image](https://user-images.githubusercontent.com/92613639/162108096-3b5d6cd4-18c9-4cc8-b1da-e82660751621.png)

   - Next, "neighborhood tiers" were created based on a multiplier calculated to eliminate the bias of housing prices in very different markets. House prices in every state and city are very different accross the country, for example, house prices for similar size/type houses in San Jose, CA and Tucson, AZ are dramatically different. The median house price for each zip code was divided by average median price for each state. 
     * We will first calculate the mean house price group by State
     * Next we will divide each postal_code's house price by the corresponding State's mean house price
     * This gives us a multiplier for each house price in the dataframe.
    
   - Finally, we will determine the median quantiles and max of the neighborhood indicators to categorize the neighborhood indicators based on the bins.
     - Tier 1: Above average house price
     - Tier 2: Below average house price


## [Connection to AWS]()
All of the above preprocessed data was loaded into an AWS database. The Data Exploration, Machine Learning model, and Tableau Visualization pull data directly from AWS. AWS acts as a powerful tool for storing large amounts of data that can be shared across numerous users. 

## [Data Exploration]()
We explored the preprocessed data from the raw Yelp and Housing datasets to find patterns and trends. This data was also used for the Machine Learning Models to predict the type of neighborhoods: above average neighborhood tier or below average neighborhood tier, defined by the state's median house price.

Other data exploration was done on Tableau: [Click here](https://public.tableau.com/app/profile/ryan.morin/viz/tableau_restaurants/RestaurantsHousePrices?publish=yes) see our interactive map based on neighborhood tiers and our project analysis.

1. Correlation Matrix: A correlation matrix is a table showing correlation coefficients between variables. Each cell in the table shows the correlation between two variables. A correlation matrix is used to summarize data, as an input into a more advanced analysis, and as a diagnostic for advanced analyses.

![image](https://user-images.githubusercontent.com/92613639/162111236-8e954a23-1c03-48d3-a805-d1f74acfa656.png)

2. Tier 1 vs. Tier 2 Restaurant Categories: The top Tier1 Neighborhood Restaurant categories is comapared to Tier2 Neighborhood. We can see that Tier1 Neighborhoods have significantly more Cafes (includes coffeeshops), Sandwiches Bars(cocktail bars, sports bars etc), Brunch, Italian, French, Japanese and Mediterranean restaurant categories. Whereas Tier2 Neighborhoods have more Latin American, Mexican, Chinese Fastfood(burgers, chickenwings, hotdogs etc). Interestingly Pizza which is considered fast food in United States is in larger numbers in Tier1 Neighborhoods.

![image](https://user-images.githubusercontent.com/92613639/162111304-cdf0411e-b72d-490b-b916-0aef3d96cde2.png)

3. Review Counts by Yelp Stars: Tier1 has more reviews than Tier2 and for both categories having a similar distribution centered around 3.5-4.5 Yelp stars.

![image](https://user-images.githubusercontent.com/92613639/162111203-3c025ef0-b9f3-48e9-83b0-62638be15ec7.png)

4. Word Cloud: The frequency of restaurant categories in a visual wordcloud. The resulting wordcloud shows that “tradamerican” is the most common word based on its size. However, “Burgers” is not the first most frequent word as was previously shown from the word count. We can see that certain two-word items are included, such as “Wine Bars." The default for the WordCloud is to consider bigrams (tokens of two words) in the frequency counts. The effect of this parameter is to consider cases of “Wine Bars” as distinct from “Bars.”

![image](/Final/Resources_final/wordCloud.png)

5. Tableau Interactive Dashboard

![image](https://user-images.githubusercontent.com/92613639/162112129-56b8b556-e7ed-47ed-97cd-c2a30efafd8c.png)


## [Machine Learning]()

### Feature Engineering and Data Splitting
   - Neighborhood tiers was used as the target variable.   
   - Features for modeling were selected from the merged restaurant and housing data based on restaurant characteristics such as total number of reviews, ratings, categories, etc. All location variables and the 2021 housing prices were dropped.
   - We split our data using the SciKit Learn test_train_split module, which helps us avoid over- or under-fitting. 
   - Data was scaled using SciKit Learn's standard scaler.

### Initial Modeling
 - We used supervised machine learning classification models for our analysis as we are trying to solve a classification problem with our data, i.e. predicting an area's neighborhood tier based on the Yelp restaurant review data. Since we have a rather complex data set, we expected ensemble classifiers to perform better than simple logistic classifiers.
 - During preliminary modeling, we including all restaurant category columns (expanded dummies for each category and category + star rating). This was over 400 columns, most of which contributed almost 0 to the output. Therefore, we reduced the restaurant features to aggregate data for total price categories, total star ratings, and number of restaurant types (See slide deck for details).
 - We played around with 5 different models, previously using 3 tiers rather than 2, Table 1 below shows some sample results from our initial models.


 **Table 1: Sample Results from initial ML Models - 3 Tiers, County Level


|Model|Accuracy Score|Weighted F1 Score|Tier 1 Precision|Tier 1 Recall|Tier 2 Precision|Tier 2 Recall|Tier 3 Precision|Tier 3 Recall|
|---|---|---|---|---|---|--|--|--|
|Logistic Regression|52.6%|0.415|0.52|0.10|0.53|0.94|0.56|0.06|
|Balanced Random Forest|42.6%|0.419|0.35|0.52|0.55|0.33|0.37|0.52|
|AdaBoost|40.8%|0.394|0.36|0.56|0.56|0.25|0.37|0.60|
|Gradient Boost|50.8%|0.470|0.42|0.25|0.54|0.77|0.41|0.21|
|Naive Bayes|30.4%|0.246|0.37|0.16|0.51|0.11|0.27|0.85|


Due to the low accuracy scores in the initial modeling, we changed the the number of neighborhood tiers to 2, and made them based on the state median house prices rather than county. 


### Final Model Choice
Our initial feature selection had 440 features which we whittled it down to 21 features using feature importance from the initial Random Forest models. The most influential features driving the prediction as you can see are Total Reviews, Total Price, Average Restaurant Rating, Total Restaurants Delivery and Pickup, and Total number of Restaurant categories follow. The highest accuracy that our machine learning models gave us initially was 52%. After dropping to 21 features, we got an accuracy of 62 % which we optimized using GridSearch CV to tune the models hyperparameters.

 - We modeled based on two neighborhood tiers. Tiers were determined as such:
   - Tier 1: >0.89 (above average house prices)
   - Tier 2: <=0.89 (below average house prices)

Model Comparison: Random Forest Model with 67.47% accuracy score and 67.33% F1 score perfoms the better than the other models.

![image](https://user-images.githubusercontent.com/92613639/162113723-681dbe1a-2864-4136-a1ab-639c4cf402ce.png)

Random Forest Model Evaluation:
- Plot feature importance: The most influential features driving the prediction as you can see are Total Reviews, Total Price, Average Restaurant Rating, Total Restaurants Delivery and Pickup, and Total number of Restaurant categories follow.
![image](https://user-images.githubusercontent.com/92613639/162113939-0b5db904-bd6c-4f0c-ab23-838c6be9d4a9.png)

- Confusion Matrix for Random Forest Classifier: Approximately 67% of True Positives and True Negatives are predicted accurately by the model.
![image](https://user-images.githubusercontent.com/92613639/162113977-1cd161b2-c451-4715-81d4-e574b2f1c4ca.png)

- Baseline: for evaluation of Random Forest model accuracy
  We've seen that the Random Forest Classifier is a good model for this data. But, is our model really better than just guessing?

![image](https://user-images.githubusercontent.com/92613639/162114097-c7ff5164-2af2-4941-a312-38e5ac878b6f.png)

- ROC Curve: ROC stands for curves receiver operating characteristic curve. It illustrates in a binary classifier system the discrimination threshold created by plotting the true positive rate vs false positive rate. The roc_auc_score always runs from 0 to 1, and is sorting predictive possibilities. 0.5 is the baseline for random guessing, so you want to always get above 0.5. The Area Under the Curve (AUC) is the measure of the ability of a classifier to distinguish between classes and is used as a summary of the ROC curve. The higher the AUC, the better the performance of the model at distinguishing between the positive and negative classes. Area under the curve for the Random Forest Model is 73% which is a good score for the model.

![image](https://user-images.githubusercontent.com/92613639/162114184-402b6b5c-2691-4e6c-9d1a-675fefbe6ebc.png)


## 5. Results and conclusions 
We can see that the Random Forest Classifier gives the best results with an accuracy of 67.47%% and an F1 score of 67.33%. And the most influential features driving the prediction are Total Reviews, Total Price, Average Restaurant Rating, Total Restaurants Delivery and Pickup, and Total number of Restaurant categories follow.

_Note: We are using only a sample of the Yelp data in a neighborhood. In reality, the number of restaurant categories is/can be more for a zipcode._

Inspite of the limitations of the data, the model accuracy prediction is ~67%. So we cautiously conclude that diversity of restaurants in an area, the type of services they offer and the total reviews can predict the type of neighborhood, classified on median houseprice in the area.


## 6. Recommendations for future analysis 
   - We believe prediction of house price may be more accurate when including demographic data by zip code. 
   - Additionally, things like home attributes (number of bedrooms/bathrooms, home square footage, lot size, school rankings, etc.) were not included in the data sets we pulled, but could be additionally helpful in normalizing house price to better understand how home price and restaurant diversity are related.
   - We should do an analysis more granuraliy, for example, get all the restaurnts for a borough in a city, like Bronx in NYC.
   - Value of doing such an analysis: Understanding the type of neighborhood can help restaurants figure out where their restaurants will be successful. It also helps them in pricing decisions as higher priced house demographic have higher disposable income.
