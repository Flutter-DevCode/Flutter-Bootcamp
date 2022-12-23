class Recipe {
  String label;
  String imageUrl;

  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);
  static List<Recipe> samples = [
    Recipe('Spaghetti and Meatballs', 'assets/2126711929_ef763de2b3_w.jpg', 4, [
      Ingredient(1, 'box', 'Spaghetti'),
      Ingredient(4, '', 'Frozen Meatballs'),
      Ingredient(0.5, 'jar', 'sauce'),
    ]),
    Recipe('Tomato Soup', 'assets/27729023535_a57606c1be.jpg', 2,
        [Ingredient(1, 'can', 'Tomato Soup')]),
    Recipe('Grilled Cheese', 'assets/3187380632_5056654a19_b.jpg', 1, [
      Ingredient(1, 'slices', 'Cheese'),
      Ingredient(2, 'slices', 'Bread'),
    ]),
    Recipe(
        'Chocolate Chip Cookies', 'assets/15992102771_b92f4cc00a_b.jpg', 24, [
      Ingredient(2, 'cups', 'flour'),
      Ingredient(5, 'cups', 'chocolate chips'),
    ]),
    Recipe('Taco Salad', 'assets/8533381643_a31a99e8a6_c.jpg', 32, [
      Ingredient(2, 'oz', 'taco meat'),
      Ingredient(6.8, 'oz', 'cheese'),
      Ingredient(0.4, 'slices', 'Bread'),
      Ingredient(8.3, 'slices', 'pineapple'),
    ]),
    Recipe('Hawaiian Pizza', 'assets/15452035777_294cefced5_c.jpg', 11, [
      Ingredient(2, 'ham', 'pineapple'),
      Ingredient(44, 'cup', 'Bread'),
      Ingredient(10, 'oz', 'ham'),
    ]),
  ];
}

class Ingredient {
  double quatity;
  String measure;
  String name;

  Ingredient(this.quatity, this.measure, this.name);
}
