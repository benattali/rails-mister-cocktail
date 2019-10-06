# require 'json'
# require 'open-uri'

# puts "Generating random ingredients..."

# url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

# ingredient_json = open(url).read
# ingredients = JSON.parse(ingredient_json)

# ingredients.each do |ingredient|
#   ingredient[1].each do |new_ing|
#     Ingredient.create!(name: new_ing.values[0])
#   end
# end

# puts "Finished generating ingredients"

puts 'Destroying old database'
Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

puts 'Generating cocktails'

skeleton = Cocktail.new(name: 'Skeleton',
												remote_photo_url: 'https://res.cloudinary.com/dyseqqsmw/image/upload/v1561042161/k4a3v7tb6welueqbgbvt.jpg')
dry_martini = Cocktail.new(name: 'Dry Martini',
                           remote_photo_url: 'https://res.cloudinary.com/dyseqqsmw/image/upload/v1561128591/j0pn28p78dh0yt7tkqax.jpg')
french_martini = Cocktail.new(name: 'French Martini',
                              remote_photo_url: 'https://res.cloudinary.com/dyseqqsmw/image/upload/v1561128677/mybfjhjr4ivein8ro3ks.jpg')
mojito = Cocktail.new(name: 'Mojito',
                      remote_photo_url: 'https://res.cloudinary.com/dyseqqsmw/image/upload/v1561128756/qjw9jjpkibq1bck66378.jpg')
arak_madu = Cocktail.new(name: 'Arak Madu',
                         remote_photo_url: 'https://res.cloudinary.com/dyseqqsmw/image/upload/v1561128935/itoizvhrti552w4qqz7a.jpg')

skeleton.save!
dry_martini.save!
french_martini.save!
mojito.save!
arak_madu.save!

puts 'Finished generating cocktails'

puts 'Generating ingredients and doses'

# Skeleton ingredients
skel_coffee_liqueur = Ingredient.new(name: 'Coffee liqueur')
skel_lemon_juice = Ingredient.new(name: 'Lemon juice')
skel_applejack = Ingredient.new(name: 'Applejack')
skel_orange_bitters = Ingredient.new(name: 'Orange bitters')

skel_coffee_liqueur.save!
skel_lemon_juice.save!
skel_applejack.save!
skel_orange_bitters.save!

# Skeleton doses
skel_point_five = Dose.new(description: '0.5 cups',
                           cocktail: skeleton,
                           ingredient: skel_coffee_liqueur)
skel_ten_mil =  Dose.new(description: '10 ml',
                         cocktail: skeleton,
                         ingredient: skel_lemon_juice)
skel_hundred_mil = Dose.new(description: '100 ml',
                            cocktail: skeleton,
                            ingredient: skel_applejack)
skel_two_gal = Dose.new(description: '2 gallons',
                        cocktail: skeleton,
                        ingredient: skel_orange_bitters)

skel_point_five.save!
skel_ten_mil.save!
skel_hundred_mil.save!
skel_two_gal.save!

# Dry martini ingredients
dry_gin = Ingredient.new(name: 'Gin')
dry_vermouth = Ingredient.new(name: 'Dry vermouth')
dry_orange_bitters = Ingredient.new(name: 'Orange bitters')

dry_gin.save!
dry_vermouth.save!
dry_orange_bitters.save!

# Dry martini doses
dry_seventy_five_mil = Dose.new(description: '75 ml',
                                cocktail: dry_martini,
                                ingredient: dry_gin)
dry_fifteen_mil = Dose.new(description: '15 ml',
                           cocktail: dry_martini,
                           ingredient: dry_vermouth)
dry_one_dash = Dose.new(description: '1 dash',
                        cocktail: dry_martini,
                        ingredient: dry_orange_bitters)

dry_seventy_five_mil.save!
dry_fifteen_mil.save!
dry_one_dash.save!

# French martini ingredients
french_martini_vodka = Ingredient.new(name: 'Vodka')
french_martini_pineapple_juice = Ingredient.new(name: 'Pineapple juice')
french_martini_creme_cassis = Ingredient.new(name: 'Creme de cassis')

french_martini_vodka.save!
french_martini_pineapple_juice.save!
french_martini_creme_cassis.save!

# French martini doses
french_martini_sixty_mil = Dose.new(description: '60 ml',
                                    cocktail: french_martini,
                                    ingredient: french_martini_vodka)
french_martini_fifty_five_mil = Dose.new(description: '55 ml',
                                         cocktail: french_martini,
                                         ingredient: french_martini_pineapple_juice)
french_martini_seven_five_mil = Dose.new(description: '7.5 ml',
                                         cocktail: french_martini,
                                         ingredient: french_martini_creme_cassis)

french_martini_sixty_mil.save!
french_martini_fifty_five_mil.save!
french_martini_seven_five_mil.save!

# Mojito ingredients
mojito_mint = Ingredient.new(name: 'Mint')
mojito_lime = Ingredient.new(name: 'Lime')
mojito_sugar = Ingredient.new(name: 'Sugar')
mojito_white_rum = Ingredient.new(name: 'White rum')
mojito_grape_soda = Ingredient.new(name: 'Grape soda')

mojito_mint.save!
mojito_lime.save!
mojito_sugar.save!
mojito_white_rum.save!
mojito_grape_soda.save!

# Mojito doses
mojito_ten_leaves = Dose.new(description: '10 leaves',
                             cocktail: mojito,
                             ingredient: mojito_mint)
mojito_half = Dose.new(description: 'Half',
                             cocktail: mojito,
                             ingredient: mojito_lime)
mojito_two_tablespoons = Dose.new(description: '2 tablespoons',
                                  cocktail: mojito,
                                  ingredient: mojito_sugar)
mojito_one_five_oz = Dose.new(description: '1.5 oz',
                              cocktail: mojito,
                              ingredient: mojito_white_rum)
mojito_point_five = Dose.new(description: '0.5 cups',
                             cocktail: mojito,
                             ingredient: mojito_grape_soda)

mojito_ten_leaves.save!
mojito_half.save!
mojito_two_tablespoons.save!
mojito_one_five_oz.save!
mojito_point_five.save!

# Arak madu ingredients
arak_sec = Ingredient.new(name: 'Triple sec')
arak_lemon_juice = Ingredient.new(name: 'Lemon juice')
arak_sugar = Ingredient.new(name: 'Sugar')
arak_water = Ingredient.new(name: 'Water')

arak_sec.save!
arak_lemon_juice.save!
arak_sugar.save!
arak_water.save!

# Arak doses
arak_five_cl = Dose.new(description: '5 cl',
                        cocktail: arak_madu,
                        ingredient: arak_sec)
arak_two_cl = Dose.new(description: '2 cl',
                       cocktail: arak_madu,
                       ingredient: arak_lemon_juice)
arak_two_cl_sugar = Dose.new(description: '2 cl',
                             cocktail: arak_madu,
                             ingredient: arak_sugar)
arak_one_cl = Dose.new(description: '1 cl',
                       cocktail: arak_madu,
                       ingredient: arak_water)

arak_five_cl.save!
arak_two_cl.save!
arak_two_cl_sugar.save!
arak_one_cl.save!

puts 'Finished generating ingredients and doses'