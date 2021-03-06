# Yelp Restaurants and House Prices

### [Final Presentation - Google Slides](https://docs.google.com/presentation/d/1VL1pErovXfj_fZwtjBl6Up0cRyxJ3M3iXg7sSbsMDSQ/edit?usp=sharing)
- See slides for Project topic and reasoning
- See slides for Description of data sources
- See slides for Technologies used
- See slides for Description of preliminary data exploration and preprocessing
- See slides for Description of analysis, including:
  - Description of preliminary feature engineering and preliminary feature selection
  - Description of how data was split
  - Explanation of model choice and accuracy scores
- _Note: Please see speaker notes on slides for presentation rehearsal_


### Code
1. [Data Extraction and Cleaning](/1._Data_Extraction_and_Cleaning)
   - Housing data clean-up
   - Restaurant data clean-up
   - Merged and transformed dataset
2. [Data Exploration](/2._Data_Exploration)
3. [Machine Learning](/3._Machine_Learning)
4. [Connection to AWS Database](/4._Connection_to_AWS_Database)
   - Image of ERD (database)
5. [Resources](/Resources)
   - Contains Images folder
6. [Segments](/Segments)
   - _Note: Segments Folder contains all of the initial work, should not referenced for grading purposes._

### [Tableau Interactive Dashboard](https://public.tableau.com/app/profile/ryan.morin/viz/tableau_restaurants/RestaurantsHousePrices?publish=yes)


---

## Introduction
   We looked at the relationship between house prices and restaurants in an area. We hypothesized that areas where homes are more expensive, there may exist a larger variety of restaurants and that these restaurants may be ranked higher than restaurants in areas where homes are less expensive. 


### Technologies Used:
- Python, Pandas, and Numpy
- Scikit Learn
- Jupyter Notebooks
- Tableau
- PostgreSQL
- Amazon Relational Database Service (AWS)


## Description of the data sources
   We pulled data from Yelp, Zillow, Redfin, and SimpleMaps for our main database. This gave us data about restaurants, including the types of restaurants, their ratings, number of reviews, etc., as well as house price data. The housing data sets included zip code (postal code in datasets), which is what we used to define a neighborhood for the purposes of our analysis. SimpleMaps provided city and county information to augment the Redfin dataset so it could be merged with the Zillow dataset.
   
_Note: "zip code" and "postal code" are used interchangably in this document._

