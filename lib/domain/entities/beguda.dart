class Beguda {
  final String name; // Nom de la beguda
  final String
  description; // Descripció amb ingredients
  final String? tipus;
  final List<String>
  allergens; // Alèrgens
  final double price; // Preu
  final int calories; // Calories
  final bool
  isAlcoholic; // Si és alcohòlica
  final String?
  additionalInfo; // Qualsevol informació addicional

  Beguda({
    required this.name,
    required this.description,
    this.tipus,
    required this.allergens,
    required this.price,
    required this.calories,
    required this.isAlcoholic,
    this.additionalInfo,
  });

  @override
  String toString() {
    return 'Beguda(name: $name, description: $description, tipus: $tipus, allergens: $allergens, price: $price, calories: $calories, isAlcoholic: $isAlcoholic, additionalInfo: $additionalInfo)';
  }
}
