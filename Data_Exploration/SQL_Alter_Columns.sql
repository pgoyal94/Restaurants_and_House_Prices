-- Change datatype from text to bigint for sum function
ALTER TABLE public."Stars_Expanded_Restaurants"
ALTER COLUMN "BubbleTea" TYPE bigint USING ("BubbleTea"::bigint),
ALTER COLUMN "Coffee&Tea" TYPE bigint USING ("Coffee&Tea"::bigint),
ALTER COLUMN "Bakeries" TYPE bigint USING ("Bakeries"::bigint),
ALTER COLUMN "Burgers" TYPE bigint USING ("Burgers"::bigint),
ALTER COLUMN "FastFood" TYPE bigint USING ("FastFood"::bigint),
ALTER COLUMN "Sandwiches" TYPE bigint USING ("Sandwiches"::bigint),
ALTER COLUMN "IceCream&FrozenYogurt" TYPE bigint USING ("IceCream&FrozenYogurt"::bigint),
ALTER COLUMN "Vietnamese" TYPE bigint USING ("Vietnamese"::bigint),
ALTER COLUMN "FoodTrucks" TYPE bigint USING ("FoodTrucks"::bigint),
ALTER COLUMN "American(Traditional)" TYPE bigint USING ("American(Traditional)"::bigint),
ALTER COLUMN "Diners" TYPE bigint USING ("Diners"::bigint),
ALTER COLUMN "Breakfast&Brunch" TYPE bigint USING ("Breakfast&Brunch"::bigint),
ALTER COLUMN "SushiBars" TYPE bigint USING ("SushiBars"::bigint),
ALTER COLUMN "Japanese" TYPE bigint USING ("Japanese"::bigint),
ALTER COLUMN "Korean" TYPE bigint USING ("Korean"::bigint),
ALTER COLUMN "Steakhouses" TYPE bigint USING ("Steakhouses"::bigint),
ALTER COLUMN "AsianFusion" TYPE bigint USING ("AsianFusion"::bigint),
ALTER COLUMN "Italian" TYPE bigint USING ("Italian"::bigint),
ALTER COLUMN "Pizza" TYPE bigint USING ("Pizza"::bigint),
ALTER COLUMN "ChickenWings" TYPE bigint USING ("ChickenWings"::bigint),
ALTER COLUMN "Brewpubs" TYPE bigint USING ("Brewpubs"::bigint),
ALTER COLUMN "Breweries" TYPE bigint USING ("Breweries"::bigint),
ALTER COLUMN "SportsBars" TYPE bigint USING ("SportsBars"::bigint),
ALTER COLUMN "American(New)" TYPE bigint USING ("American(New)"::bigint),
ALTER COLUMN "Bars" TYPE bigint USING ("Bars"::bigint),
ALTER COLUMN "Salad" TYPE bigint USING ("Salad"::bigint),
ALTER COLUMN "BeerBar" TYPE bigint USING ("BeerBar"::bigint),
ALTER COLUMN "Lounges" TYPE bigint USING ("Lounges"::bigint),
ALTER COLUMN "Wraps" TYPE bigint USING ("Wraps"::bigint),
ALTER COLUMN "Delis" TYPE bigint USING ("Delis"::bigint),
ALTER COLUMN "Pubs" TYPE bigint USING ("Pubs"::bigint),
ALTER COLUMN "WineBars" TYPE bigint USING ("WineBars"::bigint),
ALTER COLUMN "Gastropubs" TYPE bigint USING ("Gastropubs"::bigint),
ALTER COLUMN "JuiceBars&Smoothies" TYPE bigint USING ("JuiceBars&Smoothies"::bigint),
ALTER COLUMN "Seafood" TYPE bigint USING ("Seafood"::bigint),
ALTER COLUMN "Cajun/Creole" TYPE bigint USING ("Cajun/Creole"::bigint),
ALTER COLUMN "Mexican" TYPE bigint USING ("Mexican"::bigint),
ALTER COLUMN "French" TYPE bigint USING ("French"::bigint),
ALTER COLUMN "Moroccan" TYPE bigint USING ("Moroccan"::bigint),
ALTER COLUMN "Mediterranean" TYPE bigint USING ("Mediterranean"::bigint),
ALTER COLUMN "Chinese" TYPE bigint USING ("Chinese"::bigint),
ALTER COLUMN "Live/RawFood" TYPE bigint USING ("Live/RawFood"::bigint),
ALTER COLUMN "Beer" TYPE bigint USING ("Beer"::bigint),
ALTER COLUMN "Wine&Spirits" TYPE bigint USING ("Wine&Spirits"::bigint),
ALTER COLUMN "Barbeque" TYPE bigint USING ("Barbeque"::bigint),
ALTER COLUMN "Thai" TYPE bigint USING ("Thai"::bigint),
ALTER COLUMN "Bagels" TYPE bigint USING ("Bagels"::bigint),
ALTER COLUMN "Southern" TYPE bigint USING ("Southern"::bigint),
ALTER COLUMN "Irish" TYPE bigint USING ("Irish"::bigint),
ALTER COLUMN "Vegan" TYPE bigint USING ("Vegan"::bigint),
ALTER COLUMN "CocktailBars" TYPE bigint USING ("CocktailBars"::bigint),
ALTER COLUMN "Tapas/SmallPlates" TYPE bigint USING ("Tapas/SmallPlates"::bigint),
ALTER COLUMN "IrishPub" TYPE bigint USING ("IrishPub"::bigint),
ALTER COLUMN "CoffeeRoasteries" TYPE bigint USING ("CoffeeRoasteries"::bigint),
ALTER COLUMN "Cupcakes" TYPE bigint USING ("Cupcakes"::bigint),
ALTER COLUMN "Caribbean" TYPE bigint USING ("Caribbean"::bigint),
ALTER COLUMN "Trinidadian" TYPE bigint USING ("Trinidadian"::bigint),
ALTER COLUMN "Cafes" TYPE bigint USING ("Cafes"::bigint),
ALTER COLUMN "ComfortFood" TYPE bigint USING ("ComfortFood"::bigint),
ALTER COLUMN "Donuts" TYPE bigint USING ("Donuts"::bigint),
ALTER COLUMN "AcaiBowls" TYPE bigint USING ("AcaiBowls"::bigint),
ALTER COLUMN "Vegetarian" TYPE bigint USING ("Vegetarian"::bigint),
ALTER COLUMN "Pakistani" TYPE bigint USING ("Pakistani"::bigint),
ALTER COLUMN "Indian" TYPE bigint USING ("Indian"::bigint),
ALTER COLUMN "Soup" TYPE bigint USING ("Soup"::bigint),
ALTER COLUMN "Halal" TYPE bigint USING ("Halal"::bigint),
ALTER COLUMN "StreetVendors" TYPE bigint USING ("StreetVendors"::bigint),
ALTER COLUMN "Greek" TYPE bigint USING ("Greek"::bigint),
ALTER COLUMN "FoodStands" TYPE bigint USING ("FoodStands"::bigint),
ALTER COLUMN "HotDogs" TYPE bigint USING ("HotDogs"::bigint),
ALTER COLUMN "Gluten-Free" TYPE bigint USING ("Gluten-Free"::bigint),
ALTER COLUMN "Empanadas" TYPE bigint USING ("Empanadas"::bigint),
ALTER COLUMN "Desserts" TYPE bigint USING ("Desserts"::bigint),
ALTER COLUMN "WhiskeyBars" TYPE bigint USING ("WhiskeyBars"::bigint),
ALTER COLUMN "LatinAmerican" TYPE bigint USING ("LatinAmerican"::bigint),
ALTER COLUMN "Honduran" TYPE bigint USING ("Honduran"::bigint),
ALTER COLUMN "Noodles" TYPE bigint USING ("Noodles"::bigint),
ALTER COLUMN "Spanish" TYPE bigint USING ("Spanish"::bigint),
ALTER COLUMN "Cheesesteaks" TYPE bigint USING ("Cheesesteaks"::bigint),
ALTER COLUMN "African" TYPE bigint USING ("African"::bigint),
ALTER COLUMN "Kebab" TYPE bigint USING ("Kebab"::bigint),
ALTER COLUMN "Turkish" TYPE bigint USING ("Turkish"::bigint),
ALTER COLUMN "MiddleEastern" TYPE bigint USING ("MiddleEastern"::bigint),
ALTER COLUMN "Lebanese" TYPE bigint USING ("Lebanese"::bigint),
ALTER COLUMN "Creperies" TYPE bigint USING ("Creperies"::bigint),
ALTER COLUMN "Gelato" TYPE bigint USING ("Gelato"::bigint),
ALTER COLUMN "Poke" TYPE bigint USING ("Poke"::bigint),
ALTER COLUMN "Falafel" TYPE bigint USING ("Falafel"::bigint),
ALTER COLUMN "Pretzels" TYPE bigint USING ("Pretzels"::bigint),
ALTER COLUMN "Wineries" TYPE bigint USING ("Wineries"::bigint),
ALTER COLUMN "LocalFlavor" TYPE bigint USING ("LocalFlavor"::bigint),
ALTER COLUMN "Tex-Mex" TYPE bigint USING ("Tex-Mex"::bigint),
ALTER COLUMN "DiveBars" TYPE bigint USING ("DiveBars"::bigint),
ALTER COLUMN "Peruvian" TYPE bigint USING ("Peruvian"::bigint),
ALTER COLUMN "Tacos" TYPE bigint USING ("Tacos"::bigint),
ALTER COLUMN "BeerGardens" TYPE bigint USING ("BeerGardens"::bigint),
ALTER COLUMN "SoulFood" TYPE bigint USING ("SoulFood"::bigint),
ALTER COLUMN "Ramen" TYPE bigint USING ("Ramen"::bigint),
ALTER COLUMN "Malaysian" TYPE bigint USING ("Malaysian"::bigint),
ALTER COLUMN "Burmese" TYPE bigint USING ("Burmese"::bigint),
ALTER COLUMN "Hawaiian" TYPE bigint USING ("Hawaiian"::bigint),
ALTER COLUMN "EthnicFood" TYPE bigint USING ("EthnicFood"::bigint),
ALTER COLUMN "Do-It-YourselfFood" TYPE bigint USING ("Do-It-YourselfFood"::bigint),
ALTER COLUMN "Sicilian" TYPE bigint USING ("Sicilian"::bigint),
ALTER COLUMN "Filipino" TYPE bigint USING ("Filipino"::bigint),
ALTER COLUMN "ThemedCafes" TYPE bigint USING ("ThemedCafes"::bigint),
ALTER COLUMN "Fish&Chips" TYPE bigint USING ("Fish&Chips"::bigint),
ALTER COLUMN "Sardinian" TYPE bigint USING ("Sardinian"::bigint),
ALTER COLUMN "Laotian" TYPE bigint USING ("Laotian"::bigint),
ALTER COLUMN "Teppanyaki" TYPE bigint USING ("Teppanyaki"::bigint),
ALTER COLUMN "Szechuan" TYPE bigint USING ("Szechuan"::bigint),
ALTER COLUMN "ShavedIce" TYPE bigint USING ("ShavedIce"::bigint),
ALTER COLUMN "Persian/Iranian" TYPE bigint USING ("Persian/Iranian"::bigint),
ALTER COLUMN "HongKongStyleCafe" TYPE bigint USING ("HongKongStyleCafe"::bigint),
ALTER COLUMN "Taiwanese" TYPE bigint USING ("Taiwanese"::bigint),
ALTER COLUMN "PanAsian" TYPE bigint USING ("PanAsian"::bigint),
ALTER COLUMN "NewMexicanCuisine" TYPE bigint USING ("NewMexicanCuisine"::bigint),
ALTER COLUMN "Oriental" TYPE bigint USING ("Oriental"::bigint),
ALTER COLUMN "Dominican" TYPE bigint USING ("Dominican"::bigint),
ALTER COLUMN "InternetCafes" TYPE bigint USING ("InternetCafes"::bigint),
ALTER COLUMN "Cuban" TYPE bigint USING ("Cuban"::bigint),
ALTER COLUMN "PuertoRican" TYPE bigint USING ("PuertoRican"::bigint),
ALTER COLUMN "Portuguese" TYPE bigint USING ("Portuguese"::bigint),
ALTER COLUMN "DimSum" TYPE bigint USING ("DimSum"::bigint),
ALTER COLUMN "TapasBars" TYPE bigint USING ("TapasBars"::bigint),
ALTER COLUMN "Cantonese" TYPE bigint USING ("Cantonese"::bigint),
ALTER COLUMN "Arabic" TYPE bigint USING ("Arabic"::bigint),
ALTER COLUMN "CandyStores" TYPE bigint USING ("CandyStores"::bigint),
ALTER COLUMN "Buffets" TYPE bigint USING ("Buffets"::bigint),
ALTER COLUMN "Brasseries" TYPE bigint USING ("Brasseries"::bigint),
ALTER COLUMN "Distilleries" TYPE bigint USING ("Distilleries"::bigint),
ALTER COLUMN "Ethiopian" TYPE bigint USING ("Ethiopian"::bigint),
ALTER COLUMN "Salvadoran" TYPE bigint USING ("Salvadoran"::bigint),
ALTER COLUMN "Karaoke" TYPE bigint USING ("Karaoke"::bigint),
ALTER COLUMN "Mongolian" TYPE bigint USING ("Mongolian"::bigint),
ALTER COLUMN "British" TYPE bigint USING ("British"::bigint),
ALTER COLUMN "German" TYPE bigint USING ("German"::bigint),
ALTER COLUMN "Syrian" TYPE bigint USING ("Syrian"::bigint),
ALTER COLUMN "Armenian" TYPE bigint USING ("Armenian"::bigint),
ALTER COLUMN "Waffles" TYPE bigint USING ("Waffles"::bigint),
ALTER COLUMN "ModernEuropean" TYPE bigint USING ("ModernEuropean"::bigint),
ALTER COLUMN "Colombian" TYPE bigint USING ("Colombian"::bigint),
ALTER COLUMN "Haitian" TYPE bigint USING ("Haitian"::bigint),
ALTER COLUMN "Czech" TYPE bigint USING ("Czech"::bigint),
ALTER COLUMN "Pop-UpRestaurants" TYPE bigint USING ("Pop-UpRestaurants"::bigint),
ALTER COLUMN "TikiBars" TYPE bigint USING ("TikiBars"::bigint),
ALTER COLUMN "Polish" TYPE bigint USING ("Polish"::bigint),
ALTER COLUMN "Hainan" TYPE bigint USING ("Hainan"::bigint),
ALTER COLUMN "TeaRooms" TYPE bigint USING ("TeaRooms"::bigint),
ALTER COLUMN "Russian" TYPE bigint USING ("Russian"::bigint),
ALTER COLUMN "Cafeteria" TYPE bigint USING ("Cafeteria"::bigint),
ALTER COLUMN "Afghan" TYPE bigint USING ("Afghan"::bigint),
ALTER COLUMN "Somali" TYPE bigint USING ("Somali"::bigint),
ALTER COLUMN "Argentine" TYPE bigint USING ("Argentine"::bigint),
ALTER COLUMN "Brazilian" TYPE bigint USING ("Brazilian"::bigint),
ALTER COLUMN "PianoBars" TYPE bigint USING ("PianoBars"::bigint),
ALTER COLUMN "Senegalese" TYPE bigint USING ("Senegalese"::bigint),
ALTER COLUMN "Tuscan" TYPE bigint USING ("Tuscan"::bigint),
ALTER COLUMN "Smokehouse" TYPE bigint USING ("Smokehouse"::bigint),
ALTER COLUMN "Cambodian" TYPE bigint USING ("Cambodian"::bigint),
ALTER COLUMN "Patisserie/CakeShop" TYPE bigint USING ("Patisserie/CakeShop"::bigint),
ALTER COLUMN "Venezuelan" TYPE bigint USING ("Venezuelan"::bigint),
ALTER COLUMN "Shanghainese" TYPE bigint USING ("Shanghainese"::bigint),
ALTER COLUMN "Indonesian" TYPE bigint USING ("Indonesian"::bigint),
ALTER COLUMN "GayBars" TYPE bigint USING ("GayBars"::bigint),
ALTER COLUMN "Kombucha" TYPE bigint USING ("Kombucha"::bigint),
ALTER COLUMN "Calabrian" TYPE bigint USING ("Calabrian"::bigint),
ALTER COLUMN "Australian" TYPE bigint USING ("Australian"::bigint),
ALTER COLUMN "Iberian" TYPE bigint USING ("Iberian"::bigint),
ALTER COLUMN "JapaneseCurry" TYPE bigint USING ("JapaneseCurry"::bigint),
ALTER COLUMN "Izakaya" TYPE bigint USING ("Izakaya"::bigint),
ALTER COLUMN "Nicaraguan" TYPE bigint USING ("Nicaraguan"::bigint),
ALTER COLUMN "HotPot" TYPE bigint USING ("HotPot"::bigint),
ALTER COLUMN "Kosher" TYPE bigint USING ("Kosher"::bigint),
ALTER COLUMN "Pancakes" TYPE bigint USING ("Pancakes"::bigint),
ALTER COLUMN "Egyptian" TYPE bigint USING ("Egyptian"::bigint),
ALTER COLUMN "SriLankan" TYPE bigint USING ("SriLankan"::bigint),
ALTER COLUMN "Uzbek" TYPE bigint USING ("Uzbek"::bigint),
ALTER COLUMN "Scandinavian" TYPE bigint USING ("Scandinavian"::bigint),
ALTER COLUMN "Himalayan/Nepalese" TYPE bigint USING ("Himalayan/Nepalese"::bigint),
ALTER COLUMN "ChampagneBars" TYPE bigint USING ("ChampagneBars"::bigint),
ALTER COLUMN "Delicatessen" TYPE bigint USING ("Delicatessen"::bigint),
ALTER COLUMN "Israeli" TYPE bigint USING ("Israeli"::bigint),
ALTER COLUMN "ShavedSnow" TYPE bigint USING ("ShavedSnow"::bigint),
ALTER COLUMN "Macarons" TYPE bigint USING ("Macarons"::bigint),
ALTER COLUMN "Georgian" TYPE bigint USING ("Georgian"::bigint),
ALTER COLUMN "Belgian" TYPE bigint USING ("Belgian"::bigint),
ALTER COLUMN "Fuzhou" TYPE bigint USING ("Fuzhou"::bigint),
ALTER COLUMN "Basque" TYPE bigint USING ("Basque"::bigint),
ALTER COLUMN "Ukrainian" TYPE bigint USING ("Ukrainian"::bigint),
ALTER COLUMN "Fondue" TYPE bigint USING ("Fondue"::bigint),
ALTER COLUMN "Singaporean" TYPE bigint USING ("Singaporean"::bigint),
ALTER COLUMN "SouthAfrican" TYPE bigint USING ("SouthAfrican"::bigint),
ALTER COLUMN "Bangladeshi" TYPE bigint USING ("Bangladeshi"::bigint),
ALTER COLUMN "Hungarian" TYPE bigint USING ("Hungarian"::bigint),
ALTER COLUMN "Bistros" TYPE bigint USING ("Bistros"::bigint),
ALTER COLUMN "Scottish" TYPE bigint USING ("Scottish"::bigint),
ALTER COLUMN "Guamanian" TYPE bigint USING ("Guamanian"::bigint),
ALTER COLUMN "Tonkatsu" TYPE bigint USING ("Tonkatsu"::bigint),
ALTER COLUMN "Donburi" TYPE bigint USING ("Donburi"::bigint),
ALTER COLUMN "Pita" TYPE bigint USING ("Pita"::bigint),
ALTER COLUMN "Austrian" TYPE bigint USING ("Austrian"::bigint),
ALTER COLUMN "EasternEuropean" TYPE bigint USING ("EasternEuropean"::bigint),
ALTER COLUMN "Cucinacampana" TYPE bigint USING ("Cucinacampana"::bigint),
ALTER COLUMN "ConveyorBeltSushi" TYPE bigint USING ("ConveyorBeltSushi"::bigint),
ALTER COLUMN "Poutineries" TYPE bigint USING ("Poutineries"::bigint),
ALTER COLUMN "Coffeeshops" TYPE bigint USING ("Coffeeshops"::bigint),
ALTER COLUMN "SerboCroatian" TYPE bigint USING ("SerboCroatian"::bigint),
ALTER COLUMN "BubbleTea_stars" TYPE bigint USING ("BubbleTea"::bigint),
ALTER COLUMN "Coffee&Tea_stars" TYPE bigint USING ("Coffee&Tea"::bigint),
ALTER COLUMN "Bakeries_stars" TYPE bigint USING ("Bakeries"::bigint),
ALTER COLUMN "Burgers_stars" TYPE bigint USING ("Burgers"::bigint),
ALTER COLUMN "FastFood_stars" TYPE bigint USING ("FastFood"::bigint),
ALTER COLUMN "Sandwiches_stars" TYPE bigint USING ("Sandwiches"::bigint),
ALTER COLUMN "IceCream&FrozenYogurt_stars" TYPE bigint USING ("IceCream&FrozenYogurt"::bigint),
ALTER COLUMN "Vietnamese_stars" TYPE bigint USING ("Vietnamese"::bigint),
ALTER COLUMN "FoodTrucks_stars" TYPE bigint USING ("FoodTrucks"::bigint),
ALTER COLUMN "American(Traditional)_stars" TYPE bigint USING ("American(Traditional)"::bigint),
ALTER COLUMN "Diners_stars" TYPE bigint USING ("Diners"::bigint),
ALTER COLUMN "Breakfast&Brunch_stars" TYPE bigint USING ("Breakfast&Brunch"::bigint),
ALTER COLUMN "SushiBars_stars" TYPE bigint USING ("SushiBars"::bigint),
ALTER COLUMN "Japanese_stars" TYPE bigint USING ("Japanese"::bigint),
ALTER COLUMN "Korean_stars" TYPE bigint USING ("Korean"::bigint),
ALTER COLUMN "Steakhouses_stars" TYPE bigint USING ("Steakhouses"::bigint),
ALTER COLUMN "AsianFusion_stars" TYPE bigint USING ("AsianFusion"::bigint),
ALTER COLUMN "Italian_stars" TYPE bigint USING ("Italian"::bigint),
ALTER COLUMN "Pizza_stars" TYPE bigint USING ("Pizza"::bigint),
ALTER COLUMN "ChickenWings_stars" TYPE bigint USING ("ChickenWings"::bigint),
ALTER COLUMN "Brewpubs_stars" TYPE bigint USING ("Brewpubs"::bigint),
ALTER COLUMN "Breweries_stars" TYPE bigint USING ("Breweries"::bigint),
ALTER COLUMN "SportsBars_stars" TYPE bigint USING ("SportsBars"::bigint),
ALTER COLUMN "American(New)_stars" TYPE bigint USING ("American(New)"::bigint),
ALTER COLUMN "Bars_stars" TYPE bigint USING ("Bars"::bigint),
ALTER COLUMN "Salad_stars" TYPE bigint USING ("Salad"::bigint),
ALTER COLUMN "BeerBar_stars" TYPE bigint USING ("BeerBar"::bigint),
ALTER COLUMN "Lounges_stars" TYPE bigint USING ("Lounges"::bigint),
ALTER COLUMN "Wraps_stars" TYPE bigint USING ("Wraps"::bigint),
ALTER COLUMN "Delis_stars" TYPE bigint USING ("Delis"::bigint),
ALTER COLUMN "Pubs_stars" TYPE bigint USING ("Pubs"::bigint),
ALTER COLUMN "WineBars_stars" TYPE bigint USING ("WineBars"::bigint),
ALTER COLUMN "Gastropubs_stars" TYPE bigint USING ("Gastropubs"::bigint),
ALTER COLUMN "JuiceBars&Smoothies_stars" TYPE bigint USING ("JuiceBars&Smoothies"::bigint),
ALTER COLUMN "Seafood_stars" TYPE bigint USING ("Seafood"::bigint),
ALTER COLUMN "Cajun/Creole_stars" TYPE bigint USING ("Cajun/Creole"::bigint),
ALTER COLUMN "Mexican_stars" TYPE bigint USING ("Mexican"::bigint),
ALTER COLUMN "French_stars" TYPE bigint USING ("French"::bigint),
ALTER COLUMN "Moroccan_stars" TYPE bigint USING ("Moroccan"::bigint),
ALTER COLUMN "Mediterranean_stars" TYPE bigint USING ("Mediterranean"::bigint),
ALTER COLUMN "Chinese_stars" TYPE bigint USING ("Chinese"::bigint),
ALTER COLUMN "Live/RawFood_stars" TYPE bigint USING ("Live/RawFood"::bigint),
ALTER COLUMN "Beer_stars" TYPE bigint USING ("Beer"::bigint),
ALTER COLUMN "Wine&Spirits_stars" TYPE bigint USING ("Wine&Spirits"::bigint),
ALTER COLUMN "Barbeque_stars" TYPE bigint USING ("Barbeque"::bigint),
ALTER COLUMN "Thai_stars" TYPE bigint USING ("Thai"::bigint),
ALTER COLUMN "Bagels_stars" TYPE bigint USING ("Bagels"::bigint),
ALTER COLUMN "Southern_stars" TYPE bigint USING ("Southern"::bigint),
ALTER COLUMN "Irish_stars" TYPE bigint USING ("Irish"::bigint),
ALTER COLUMN "Vegan_stars" TYPE bigint USING ("Vegan"::bigint),
ALTER COLUMN "CocktailBars_stars" TYPE bigint USING ("CocktailBars"::bigint),
ALTER COLUMN "Tapas/SmallPlates_stars" TYPE bigint USING ("Tapas/SmallPlates"::bigint),
ALTER COLUMN "IrishPub_stars" TYPE bigint USING ("IrishPub"::bigint),
ALTER COLUMN "CoffeeRoasteries_stars" TYPE bigint USING ("CoffeeRoasteries"::bigint),
ALTER COLUMN "Cupcakes_stars" TYPE bigint USING ("Cupcakes"::bigint),
ALTER COLUMN "Caribbean_stars" TYPE bigint USING ("Caribbean"::bigint),
ALTER COLUMN "Trinidadian_stars" TYPE bigint USING ("Trinidadian"::bigint),
ALTER COLUMN "Cafes_stars" TYPE bigint USING ("Cafes"::bigint),
ALTER COLUMN "ComfortFood_stars" TYPE bigint USING ("ComfortFood"::bigint),
ALTER COLUMN "Donuts_stars" TYPE bigint USING ("Donuts"::bigint),
ALTER COLUMN "AcaiBowls_stars" TYPE bigint USING ("AcaiBowls"::bigint),
ALTER COLUMN "Vegetarian_stars" TYPE bigint USING ("Vegetarian"::bigint),
ALTER COLUMN "Pakistani_stars" TYPE bigint USING ("Pakistani"::bigint),
ALTER COLUMN "Indian_stars" TYPE bigint USING ("Indian"::bigint),
ALTER COLUMN "Soup_stars" TYPE bigint USING ("Soup"::bigint),
ALTER COLUMN "Halal_stars" TYPE bigint USING ("Halal"::bigint),
ALTER COLUMN "StreetVendors_stars" TYPE bigint USING ("StreetVendors"::bigint),
ALTER COLUMN "Greek_stars" TYPE bigint USING ("Greek"::bigint),
ALTER COLUMN "FoodStands_stars" TYPE bigint USING ("FoodStands"::bigint),
ALTER COLUMN "HotDogs_stars" TYPE bigint USING ("HotDogs"::bigint),
ALTER COLUMN "Gluten-Free_stars" TYPE bigint USING ("Gluten-Free"::bigint),
ALTER COLUMN "Empanadas_stars" TYPE bigint USING ("Empanadas"::bigint),
ALTER COLUMN "Desserts_stars" TYPE bigint USING ("Desserts"::bigint),
ALTER COLUMN "WhiskeyBars_stars" TYPE bigint USING ("WhiskeyBars"::bigint),
ALTER COLUMN "LatinAmerican_stars" TYPE bigint USING ("LatinAmerican"::bigint),
ALTER COLUMN "Honduran_stars" TYPE bigint USING ("Honduran"::bigint),
ALTER COLUMN "Noodles_stars" TYPE bigint USING ("Noodles"::bigint),
ALTER COLUMN "Spanish_stars" TYPE bigint USING ("Spanish"::bigint),
ALTER COLUMN "Cheesesteaks_stars" TYPE bigint USING ("Cheesesteaks"::bigint),
ALTER COLUMN "African_stars" TYPE bigint USING ("African"::bigint),
ALTER COLUMN "Kebab_stars" TYPE bigint USING ("Kebab"::bigint),
ALTER COLUMN "Turkish_stars" TYPE bigint USING ("Turkish"::bigint),
ALTER COLUMN "MiddleEastern_stars" TYPE bigint USING ("MiddleEastern"::bigint),
ALTER COLUMN "Lebanese_stars" TYPE bigint USING ("Lebanese"::bigint),
ALTER COLUMN "Creperies_stars" TYPE bigint USING ("Creperies"::bigint),
ALTER COLUMN "Gelato_stars" TYPE bigint USING ("Gelato"::bigint),
ALTER COLUMN "Poke_stars" TYPE bigint USING ("Poke"::bigint),
ALTER COLUMN "Falafel_stars" TYPE bigint USING ("Falafel"::bigint),
ALTER COLUMN "Pretzels_stars" TYPE bigint USING ("Pretzels"::bigint),
ALTER COLUMN "Wineries_stars" TYPE bigint USING ("Wineries"::bigint),
ALTER COLUMN "LocalFlavor_stars" TYPE bigint USING ("LocalFlavor"::bigint),
ALTER COLUMN "Tex-Mex_stars" TYPE bigint USING ("Tex-Mex"::bigint),
ALTER COLUMN "DiveBars_stars" TYPE bigint USING ("DiveBars"::bigint),
ALTER COLUMN "Peruvian_stars" TYPE bigint USING ("Peruvian"::bigint),
ALTER COLUMN "Tacos_stars" TYPE bigint USING ("Tacos"::bigint),
ALTER COLUMN "BeerGardens_stars" TYPE bigint USING ("BeerGardens"::bigint),
ALTER COLUMN "SoulFood_stars" TYPE bigint USING ("SoulFood"::bigint),
ALTER COLUMN "Ramen_stars" TYPE bigint USING ("Ramen"::bigint),
ALTER COLUMN "Malaysian_stars" TYPE bigint USING ("Malaysian"::bigint),
ALTER COLUMN "Burmese_stars" TYPE bigint USING ("Burmese"::bigint),
ALTER COLUMN "Hawaiian_stars" TYPE bigint USING ("Hawaiian"::bigint),
ALTER COLUMN "EthnicFood_stars" TYPE bigint USING ("EthnicFood"::bigint),
ALTER COLUMN "Do-It-YourselfFood_stars" TYPE bigint USING ("Do-It-YourselfFood"::bigint),
ALTER COLUMN "Sicilian_stars" TYPE bigint USING ("Sicilian"::bigint),
ALTER COLUMN "Filipino_stars" TYPE bigint USING ("Filipino"::bigint),
ALTER COLUMN "ThemedCafes_stars" TYPE bigint USING ("ThemedCafes"::bigint),
ALTER COLUMN "Fish&Chips_stars" TYPE bigint USING ("Fish&Chips"::bigint),
ALTER COLUMN "Sardinian_stars" TYPE bigint USING ("Sardinian"::bigint),
ALTER COLUMN "Laotian_stars" TYPE bigint USING ("Laotian"::bigint),
ALTER COLUMN "Teppanyaki_stars" TYPE bigint USING ("Teppanyaki"::bigint),
ALTER COLUMN "Szechuan_stars" TYPE bigint USING ("Szechuan"::bigint),
ALTER COLUMN "ShavedIce_stars" TYPE bigint USING ("ShavedIce"::bigint),
ALTER COLUMN "Persian/Iranian_stars" TYPE bigint USING ("Persian/Iranian"::bigint),
ALTER COLUMN "HongKongStyleCafe_stars" TYPE bigint USING ("HongKongStyleCafe"::bigint),
ALTER COLUMN "Taiwanese_stars" TYPE bigint USING ("Taiwanese"::bigint),
ALTER COLUMN "PanAsian_stars" TYPE bigint USING ("PanAsian"::bigint),
ALTER COLUMN "NewMexicanCuisine_stars" TYPE bigint USING ("NewMexicanCuisine"::bigint),
ALTER COLUMN "Oriental_stars" TYPE bigint USING ("Oriental"::bigint),
ALTER COLUMN "Dominican_stars" TYPE bigint USING ("Dominican"::bigint),
ALTER COLUMN "InternetCafes_stars" TYPE bigint USING ("InternetCafes"::bigint),
ALTER COLUMN "Cuban_stars" TYPE bigint USING ("Cuban"::bigint),
ALTER COLUMN "PuertoRican_stars" TYPE bigint USING ("PuertoRican"::bigint),
ALTER COLUMN "Portuguese_stars" TYPE bigint USING ("Portuguese"::bigint),
ALTER COLUMN "DimSum_stars" TYPE bigint USING ("DimSum"::bigint),
ALTER COLUMN "TapasBars_stars" TYPE bigint USING ("TapasBars"::bigint),
ALTER COLUMN "Cantonese_stars" TYPE bigint USING ("Cantonese"::bigint),
ALTER COLUMN "Arabic_stars" TYPE bigint USING ("Arabic"::bigint),
ALTER COLUMN "CandyStores_stars" TYPE bigint USING ("CandyStores"::bigint),
ALTER COLUMN "Buffets_stars" TYPE bigint USING ("Buffets"::bigint),
ALTER COLUMN "Brasseries_stars" TYPE bigint USING ("Brasseries"::bigint),
ALTER COLUMN "Distilleries_stars" TYPE bigint USING ("Distilleries"::bigint),
ALTER COLUMN "Ethiopian_stars" TYPE bigint USING ("Ethiopian"::bigint),
ALTER COLUMN "Salvadoran_stars" TYPE bigint USING ("Salvadoran"::bigint),
ALTER COLUMN "Karaoke_stars" TYPE bigint USING ("Karaoke"::bigint),
ALTER COLUMN "Mongolian_stars" TYPE bigint USING ("Mongolian"::bigint),
ALTER COLUMN "British_stars" TYPE bigint USING ("British"::bigint),
ALTER COLUMN "German_stars" TYPE bigint USING ("German"::bigint),
ALTER COLUMN "Syrian_stars" TYPE bigint USING ("Syrian"::bigint),
ALTER COLUMN "Armenian_stars" TYPE bigint USING ("Armenian"::bigint),
ALTER COLUMN "Waffles_stars" TYPE bigint USING ("Waffles"::bigint),
ALTER COLUMN "ModernEuropean_stars" TYPE bigint USING ("ModernEuropean"::bigint),
ALTER COLUMN "Colombian_stars" TYPE bigint USING ("Colombian"::bigint),
ALTER COLUMN "Haitian_stars" TYPE bigint USING ("Haitian"::bigint),
ALTER COLUMN "Czech_stars" TYPE bigint USING ("Czech"::bigint),
ALTER COLUMN "Pop-UpRestaurants_stars" TYPE bigint USING ("Pop-UpRestaurants"::bigint),
ALTER COLUMN "TikiBars_stars" TYPE bigint USING ("TikiBars"::bigint),
ALTER COLUMN "Polish_stars" TYPE bigint USING ("Polish"::bigint),
ALTER COLUMN "Hainan_stars" TYPE bigint USING ("Hainan"::bigint),
ALTER COLUMN "TeaRooms_stars" TYPE bigint USING ("TeaRooms"::bigint),
ALTER COLUMN "Russian_stars" TYPE bigint USING ("Russian"::bigint),
ALTER COLUMN "Cafeteria_stars" TYPE bigint USING ("Cafeteria"::bigint),
ALTER COLUMN "Afghan_stars" TYPE bigint USING ("Afghan"::bigint),
ALTER COLUMN "Somali_stars" TYPE bigint USING ("Somali"::bigint),
ALTER COLUMN "Argentine_stars" TYPE bigint USING ("Argentine"::bigint),
ALTER COLUMN "Brazilian_stars" TYPE bigint USING ("Brazilian"::bigint),
ALTER COLUMN "PianoBars_stars" TYPE bigint USING ("PianoBars"::bigint),
ALTER COLUMN "Senegalese_stars" TYPE bigint USING ("Senegalese"::bigint),
ALTER COLUMN "Tuscan_stars" TYPE bigint USING ("Tuscan"::bigint),
ALTER COLUMN "Smokehouse_stars" TYPE bigint USING ("Smokehouse"::bigint),
ALTER COLUMN "Cambodian_stars" TYPE bigint USING ("Cambodian"::bigint),
ALTER COLUMN "Patisserie/CakeShop_stars" TYPE bigint USING ("Patisserie/CakeShop"::bigint),
ALTER COLUMN "Venezuelan_stars" TYPE bigint USING ("Venezuelan"::bigint),
ALTER COLUMN "Shanghainese_stars" TYPE bigint USING ("Shanghainese"::bigint),
ALTER COLUMN "Indonesian_stars" TYPE bigint USING ("Indonesian"::bigint),
ALTER COLUMN "GayBars_stars" TYPE bigint USING ("GayBars"::bigint),
ALTER COLUMN "Kombucha_stars" TYPE bigint USING ("Kombucha"::bigint),
ALTER COLUMN "Calabrian_stars" TYPE bigint USING ("Calabrian"::bigint),
ALTER COLUMN "Australian_stars" TYPE bigint USING ("Australian"::bigint),
ALTER COLUMN "Iberian_stars" TYPE bigint USING ("Iberian"::bigint),
ALTER COLUMN "JapaneseCurry_stars" TYPE bigint USING ("JapaneseCurry"::bigint),
ALTER COLUMN "Izakaya_stars" TYPE bigint USING ("Izakaya"::bigint),
ALTER COLUMN "Nicaraguan_stars" TYPE bigint USING ("Nicaraguan"::bigint),
ALTER COLUMN "HotPot_stars" TYPE bigint USING ("HotPot"::bigint),
ALTER COLUMN "Kosher_stars" TYPE bigint USING ("Kosher"::bigint),
ALTER COLUMN "Pancakes_stars" TYPE bigint USING ("Pancakes"::bigint),
ALTER COLUMN "Egyptian_stars" TYPE bigint USING ("Egyptian"::bigint),
ALTER COLUMN "SriLankan_stars" TYPE bigint USING ("SriLankan"::bigint),
ALTER COLUMN "Uzbek_stars" TYPE bigint USING ("Uzbek"::bigint),
ALTER COLUMN "Scandinavian_stars" TYPE bigint USING ("Scandinavian"::bigint),
ALTER COLUMN "Himalayan/Nepalese_stars" TYPE bigint USING ("Himalayan/Nepalese"::bigint),
ALTER COLUMN "ChampagneBars_stars" TYPE bigint USING ("ChampagneBars"::bigint),
ALTER COLUMN "Delicatessen_stars" TYPE bigint USING ("Delicatessen"::bigint),
ALTER COLUMN "Israeli_stars" TYPE bigint USING ("Israeli"::bigint),
ALTER COLUMN "ShavedSnow_stars" TYPE bigint USING ("ShavedSnow"::bigint),
ALTER COLUMN "Macarons_stars" TYPE bigint USING ("Macarons"::bigint),
ALTER COLUMN "Georgian_stars" TYPE bigint USING ("Georgian"::bigint),
ALTER COLUMN "Belgian_stars" TYPE bigint USING ("Belgian"::bigint),
ALTER COLUMN "Fuzhou_stars" TYPE bigint USING ("Fuzhou"::bigint),
ALTER COLUMN "Basque_stars" TYPE bigint USING ("Basque"::bigint),
ALTER COLUMN "Ukrainian_stars" TYPE bigint USING ("Ukrainian"::bigint),
ALTER COLUMN "Fondue_stars" TYPE bigint USING ("Fondue"::bigint),
ALTER COLUMN "Singaporean_stars" TYPE bigint USING ("Singaporean"::bigint),
ALTER COLUMN "SouthAfrican_stars" TYPE bigint USING ("SouthAfrican"::bigint),
ALTER COLUMN "Bangladeshi_stars" TYPE bigint USING ("Bangladeshi"::bigint),
ALTER COLUMN "Hungarian_stars" TYPE bigint USING ("Hungarian"::bigint),
ALTER COLUMN "Bistros_stars" TYPE bigint USING ("Bistros"::bigint),
ALTER COLUMN "Scottish_stars" TYPE bigint USING ("Scottish"::bigint),
ALTER COLUMN "Guamanian_stars" TYPE bigint USING ("Guamanian"::bigint),
ALTER COLUMN "Tonkatsu_stars" TYPE bigint USING ("Tonkatsu"::bigint),
ALTER COLUMN "Donburi_stars" TYPE bigint USING ("Donburi"::bigint),
ALTER COLUMN "Pita_stars" TYPE bigint USING ("Pita"::bigint),
ALTER COLUMN "Austrian_stars" TYPE bigint USING ("Austrian"::bigint),
ALTER COLUMN "EasternEuropean_stars" TYPE bigint USING ("EasternEuropean"::bigint),
ALTER COLUMN "Cucinacampana_stars" TYPE bigint USING ("Cucinacampana"::bigint),
ALTER COLUMN "ConveyorBeltSushi_stars" TYPE bigint USING ("ConveyorBeltSushi"::bigint),
ALTER COLUMN "Poutineries_stars" TYPE bigint USING ("Poutineries"::bigint),
ALTER COLUMN "Coffeeshops_stars" TYPE bigint USING ("Coffeeshops"::bigint),
ALTER COLUMN "SerboCroatian_stars" TYPE bigint USING ("SerboCroatian"::bigint)