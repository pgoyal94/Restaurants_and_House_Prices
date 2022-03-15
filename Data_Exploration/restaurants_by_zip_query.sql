SELECT 
	postal_code,
	COUNT(postal_code) as total_restaurants,
	AVG(stars) as avg_stars,
	SUM(review_count) as total_reviews,
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
	SUM("SerboCroatian") as "SerboCroatian",
	SUM("BubbleTea_stars") as "BubbleTea_stars",
	SUM("Coffee&Tea_stars") as "Coffee&Tea_stars",
	SUM("Bakeries_stars") as "Bakeries_stars",
	SUM("Burgers_stars") as "Burgers_stars",
	SUM("FastFood_stars") as "FastFood_stars",
	SUM("Sandwiches_stars") as "Sandwiches_stars",
	SUM("IceCream&FrozenYogurt_stars") as "IceCream&FrozenYogurt_stars",
	SUM("Vietnamese_stars") as "Vietnamese_stars",
	SUM("FoodTrucks_stars") as "FoodTrucks_stars",
	SUM("American(Traditional)_stars") as "American(Traditional)_stars",
	SUM("Diners_stars") as "Diners_stars",
	SUM("Breakfast&Brunch_stars") as "Breakfast&Brunch_stars",
	SUM("SushiBars_stars") as "SushiBars_stars",
	SUM("Japanese_stars") as "Japanese_stars",
	SUM("Korean_stars") as "Korean_stars",
	SUM("Steakhouses_stars") as "Steakhouses_stars",
	SUM("AsianFusion_stars") as "AsianFusion_stars",
	SUM("Italian_stars") as "Italian_stars",
	SUM("Pizza_stars") as "Pizza_stars",
	SUM("ChickenWings_stars") as "ChickenWings_stars",
	SUM("Brewpubs_stars") as "Brewpubs_stars",
	SUM("Breweries_stars") as "Breweries_stars",
	SUM("SportsBars_stars") as "SportsBars_stars",
	SUM("American(New)_stars") as "American(New)_stars",
	SUM("Bars_stars") as "Bars_stars",
	SUM("Salad_stars") as "Salad_stars",
	SUM("BeerBar_stars") as "BeerBar_stars",
	SUM("Lounges_stars") as "Lounges_stars",
	SUM("Wraps_stars") as "Wraps_stars",
	SUM("Delis_stars") as "Delis_stars",
	SUM("Pubs_stars") as "Pubs_stars",
	SUM("WineBars_stars") as "WineBars_stars",
	SUM("Gastropubs_stars") as "Gastropubs_stars",
	SUM("JuiceBars&Smoothies_stars") as "JuiceBars&Smoothies_stars",
	SUM("Seafood_stars") as "Seafood_stars",
	SUM("Cajun/Creole_stars") as "Cajun/Creole_stars",
	SUM("Mexican_stars") as "Mexican_stars",
	SUM("French_stars") as "French_stars",
	SUM("Moroccan_stars") as "Moroccan_stars",
	SUM("Mediterranean_stars") as "Mediterranean_stars",
	SUM("Chinese_stars") as "Chinese_stars",
	SUM("Live/RawFood_stars") as "Live/RawFood_stars",
	SUM("Beer_stars") as "Beer_stars",
	SUM("Wine&Spirits_stars") as "Wine&Spirits_stars",
	SUM("Barbeque_stars") as "Barbeque_stars",
	SUM("Thai_stars") as "Thai_stars",
	SUM("Bagels_stars") as "Bagels_stars",
	SUM("Southern_stars") as "Southern_stars",
	SUM("Irish_stars") as "Irish_stars",
	SUM("Vegan_stars") as "Vegan_stars",
	SUM("CocktailBars_stars") as "CocktailBars_stars",
	SUM("Tapas/SmallPlates_stars") as "Tapas/SmallPlates_stars",
	SUM("IrishPub_stars") as "IrishPub_stars",
	SUM("CoffeeRoasteries_stars") as "CoffeeRoasteries_stars",
	SUM("Cupcakes_stars") as "Cupcakes_stars",
	SUM("Caribbean_stars") as "Caribbean_stars",
	SUM("Trinidadian_stars") as "Trinidadian_stars",
	SUM("Cafes_stars") as "Cafes_stars",
	SUM("ComfortFood_stars") as "ComfortFood_stars",
	SUM("Donuts_stars") as "Donuts_stars",
	SUM("AcaiBowls_stars") as "AcaiBowls_stars",
	SUM("Vegetarian_stars") as "Vegetarian_stars",
	SUM("Pakistani_stars") as "Pakistani_stars",
	SUM("Indian_stars") as "Indian_stars",
	SUM("Soup_stars") as "Soup_stars",
	SUM("Halal_stars") as "Halal_stars",
	SUM("StreetVendors_stars") as "StreetVendors_stars",
	SUM("Greek_stars") as "Greek_stars",
	SUM("FoodStands_stars") as "FoodStands_stars",
	SUM("HotDogs_stars") as "HotDogs_stars",
	SUM("Gluten-Free_stars") as "Gluten-Free_stars",
	SUM("Empanadas_stars") as "Empanadas_stars",
	SUM("Desserts_stars") as "Desserts_stars",
	SUM("WhiskeyBars_stars") as "WhiskeyBars_stars",
	SUM("LatinAmerican_stars") as "LatinAmerican_stars",
	SUM("Honduran_stars") as "Honduran_stars",
	SUM("Noodles_stars") as "Noodles_stars",
	SUM("Spanish_stars") as "Spanish_stars",
	SUM("Cheesesteaks_stars") as "Cheesesteaks_stars",
	SUM("African_stars") as "African_stars",
	SUM("Kebab_stars") as "Kebab_stars",
	SUM("Turkish_stars") as "Turkish_stars",
	SUM("MiddleEastern_stars") as "MiddleEastern_stars",
	SUM("Lebanese_stars") as "Lebanese_stars",
	SUM("Creperies_stars") as "Creperies_stars",
	SUM("Gelato_stars") as "Gelato_stars",
	SUM("Poke_stars") as "Poke_stars",
	SUM("Falafel_stars") as "Falafel_stars",
	SUM("Pretzels_stars") as "Pretzels_stars",
	SUM("Wineries_stars") as "Wineries_stars",
	SUM("LocalFlavor_stars") as "LocalFlavor_stars",
	SUM("Tex-Mex_stars") as "Tex-Mex_stars",
	SUM("DiveBars_stars") as "DiveBars_stars",
	SUM("Peruvian_stars") as "Peruvian_stars",
	SUM("Tacos_stars") as "Tacos_stars",
	SUM("BeerGardens_stars") as "BeerGardens_stars",
	SUM("SoulFood_stars") as "SoulFood_stars",
	SUM("Ramen_stars") as "Ramen_stars",
	SUM("Malaysian_stars") as "Malaysian_stars",
	SUM("Burmese_stars") as "Burmese_stars",
	SUM("Hawaiian_stars") as "Hawaiian_stars",
	SUM("EthnicFood_stars") as "EthnicFood_stars",
	SUM("Do-It-YourselfFood_stars") as "Do-It-YourselfFood_stars",
	SUM("Sicilian_stars") as "Sicilian_stars",
	SUM("Filipino_stars") as "Filipino_stars",
	SUM("ThemedCafes_stars") as "ThemedCafes_stars",
	SUM("Fish&Chips_stars") as "Fish&Chips_stars",
	SUM("Sardinian_stars") as "Sardinian_stars",
	SUM("Laotian_stars") as "Laotian_stars",
	SUM("Teppanyaki_stars") as "Teppanyaki_stars",
	SUM("Szechuan_stars") as "Szechuan_stars",
	SUM("ShavedIce_stars") as "ShavedIce_stars",
	SUM("Persian/Iranian_stars") as "Persian/Iranian_stars",
	SUM("HongKongStyleCafe_stars") as "HongKongStyleCafe_stars",
	SUM("Taiwanese_stars") as "Taiwanese_stars",
	SUM("PanAsian_stars") as "PanAsian_stars",
	SUM("NewMexicanCuisine_stars") as "NewMexicanCuisine_stars",
	SUM("Oriental_stars") as "Oriental_stars",
	SUM("Dominican_stars") as "Dominican_stars",
	SUM("InternetCafes_stars") as "InternetCafes_stars",
	SUM("Cuban_stars") as "Cuban_stars",
	SUM("PuertoRican_stars") as "PuertoRican_stars",
	SUM("Portuguese_stars") as "Portuguese_stars",
	SUM("DimSum_stars") as "DimSum_stars",
	SUM("TapasBars_stars") as "TapasBars_stars",
	SUM("Cantonese_stars") as "Cantonese_stars",
	SUM("Arabic_stars") as "Arabic_stars",
	SUM("CandyStores_stars") as "CandyStores_stars",
	SUM("Buffets_stars") as "Buffets_stars",
	SUM("Brasseries_stars") as "Brasseries_stars",
	SUM("Distilleries_stars") as "Distilleries_stars",
	SUM("Ethiopian_stars") as "Ethiopian_stars",
	SUM("Salvadoran_stars") as "Salvadoran_stars",
	SUM("Karaoke_stars") as "Karaoke_stars",
	SUM("Mongolian_stars") as "Mongolian_stars",
	SUM("British_stars") as "British_stars",
	SUM("German_stars") as "German_stars",
	SUM("Syrian_stars") as "Syrian_stars",
	SUM("Armenian_stars") as "Armenian_stars",
	SUM("Waffles_stars") as "Waffles_stars",
	SUM("ModernEuropean_stars") as "ModernEuropean_stars",
	SUM("Colombian_stars") as "Colombian_stars",
	SUM("Haitian_stars") as "Haitian_stars",
	SUM("Czech_stars") as "Czech_stars",
	SUM("Pop-UpRestaurants_stars") as "Pop-UpRestaurants_stars",
	SUM("TikiBars_stars") as "TikiBars_stars",
	SUM("Polish_stars") as "Polish_stars",
	SUM("Hainan_stars") as "Hainan_stars",
	SUM("TeaRooms_stars") as "TeaRooms_stars",
	SUM("Russian_stars") as "Russian_stars",
	SUM("Cafeteria_stars") as "Cafeteria_stars",
	SUM("Afghan_stars") as "Afghan_stars",
	SUM("Somali_stars") as "Somali_stars",
	SUM("Argentine_stars") as "Argentine_stars",
	SUM("Brazilian_stars") as "Brazilian_stars",
	SUM("PianoBars_stars") as "PianoBars_stars",
	SUM("Senegalese_stars") as "Senegalese_stars",
	SUM("Tuscan_stars") as "Tuscan_stars",
	SUM("Smokehouse_stars") as "Smokehouse_stars",
	SUM("Cambodian_stars") as "Cambodian_stars",
	SUM("Patisserie/CakeShop_stars") as "Patisserie/CakeShop_stars",
	SUM("Venezuelan_stars") as "Venezuelan_stars",
	SUM("Shanghainese_stars") as "Shanghainese_stars",
	SUM("Indonesian_stars") as "Indonesian_stars",
	SUM("GayBars_stars") as "GayBars_stars",
	SUM("Kombucha_stars") as "Kombucha_stars",
	SUM("Calabrian_stars") as "Calabrian_stars",
	SUM("Australian_stars") as "Australian_stars",
	SUM("Iberian_stars") as "Iberian_stars",
	SUM("JapaneseCurry_stars") as "JapaneseCurry_stars",
	SUM("Izakaya_stars") as "Izakaya_stars",
	SUM("Nicaraguan_stars") as "Nicaraguan_stars",
	SUM("HotPot_stars") as "HotPot_stars",
	SUM("Kosher_stars") as "Kosher_stars",
	SUM("Pancakes_stars") as "Pancakes_stars",
	SUM("Egyptian_stars") as "Egyptian_stars",
	SUM("SriLankan_stars") as "SriLankan_stars",
	SUM("Uzbek_stars") as "Uzbek_stars",
	SUM("Scandinavian_stars") as "Scandinavian_stars",
	SUM("Himalayan/Nepalese_stars") as "Himalayan/Nepalese_stars",
	SUM("ChampagneBars_stars") as "ChampagneBars_stars",
	SUM("Delicatessen_stars") as "Delicatessen_stars",
	SUM("Israeli_stars") as "Israeli_stars",
	SUM("ShavedSnow_stars") as "ShavedSnow_stars",
	SUM("Macarons_stars") as "Macarons_stars",
	SUM("Georgian_stars") as "Georgian_stars",
	SUM("Belgian_stars") as "Belgian_stars",
	SUM("Fuzhou_stars") as "Fuzhou_stars",
	SUM("Basque_stars") as "Basque_stars",
	SUM("Ukrainian_stars") as "Ukrainian_stars",
	SUM("Fondue_stars") as "Fondue_stars",
	SUM("Singaporean_stars") as "Singaporean_stars",
	SUM("SouthAfrican_stars") as "SouthAfrican_stars",
	SUM("Bangladeshi_stars") as "Bangladeshi_stars",
	SUM("Hungarian_stars") as "Hungarian_stars",
	SUM("Bistros_stars") as "Bistros_stars",
	SUM("Scottish_stars") as "Scottish_stars",
	SUM("Guamanian_stars") as "Guamanian_stars",
	SUM("Tonkatsu_stars") as "Tonkatsu_stars",
	SUM("Donburi_stars") as "Donburi_stars",
	SUM("Pita_stars") as "Pita_stars",
	SUM("Austrian_stars") as "Austrian_stars",
	SUM("EasternEuropean_stars") as "EasternEuropean_stars",
	SUM("Cucinacampana_stars") as "Cucinacampana_stars",
	SUM("ConveyorBeltSushi_stars") as "ConveyorBeltSushi_stars",
	SUM("Poutineries_stars") as "Poutineries_stars",
	SUM("Coffeeshops_stars") as "Coffeeshops_stars",
	SUM("SerboCroatian_stars") as "SerboCroatian_stars"
	FROM public."Stars_Expanded_Restaurants"
	GROUP BY postal_code
	ORDER BY postal_code ASC;