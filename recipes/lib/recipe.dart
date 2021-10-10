class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(
    this.label,
    this.imageUrl,
    this.servings,
    this.ingredients,
  );

  static List<Recipe> samples = [
    Recipe(
      'Empanadas de Queso',
      'assets/empanadas.jpg',
      24,
      [
        Ingredient(1, "kg", "harina"),
        Ingredient(120, "gr", "manteca o margina"),
        Ingredient(1, "cucharadita", "sal"),
        Ingredient(1, "taza", "leche"),
        Ingredient(1, "taza", "agua"),
        Ingredient(200, "gr", "queso mantecoso"),
        Ingredient(1, '', 'Aceite para freir'),
      ],
    ),
    Recipe(
      'Pan Amasado',
      'assets/pan-amasado.jpg',
      20,
      [
        Ingredient(300, "gr", "harina"),
        Ingredient(0.5, "cucharadita", "Sal"),
        Ingredient(20, "gr", "levadura fresca"),
        Ingredient(0.5, "cucharadita", "azúcar"),
        Ingredient(60, "gr", "manteca vegetal, derretida y tibia"),
        Ingredient(150, "ml", "agua tibia (2/3 taza)"),
      ],
    ),
    Recipe(
      'Churrascas',
      'assets/churrascas.jpg',
      8,
      [
        Ingredient(300, "gr", "harina"),
        Ingredient(0.5, "cucharadita", "Polvos de hornear"),
        Ingredient(1, "cucharadita", "Sal"),
        Ingredient(30, "gr", "Manteca o margina, derretida"),
        Ingredient(160, "gr", "Manteca o margina, derretida"),
      ],
    ),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}
