-- Create Summary table - corrected data
SELECT 
	postal_code,
 	"City", 
	"State",
	"CountyName",
	"2021",
	COUNT(postal_code) as total_restaurants,
	SUM(review_count) as total_reviews,
	AVG(rating) as avg_rating,
	SUM(delivery) as total_delivery,
	SUM(pickup) as total_pickup,
	SUM(restaurant_reservation) as total_rest_reservation,
	SUM("price_value_1.0") as total_price_1,
	SUM("price_value_2.0") as total_price_2,
	SUM("price_value_3.0") as total_price_3,
	SUM("price_value_4.0") as total_price_4,
	SUM("stars_0.0") as "total_0.0_stars",
	SUM("stars_1.0") as "total_1.0_stars",
	SUM("stars_1.5") as "total_1.5_stars",
	SUM("stars_2.0") as "total_2.0_stars",
	SUM("stars_2.5") as "total_2.5_stars",
	SUM("stars_3.0") as "total_3.0_stars",
	SUM("stars_3.5") as "total_3.5_stars",
	SUM("stars_4.0") as "total_4.0_stars",
	SUM("stars_4.5") as "total_4.5_stars",
	SUM("stars_5.0") as "total_5.0_stars"
INTO corr_zip_summary
	FROM public."Correct_Stars_Cat_Expanded"
	GROUP BY postal_code, "City", "State", "CountyName", "2021"
	ORDER BY postal_code ASC;