User.create!([
  {
    name: "Lisa",
    email: "lisa@example.com",
    password: "password",
  },
  {
    name: "Miharu",
    email: "miharu@example.com",
    password: "password",
  },
])

Recipe.create!([
  {
    title: "Banana Bread",
    cooktime: 35,
    image: "https://images.101cookbooks.com/banana-bread-recipe-2019-h.jpg?w=680",
    ingredient: "140g all purpose flour, 50g almond meal,
    100g cane sugar, 1tsp baking powder, 1stick of butter, 2 eggs, 300g bananas",
    direction: "combine all dry ingredients, combine all wet ingredients, mix the dry and the wet, bake at 350F for 30min",
    user_id: 1,
  },
  {
    title: "Lemon Pound Cake",
    cooktime: 40,
    image: "https://www.seasonsandsuppers.ca/wp-content/uploads/2017/05/lemon-loaf800E.jpg",
    ingredient: "100g all purpose flour, 20g almond meal, 80g cane sugar, 1tsp baking powder, 1 stick of butter, 2 eggs, 2tbsp honey, 1.5tbsp lemon juice, 1 lemon worth of zest",
    direction: "combine all dry ingredients, combine all wet ingredients, mix the dry and the wet, bake at 165C for 35min",
    user_id: 1,
  },
  {
    title: "Ni Kabocha",
    cooktime: 10,
    image: "https://www.justonecookbook.com/wp-content/uploads/2019/09/Simmered-Kabocha-5770-I-500x375.jpg",
    ingredient: "400g kabocha, 2tbsp cane sugar, 1tbsp mirin, 1tsp soy sauce",
    direction: "simmer on medium heat for 5min",
    user_id: 2,
  },
  {
    title: "Annin Tofu",
    cooktime: 15,
    image: "https://www.kawalingpinoy.com/wp-content/uploads/2014/12/almond-jello-7.jpg",
    ingredient: "500ml milk, 2tbsp cane sugar, 1tsp almond essence, 2tsp agar agar or 8g gelatin",
    direction: "disolve gelatin in warm water, mix everything together, bring to a boil on medium heat, let it cool to be placed in fridge",
    user_id: 2,
  },
  {
    title: "Cranberry Sauce",
    cooktime: 15,
    image: "https://www.lifeisbutadish.com/wp-content/uploads/2019/11/4-Ingredient-Homemade-Cranberry-Sauce-3.jpg",
    ingredient: "350g fresh cranberries, 150g cane sugar, 100g orange juice, 1tsp lemon zest",
    direction: "simmer ingredients together on medium heat",
    user_id: 1,
  },
  {
    title: "Annin Tofu",
    cooktime: 15,
    image: "https://img.cpcdn.com/recipes/1203423/750x500cq60/5366e8579ce9c6ca4bb7d19066c1161e?p=1428328336",
    ingredient: "minced meat, chicken stock, chili sauce, eggplant,oyster sauce, hoisin sauce",
    direction: "add chicken stock to minced meat, simmer eggplant with oyster sauce, hoisin sauce, and chili sauce",
    user_id: 2,
  },
])

Hashtag.create!([
  { tag: "dessert" },
  { tag: "pasta" },
  { tag: "pasta" },
  { tag: "asian" },
  { tag: "condiment" },
])

RecipeHashtag.create!([
  { recipe_id: 1, hashtag_id: 1 },
  { recipe_id: 2, hashtag_id: 1 },
  { recipe_id: 3, hashtag_id: 3 },
  { recipe_id: 4, hashtag_id: 1 },
  { recipe_id: 4, hashtag_id: 3 },
  { recipe_id: 5, hashtag_id: 4 },
  { recipe_id: 6, hashtag_id: 3 },
])
