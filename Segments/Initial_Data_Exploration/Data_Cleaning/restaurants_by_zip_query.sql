-- Creating summary table of total restaurants and avg stars by zip
SELECT 
	postal_code,
	COUNT(postal_code) as total_restaurants,
	AVG(stars) as avg_stars,
	SUM(review_count) as total_reviews
INTO zip_summary
FROM public."Stars_Expanded_Restaurants"
	GROUP BY postal_code
	ORDER BY postal_code ASC;

-- Creating aggregate table of total number of restaurants and averages stars by zip code
SELECT 
	postal_code,
	SUM("BubbleTea") as "BubbleTea",
	SUM("Coffee&Tea") as "Coffee&Tea",
	SUM("Bakeries") as "Bakeries",
	SUM("Burgers") as "Burgers",
	SUM("FastFood") as "FastFood",
	SUM("Sandwiches") as "Sandwiches",
	SUM("IceCream&FrozenYogurt") as "IceCream&FrozenYogurt",
	SUM("Vietnamese") as "Vietnamese",
	SUM("FoodTrucks") as "FoodTrucks",
	SUM("American(Traditional)") as "American(Traditional)",
	SUM("Diners") as "Diners",
	SUM("Breakfast&Brunch") as "Breakfast&Brunch",
	SUM("SushiBars") as "SushiBars",
	SUM("Japanese") as "Japanese",
	SUM("Korean") as "Korean",
	SUM("Steakhouses") as "Steakhouses",
	SUM("AsianFusion") as "AsianFusion",
	SUM("Italian") as "Italian",
	SUM("Pizza") as "Pizza",
	SUM("ChickenWings") as "ChickenWings",
	SUM("Brewpubs") as "Brewpubs",
	SUM("Breweries") as "Breweries",
	SUM("SportsBars") as "SportsBars",
	SUM("American(New)") as "American(New)",
	SUM("Bars") as "Bars",
	SUM("Salad") as "Salad",
	SUM("BeerBar") as "BeerBar",
	SUM("Lounges") as "Lounges",
	SUM("Wraps") as "Wraps",
	SUM("Delis") as "Delis",
	SUM("Pubs") as "Pubs",
	SUM("WineBars") as "WineBars",
	SUM("Gastropubs") as "Gastropubs",
	SUM("JuiceBars&Smoothies") as "JuiceBars&Smoothies",
	SUM("Seafood") as "Seafood",
	SUM("Cajun/Creole") as "Cajun/Creole",
	SUM("Mexican") as "Mexican",
	SUM("French") as "French",
	SUM("Moroccan") as "Moroccan",
	SUM("Mediterranean") as "Mediterranean",
	SUM("Chinese") as "Chinese",
	SUM("Live/RawFood") as "Live/RawFood",
	SUM("Beer") as "Beer",
	SUM("Wine&Spirits") as "Wine&Spirits",
	SUM("Barbeque") as "Barbeque",
	SUM("Thai") as "Thai",
	SUM("Bagels") as "Bagels",
	SUM("Southern") as "Southern",
	SUM("Irish") as "Irish",
	SUM("Vegan") as "Vegan",
	SUM("CocktailBars") as "CocktailBars",
	SUM("Tapas/SmallPlates") as "Tapas/SmallPlates",
	SUM("IrishPub") as "IrishPub",
	SUM("CoffeeRoasteries") as "CoffeeRoasteries",
	SUM("Cupcakes") as "Cupcakes",
	SUM("Caribbean") as "Caribbean",
	SUM("Trinidadian") as "Trinidadian",
	SUM("Cafes") as "Cafes",
	SUM("ComfortFood") as "ComfortFood",
	SUM("Donuts") as "Donuts",
	SUM("AcaiBowls") as "AcaiBowls",
	SUM("Vegetarian") as "Vegetarian",
	SUM("Pakistani") as "Pakistani",
	SUM("Indian") as "Indian",
	SUM("Soup") as "Soup",
	SUM("Halal") as "Halal",
	SUM("StreetVendors") as "StreetVendors",
	SUM("Greek") as "Greek",
	SUM("FoodStands") as "FoodStands",
	SUM("HotDogs") as "HotDogs",
	SUM("Gluten-Free") as "Gluten-Free",
	SUM("Empanadas") as "Empanadas",
	SUM("Desserts") as "Desserts",
	SUM("WhiskeyBars") as "WhiskeyBars",
	SUM("LatinAmerican") as "LatinAmerican",
	SUM("Honduran") as "Honduran",
	SUM("Noodles") as "Noodles",
	SUM("Spanish") as "Spanish",
	SUM("Cheesesteaks") as "Cheesesteaks",
	SUM("African") as "African",
	SUM("Kebab") as "Kebab",
	SUM("Turkish") as "Turkish",
	SUM("MiddleEastern") as "MiddleEastern",
	SUM("Lebanese") as "Lebanese",
	SUM("Creperies") as "Creperies",
	SUM("Gelato") as "Gelato",
	SUM("Poke") as "Poke",
	SUM("Falafel") as "Falafel",
	SUM("Pretzels") as "Pretzels",
	SUM("Wineries") as "Wineries",
	SUM("LocalFlavor") as "LocalFlavor",
	SUM("Tex-Mex") as "Tex-Mex",
	SUM("DiveBars") as "DiveBars",
	SUM("Peruvian") as "Peruvian",
	SUM("Tacos") as "Tacos",
	SUM("BeerGardens") as "BeerGardens",
	SUM("SoulFood") as "SoulFood",
	SUM("Ramen") as "Ramen",
	SUM("Malaysian") as "Malaysian",
	SUM("Burmese") as "Burmese",
	SUM("Hawaiian") as "Hawaiian",
	SUM("EthnicFood") as "EthnicFood",
	SUM("Do-It-YourselfFood") as "Do-It-YourselfFood",
	SUM("Sicilian") as "Sicilian",
	SUM("Filipino") as "Filipino",
	SUM("ThemedCafes") as "ThemedCafes",
	SUM("Fish&Chips") as "Fish&Chips",
	SUM("Sardinian") as "Sardinian",
	SUM("Laotian") as "Laotian",
	SUM("Teppanyaki") as "Teppanyaki",
	SUM("Szechuan") as "Szechuan",
	SUM("ShavedIce") as "ShavedIce",
	SUM("Persian/Iranian") as "Persian/Iranian",
	SUM("HongKongStyleCafe") as "HongKongStyleCafe",
	SUM("Taiwanese") as "Taiwanese",
	SUM("PanAsian") as "PanAsian",
	SUM("NewMexicanCuisine") as "NewMexicanCuisine",
	SUM("Oriental") as "Oriental",
	SUM("Dominican") as "Dominican",
	SUM("InternetCafes") as "InternetCafes",
	SUM("Cuban") as "Cuban",
	SUM("PuertoRican") as "PuertoRican",
	SUM("Portuguese") as "Portuguese",
	SUM("DimSum") as "DimSum",
	SUM("TapasBars") as "TapasBars",
	SUM("Cantonese") as "Cantonese",
	SUM("Arabic") as "Arabic",
	SUM("CandyStores") as "CandyStores",
	SUM("Buffets") as "Buffets",
	SUM("Brasseries") as "Brasseries",
	SUM("Distilleries") as "Distilleries",
	SUM("Ethiopian") as "Ethiopian",
	SUM("Salvadoran") as "Salvadoran",
	SUM("Karaoke") as "Karaoke",
	SUM("Mongolian") as "Mongolian",
	SUM("British") as "British",
	SUM("German") as "German",
	SUM("Syrian") as "Syrian",
	SUM("Armenian") as "Armenian",
	SUM("Waffles") as "Waffles",
	SUM("ModernEuropean") as "ModernEuropean",
	SUM("Colombian") as "Colombian",
	SUM("Haitian") as "Haitian",
	SUM("Czech") as "Czech",
	SUM("Pop-UpRestaurants") as "Pop-UpRestaurants",
	SUM("TikiBars") as "TikiBars",
	SUM("Polish") as "Polish",
	SUM("Hainan") as "Hainan",
	SUM("TeaRooms") as "TeaRooms",
	SUM("Russian") as "Russian",
	SUM("Cafeteria") as "Cafeteria",
	SUM("Afghan") as "Afghan",
	SUM("Somali") as "Somali",
	SUM("Argentine") as "Argentine",
	SUM("Brazilian") as "Brazilian",
	SUM("PianoBars") as "PianoBars",
	SUM("Senegalese") as "Senegalese",
	SUM("Tuscan") as "Tuscan",
	SUM("Smokehouse") as "Smokehouse",
	SUM("Cambodian") as "Cambodian",
	SUM("Patisserie/CakeShop") as "Patisserie/CakeShop",
	SUM("Venezuelan") as "Venezuelan",
	SUM("Shanghainese") as "Shanghainese",
	SUM("Indonesian") as "Indonesian",
	SUM("GayBars") as "GayBars",
	SUM("Kombucha") as "Kombucha",
	SUM("Calabrian") as "Calabrian",
	SUM("Australian") as "Australian",
	SUM("Iberian") as "Iberian",
	SUM("JapaneseCurry") as "JapaneseCurry",
	SUM("Izakaya") as "Izakaya",
	SUM("Nicaraguan") as "Nicaraguan",
	SUM("HotPot") as "HotPot",
	SUM("Kosher") as "Kosher",
	SUM("Pancakes") as "Pancakes",
	SUM("Egyptian") as "Egyptian",
	SUM("SriLankan") as "SriLankan",
	SUM("Uzbek") as "Uzbek",
	SUM("Scandinavian") as "Scandinavian",
	SUM("Himalayan/Nepalese") as "Himalayan/Nepalese",
	SUM("ChampagneBars") as "ChampagneBars",
	SUM("Delicatessen") as "Delicatessen",
	SUM("Israeli") as "Israeli",
	SUM("ShavedSnow") as "ShavedSnow",
	SUM("Macarons") as "Macarons",
	SUM("Georgian") as "Georgian",
	SUM("Belgian") as "Belgian",
	SUM("Fuzhou") as "Fuzhou",
	SUM("Basque") as "Basque",
	SUM("Ukrainian") as "Ukrainian",
	SUM("Fondue") as "Fondue",
	SUM("Singaporean") as "Singaporean",
	SUM("SouthAfrican") as "SouthAfrican",
	SUM("Bangladeshi") as "Bangladeshi",
	SUM("Hungarian") as "Hungarian",
	SUM("Bistros") as "Bistros",
	SUM("Scottish") as "Scottish",
	SUM("Guamanian") as "Guamanian",
	SUM("Tonkatsu") as "Tonkatsu",
	SUM("Donburi") as "Donburi",
	SUM("Pita") as "Pita",
	SUM("Austrian") as "Austrian",
	SUM("EasternEuropean") as "EasternEuropean",
	SUM("Cucinacampana") as "Cucinacampana",
	SUM("ConveyorBeltSushi") as "ConveyorBeltSushi",
	SUM("Poutineries") as "Poutineries",
	SUM("Coffeeshops") as "Coffeeshops",
	SUM("SerboCroatian") as "SerboCroatian"
INTO zip_restaurants
	FROM public."Stars_Expanded_Restaurants"
	GROUP BY postal_code
	ORDER BY postal_code ASC;