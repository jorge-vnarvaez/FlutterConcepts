class Recipe {
  String label;
  String imageUrl;

  Recipe(
    this.label,
    this.imageUrl,
  );

  static List<Recipe> samples = [
    Recipe('Empanadas de Queso', 'assets/empanadas.jpg'),
    Recipe('Pan Amasado', 'assets/pan-amasado.jpg'),
    Recipe('Churrascas', 'assets/churrascas.jpg'),
  ];
}
