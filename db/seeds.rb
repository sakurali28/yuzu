# User.create!([
#   {
#     name: "Lisa",
#     email: "lisa@example.com",
#     password: "password",
#   },
#   {
#     name: "Miharu",
#     email: "miharu@example.com",
#     password: "password",
#   },
# ])

# Recipe.create!([
#   {
#     user_id: 1,
#     name: "Banana Bread",
#     servings: 12,
#     image: "https://images.101cookbooks.com/banana-bread-recipe-2019-h.jpg?w=680",
#     cooktime: 35,
#     ingredients: "140g all purpose flour, 50g almond meal,
#     100g cane sugar, 1tsp baking powder, 1stick of butter, 2 eggs, 300g bananas",
#     directions: "combine all dry ingredients, combine all wet ingredients, mix the dry and the wet, bake at 350F for 30min",
#   },
#   {
#     user_id: 1,
#     servings: 12,
#     name: "Lemon Pound Cake",
#     image: "https://www.seasonsandsuppers.ca/wp-content/uploads/2017/05/lemon-loaf800E.jpg",
#     cooktime: 40,
#     ingredients: "100g all purpose flour, 20g almond meal, 80g cane sugar, 1tsp baking powder, 1 stick of butter, 2 eggs, 2tbsp honey, 1.5tbsp lemon juice, 1 lemon worth of zest",
#     directions: "combine all dry ingredients, combine all wet ingredients, mix the dry and the wet, bake at 165C for 35min",
#   },
#   {
#     user_id: 1,
#     name: "Ni Kabocha",
#     servings: 3 - 4,
#     image: "https://www.justonecookbook.com/wp-content/uploads/2019/09/Simmered-Kabocha-5770-I-500x375.jpg",
#     cooktime: 10,
#     ingredients: "400g kabocha, 2tbsp cane sugar, 1tbsp mirin, 1tsp soy sauce",
#     directions: "simmer on medium heat for 5min",
#   },
#   {
#     user_id: 1,
#     name: "Annin Tofu",
#     servings: 4,
#     image: "https://www.kawalingpinoy.com/wp-content/uploads/2014/12/almond-jello-7.jpg",
#     cooktime: 15,
#     ingredients: "500ml milk, 2tbsp cane sugar, 1tsp almond essence, 2tsp agar agar or 8g gelatin",
#     directions: "disolve gelatin in warm water, mix everything together, bring to a boil on medium heat, let it cool to be placed in fridge",
#   },
#   {
#     user_id: 2,
#     name: "Cranberry Sauce",
#     image: "https://www.lifeisbutadish.com/wp-content/uploads/2019/11/4-Ingredient-Homemade-Cranberry-Sauce-3.jpg",
#     cooktime: 15,
#     ingredients: "350g fresh cranberries, 150g cane sugar, 100g orange juice, 1tsp lemon zest",
#     directions: "simmer ingredients together on medium heat",
#   },
#   {
#     user_id: 1,
#     name: "Nasu to hikiniku itame",
#     image: "https://img.cpcdn.com/recipes/1203423/750x500cq60/5366e8579ce9c6ca4bb7d19066c1161e?p=1428328336",
#     cooktime: 15,
#     ingredients: "minced meat, chicken stock, chili sauce, eggplant,oyster sauce, hoisin sauce",
#     directions: "add chicken stock to minced meat, simmer eggplant with oyster sauce, hoisin sauce, and chili sauce",
#   },
#   {
#     user_id: 1,
#     name: "Chocolate Dipped Matcha Shortbread Cookies",
#     image: "https://images.food52.com/RT6w8xJkYUvOuzTcmEerMlUBfVk=/1320x880/filters:format(webp)/96c705e7-3529-4f70-b86a-392e5fa6d159--IMG_0113a.jpg",
#     cooktime: 20,
#     ingredients: "2cups all purpose flour, 2tbsp matcha powder, 1cup salted butter, 0.5cup powdered sugar, 200g dark chocolate, 1tsp vegetable oil",
#     directions: "sift flour and matcha into bowl, cream butter and powdered sugar in a separate bowl until light and fluffy, mix the two bowl contents together, gather dough and form a disc to cover with plastic wrap and refrigerate for 30 minutes to chill, roll out dough on floured surface to 0.25in thickness, cut into rounds, place onto baking sheets in the refrigerator for 15minutes, bake cookies for 10 to 12 minutes at 350F, let the cookies cool, combine melted chocolate with oil, dip cookies in chocolate and drain off excess, refrigerate for 10 minutes. dust with matcha powder",
#   },
# ])

# Tag.create!([
#   { user_id: "1", name: "dessert" },
#   { user_id: "1", name: "asian" },
#   { user_id: "1", name: "cookie" },
#   { user_id: "2", name: "soup" },
#   { user_id: "2", name: "pasta" },
#   { user_id: "2", name: "condiment" },
# ])

# RecipeTag.create!([
#   { recipe_id: 1, tag_id: 1 },
#   { recipe_id: 2, tag_id: 1 },
#   { recipe_id: 3, tag_id: 2 },
#   { recipe_id: 4, tag_id: 1 },
#   { recipe_id: 4, tag_id: 2 },
#   { recipe_id: 5, tag_id: 6 },
#   { recipe_id: 6, tag_id: 2 },
#   { recipe_id: 7, tag_id: 1 },
#   { recipe_id: 7, tag_id: 3 },
# ])
