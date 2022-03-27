# Restaurants and House Prices

## Segment 2 Submission Files:

### [Google Slides](https://docs.google.com/presentation/d/1PKg5WkO88eU_hPHp4mJDg0-3eRan4CjP15BmRV8o_pw/edit?usp=sharing)
- See slides for Description of data exploration
- See slides for Description of preliminary data preprocessing
- See slides for Description of analysis, including:
  - Description of preliminary feature engineering and preliminary feature selection
  - Description of how data was split
  - Explanation of model choice
- See slides for Blueprint of the final dashboard

### Code
- [Code for exploratory analysis](https://github.com/pgoyal94/Restaurants_and_House_Prices/tree/main/Data_Exploration)
- [Code for machine learning](https://github.com/pgoyal94/Restaurants_and_House_Prices/tree/main/Machine_Learning)

### Project Outline 
1. Introduction to project 
   - We are looking at the relationship between house prices and restaurants in the area. We believe that areas where homes are more expensive, there exist a larger variety of restaurants that are ranked higher than restaurants in areas where homes are less expensive. 
2. Description of the data
   - To test our hypotheses, we pulled data from Yelp and Zillow for our main database. This gives us data about restaurants, including the types of restaurants, their ratings, number of reviews, etc. as well as house price data. Both of these data sets included zip code, so that is what we used to define a neighborhood for the purposes of our analysis.
3. Data exploration and processing
   - In looking at the data, we realize the Yelp data set is an academic one that only appears to include a subset of the total data. The Zillow data set is more complete and covers many of the zip codes in the country. We pulled Zillow data for the year 2021 to be able to see the most recent trends.
   - We cleaned up the Yelp data set to show only businesses that are currently open and exist only in USA zip codes. Since our project is based on restaurants, we also selected only businesses that had 'restaurant' listed as a category. We defined restaurant diversity as the number of restaurant categories (ex: Coffee&Tea, Bakeries, Burgers, etc.) that exist per zip code, so we added a column to reflect that. 
   - The Zillow data set required less cleaning. We kept only the median price per zip code and then added a designation of Neighborhood Tier. Neighborhood Tiers are based on a multiplier calculated to eliminate the bias of very large and small data in housing prices. 
   - We joined the final cleaned Yelp and Zillow datasets on the postal code column using SQL to be able to analyze the data. This showed us, by postal code, what the median house prices were and what the types of restaurants, their review counts, their ratings were, etc.
4. Data analysis (ML modeling)
   - We split our data using the SciKit Learn test_train_split module, which helps us avoid over-or under-fitting. We have selected the target variable to be the neighborhood tier column. We wil be using supervised machine learning classification models for our analysis. We are trying to solve a classification problem with our data, which is trying to predict the area's neighborhood tier based on the Yelp restaurant review data. Since we have a rather complex data set, we have chosen models best suited for handling them, including ensemble classifiers. 
5. Results and conclusions
   - Based on our preliminary data of the academic Yelp data set, we see that there is a weak correlation, at best. We show a map of the United States, showing the zip codes included in the analysis characterized by their neighborhood tier and diversity of restaurants in the area. The hypotheses would indicate that the larger circles would all be one color, and the smaller circles would all be a seperate color, however looking at the ML model and map, we see that that is not necessarily the case. We see that our hypotheses have been debunked for the most part.
6. Recommendations for future analysis
   - We believe prediction of house price may be more accurate when including demographic data by zip code. We will be pulling New York City census data to do a small scale analysis to suggest if the above hypothesis holds true to then make that recommendation more broadly. Additionally, things like home attributes (number of bedrooms/bathrooms, home square footage, lot size, school rankings, etc.) were not included in the data sets we pulled, but could be additionally helpful in normalizing house price to better understand how home price and restaurant diversity are related.

<hr style="border:2px solid gray"> </hr>

## Communication Protocol:
- Communicate via Slack and Text message group chat
- Use Google Drive to store all resources (shared data sets, notes, etc.)
- Slide Deck in Google Drive is the key way to share information and notes
- The person who creates the pull request in GitHub will not be the person to approve it
- Use Zoom to meet outside of class times

## Presentation:

### Topic: 
Diversity of restaurants and how they relate to median house prices by zip code
### Reason: 
We selected this dataset because we believe that more affluent neighborhoods tend to have a more diverse set of dining options, and we would like to confirm or deny our thoughts.
### Description of our source data:
Yelp Data Set
-  Source: https://www.yelp.com/dataset/download
-  Documentation: https://www.yelp.com/dataset/documentation/main
-  Includes 5 JSONs: businesses, checkins, reviews, tips, users
-  Covers “11 Metropolitan Areas” but is missing some notable major cities such as New York City.
-  Of the top 20 cities in the US (according  to 2020 US Census), the dataset includes: Los Angeles, Houston, Chicago, San Antonio, Philadelphia, Austin, Charlotte, Columbus, Indianapolis,  Denver, Washington DC.
-  Total of 1273 unique cities and 3362 unique zip codes

Zillow Data Set
-  Source: https://www.zillow.com/research/data/
-  Documentation: https://www.zillow.com/research/data/
-  Covers data captured through January 2022
-  Total of 30,468 entries with 14894 unique cities

### Questions:
- Can Yelp reviews and diversity of types of restaurants help us determine housing prices or neighborhood price tiers? 
- Can we predict diversity (type of restaurant) of restaurants based on housing prices? (Not included in Segment 1 or 2)

<hr style="border:2px solid gray"> </hr>

## Segment 1 Submission Files:

### [Resources Folder](https://github.com/pgoyal94/Restaurants_and_House_Prices/tree/main/Resources)
- Cleaned Zillow data file
- Cleaned Yelp data file
- Merged Zillow and Yelp data file
- Cleaned up Neighborhood_Tier data file

### [Data Exploration Folder](https://github.com/pgoyal94/Restaurants_and_House_Prices/tree/main/Data_Exploration)
- Notebooks showing data clean-up and preprocessing

### [AWSConnection_ML_Prelim_Analysis.ipynb](https://github.com/pgoyal94/Restaurants_and_House_Prices/blob/main/AWSConnection_ML_Prelim_Analysis.ipynb)
- Draft machine learning (ML) model, connected to provisional database
- We are trying out multiple different models on the preliminary mock data (restaurant type generated randomly) to see which we will use in the final model.

### SQL_Database
- Connection of Neighborhood_Tier file to AWS/Postgres database (provisional database used in ML model)