Restaurant Data:
- [Yelp Fusion API](https://fusion.yelp.com/)

Housing Data:
- [Zillow](https://www.zillow.com/research/data/)
- [Redfin](https://www.redfin.com/news/data-center/)
- [SimpleMaps](https://simplemaps.com/data/us-counties)


## [Data Extraction and Cleaning](/1._Data_Extraction_and_Cleaning)

### Housing Data
   - The Zillow dataset, downloaded as a CSV file, included housing price data from the year 2000 through 2022, by zip code. We kept only the 2021 data for our model as we were interested in the most current representative prices, as data for 2022 was still incomplete.
   - The Redfin data listed weekly median housing prices by zip code for 2021 in CSV format. We averaged the weekly prices for 2021. We also merged this dataset with city and county data from SimpleMaps to create consistent fields for the merged housing dataset.
   - Additional location data such as city, state, and county names were kept for preprocessing and visualization.

![Housing.png](/Resources/Images/Housing.png)


### Restaurant Data
   - Data from Yelp was pulled from their Fusion API and downloaded as a JSON file. We pulled for businesses tagged as "Restaurants." Due to API download limits, we pulled up to 150 businesses across 13,988 zip codes, for which we had housing price data.
   - We cleaned the Yelp dataset to extract any potentially useful restaurant characteristics for modeling. 
      - Ratings, price, and transactions columns were encoded.
      - Categories for each restaurant type were extracted. Dummies were created for each restaurant category and star ratings of each category for initial exploratory modeling. 
   - Data for restaurants was aggregated by zip code. The total number of different types of restaurants was counted per zip code to create a new feature representing diversity of restaurants.

![Yelp_API_Pull.png](/Resources/Images/Yelp_API_Pull.png)


### Merge and Preprocessing
   - We joined the final cleaned Yelp and housing datasets on the postal code column using SQL to be able to analyze the data. This showed us, by postal code (zip code), what the median house prices were and what the types of restaurants, their review counts, their ratings, etc., were.

![Merged_Data.png](/Resources/Images/Merged_Data.png)

   - Next, "neighborhood tiers" were created based on a multiplier calculated to eliminate the bias of housing prices in very different markets. House prices in every state and city are very different across the country, for example, house prices for similar size/type houses in San Jose, CA and Tucson, AZ are dramatically different. The median house price for each zip code was divided by average house price for each state. 
     * We will first calculated the mean house price group by state
     * Next, we divided each postal code's house price by the corresponding state's mean house price
     * This gave us a multiplier for each house price in the dataframe
    
   - Finally, we categorized the neighborhood indicators based on the average house price by state.
     - Tier 1: Above average house price
     - Tier 2: Below average house price


## [Connection to AWS](/4._Connection_to_AWS_Database)
All of the above preprocessed data was loaded into an AWS database. The data exploration, machine learning model, and Tableau visualization pull data directly from AWS. AWS acts as a powerful tool for storing large amounts of data that can be shared across numerous users. 

AWS included the following tables:
- Final Yelp Zipcode Summary
- Final Zipcode Category Stars Average
- Final Zipcode Categories Sum
- Neighborhood 2 Tiers by State Stars Categories
- Neighborhood Two Tier State Final

## [Data Exploration](/2._Data_Exploration)
We explored the preprocessed data from the raw Yelp and housing datasets to find patterns and trends. This data was also used for the machine learning models to predict the type of neighborhoods: above average neighborhood tier or below average neighborhood tier, defined by the state's average house price.

Other data exploration was done in Tableau: [Click here](https://public.tableau.com/app/profile/ryan.morin/viz/tableau_restaurants/RestaurantsHousePrices?publish=yes)  to see our interactive map based on neighborhood tiers and our project analysis.

1. Correlation Matrix: A correlation matrix is a table showing correlation coefficients between variables. Each cell in the table shows the correlation between two variables. A correlation matrix is used to summarize data, as an input into a more advanced analysis, and as a diagnostic for advanced analyses.

![CorrMatrix.png](/Resources/Images/CorrMatrix.png)

2. Tier 1 vs. Tier 2 Restaurant Categories: The top Tier 1 Neighborhood Restaurant categories was comapared to Tier 2 Neighborhood restaurant categories. We saw that Tier 1 Neighborhoods had significantly more cafes (includes coffeeshops), sandwiches bars(cocktail bars, sports bars etc), brunch, Italian, French, Japanese and Mediterranean restaurant categories. Whereas Tier 2 Neighborhoods had more Latin American, Mexican, Chinese, fast food(burgers, chicken wings, hot dogs, etc.) categories. Interestingly enough, pizza, which is considered fast food in the United States, was more abundant in Tier 1 Neighborhoods.

![Tiers_Rest_Types.png](/Resources/Images/Tiers_Rest_Types.png)

3. Review Counts by Yelp Stars: Tier 1 had more reviews than Tier 2, and both categories had a similar distribution, centered around 3.5-4.5 Yelp stars.

![Count_Stars.png](/Resources/Images/Count_Stars.png)

4. Word Cloud: The frequency of restaurant categories in a visual wordcloud. The resulting wordcloud shows that ???tradamerican??? was the most common word based on its size. We saw that certain two-word items are included, such as ???Wine Bars." The default for the WordCloud is to consider bigrams (tokens of two words) in the frequency counts. The effect of this parameter is to consider cases of ???Wine Bars??? as distinct from ???Bars.???

![wordCloud.png](/Resources/Images/wordCloud.png)

5. Tableau Interactive Dashboard

![Tableau.png](/Resources/Images/Tableau.png)


## [Machine Learning](/3._Machine_Learning)
We used five machine learning models to determine which gave the most accurate result.
- Logistic Regression
- Random Forest
- Adaboost
- Gradient Boost
- Naive Bayes

### Feature Engineering, Data Splitting, and Scaling
   - Neighborhood tiers was used as the target variable.   
   - Features for modeling were selected from the merged restaurant and housing data based on restaurant characteristics such as total number of reviews, ratings, categories, etc. All location variables and the 2021 housing prices were dropped.
   - We split our data using the SciKit Learn test_train_split module, which helped us avoid over- or under-fitting. 
   - Data was scaled using SciKit Learn's standard scaler.

### Feature Selection
To optimize the model we created the feature set with the following features. The rationale behind this approach was that we noticed that the random forest classifier gave these features the highest importance. We started by dropping counties that had less than 10 zipcodes.
- total_restaurants
- total_reviews
- avg_rating
- total_delivery
- total_pickup
- total_rest_reservation
- all the stars ratio:
  - ratio_stars_1.0
  - ratio_stars_1.5
  - ratio_stars_2.0
  - ratio_stars_2.5
  - ratio_stars_3.0
  - ratio_stars_3.5
  - ratio_stars_4.0
  - ratio_stars_4.5
  - ratio_stars_5.0'
- num_rest_types

### Initial Modeling
 - We used supervised machine learning classification models for our analysis as we were trying to solve a classification problem with our data, i.e. predicting an area's neighborhood tier based on the Yelp restaurant review data. Since we had a rather complex dataset, we expected ensemble classifiers to perform better than simple logistic classifiers.
 - During preliminary modeling, we included all restaurant category columns (expanded dummies for each category and category + star rating). This was over 400 columns, most of which contributed almost nothing to the output. Therefore, we reduced the restaurant features to aggregate data for total price categories, total star ratings, and number of restaurant types.
 - We chose to begin with five different models and 3 tiers, rather than 2. Table 1 below shows some sample results from our initial models.


 ### Table 1: Sample Results from initial ML Models - 3 Tiers, County Level


|Model|Accuracy Score|Weighted F1 Score|Tier 1 Precision|Tier 1 Recall|Tier 2 Precision|Tier 2 Recall|Tier 3 Precision|Tier 3 Recall|
|---|---|---|---|---|---|--|--|--|
|Logistic Regression|52.6%|0.415|0.52|0.10|0.53|0.94|0.56|0.06|
|Balanced Random Forest|42.6%|0.419|0.35|0.52|0.55|0.33|0.37|0.52|
|AdaBoost|40.8%|0.394|0.36|0.56|0.56|0.25|0.37|0.60|
|Gradient Boost|50.8%|0.470|0.42|0.25|0.54|0.77|0.41|0.21|
|Naive Bayes|30.4%|0.246|0.37|0.16|0.51|0.11|0.27|0.85|


Due to the low accuracy scores in the initial modeling, we changed the the number of neighborhood tiers to 2, and made them based on the state median house prices, rather than county. 


### Final Model Choice
Our initial feature selection had 440 features which we whittled down to 21 using feature importance from the initial Random Forest models. The most influential features driving the prediction were total reviews, total price, average restaurant rating, total restaurants delivery and pickup, and total number of restaurant categories. Initially, the highest accuracy that our machine learning models gave us was 52%. After decreasing to 21 features, we got an accuracy of 62% which we optimized using GridSearch CV to tune the models hyperparameters.

 - We modeled based on two neighborhood tiers. Tiers were determined as such:
   - Tier 1: >0.89 (above average house prices)
   - Tier 2: <=0.89 (below average house prices)

Model Comparison: The classification report shows a representation of the main classification metrics on a per-class basis. This gives a deeper intuition of the classifier behavior over global accuracy which can mask functional weaknesses in one class of a multiclass problem. 

Random Forest Model (67.47% accuracy score and 67.33% F1 score) performed the better than the other models.

![Final_AccuracyScores.png](/Resources/Images/Final_AccuracyScores.png)

Random Forest Model Evaluation:

Limitations:
- Requires more computational power and resources, due to the number of trees is creates by default into the Python sklearn library.

Benefits:
- Handles non-linear parameters very efficiently.
- Works well for classification problems.
- Reduces the risk of overfitting, while reducing variance, causing an increase in accuracy.

Metrics:
- Plot feature importance: The most influential features driving the prediction as you can see are Total Reviews, Total Price, Average Restaurant Rating, Total Restaurants Delivery and Pickup, and Total number of Restaurant categories.

![Final_Feat_Imp.png](/Resources/Images/Final_Feat_Imp.png)

- Confusion Matrix for Random Forest Classifier: A confusion matrix is a summary of prediction results on a classification problem. The number of correct and incorrect predictions are summarized with count values and broken down by each class. Approximately 67% of True Positives and True Negatives were predicted accurately by the model.

![Final_CM_RF.png](/Resources/Images/Final_CM_RF.png)

- Baseline for evaluation of Random Forest model accuracy:
  We have seen that the Random Forest Classifier was a good model for this data. But, _was our model really better than just guessing?_

![Final_TrivialClass.png](/Resources/Images/Final_TrivialClass.png)

- ROC Curve: ROC stands for curves receiver operating characteristic curve. It illustrates in a binary classifier system the discrimination threshold created by plotting the true positive rate vs false positive rate. The roc_auc_score always runs from 0 to 1, and is sorting predictive possibilities. 0.5 is the baseline for random guessing, so the goal is to always get above 0.5. The Area Under the Curve (AUC) is the measure of the ability of a classifier to distinguish between classes and is used as a summary of the ROC curve. The higher the AUC, the better the performance of the model at distinguishing between the positive and negative classes. Area under the curve for the Random Forest Model was 73%, which is a good score for the model.

![ROC.png](/Resources/Images/ROC.png)



## 5. Results and conclusions 
We can see that the Random Forest Classifier gave us the best results, with an accuracy of 67.47%% and an F1 score of 67.33%. The most influential features driving the prediction were Total Reviews, Total Price, Average Restaurant Rating, Total Restaurants Delivery and Pickup, and Total number of Restaurant categories.

_Note: We were using only a sample of the Yelp data in a neighborhood. In reality, the number of restaurant categories could be greater for a zip code._

Inspite of the limitations of the data, the model accuracy prediction was ~67%. So we cautiously concluded that diversity of restaurants in an area, the type of services they offer, and the total reviews could predict the type of neighborhood, classified on average house price in the area.



## 6. Recommendations for future analysis 
   - We believe prediction of house price may be more accurate when including demographic data by zip code. 
   - Additionally, things like home attributes (number of bedrooms/bathrooms, home square footage, lot size, school rankings, etc.) were not included in the data sets we pulled, but could be additionally helpful in normalizing house price to better understand how home price and restaurant diversity are related.
   - We should do an analysis more granularly, for example, get all the restaurants for a borough in a city, like Bronx in NYC.
   - Value of doing such an analysis: Understanding the type of neighborhood can help restaurants figure out where their restaurants will be successful. It also helps them in pricing decisions as higher priced house demographic have higher disposable income.
