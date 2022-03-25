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
2. Description of the data
3. Data exploration and processing
4. Data analysis (ML modeling)
5. Results and conclusions
6. Recommendations for future analysis

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



