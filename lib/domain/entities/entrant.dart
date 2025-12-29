class Entrant {
  final String name; // Nom de l'entrant
  final String
  description; // Descripció amb ingredients
  final String? tipus;
  final List<String>
  allergens; // Alèrgens
  final double price; // Preu
  final int calories; // Calories
  final List<String>
  dietType; // Tipus de dieta (ex: vegà, sense gluten, etc.)
  final String?
  additionalInfo; // Qualsevol informació addicional

  Entrant({
    required this.name,
    required this.description,
    this.tipus,
    required this.allergens,
    required this.price,
    required this.calories,
    required this.dietType,
    this.additionalInfo,
  });

  @override
  String toString() {
    return 'Entrant(name: $name, description: $description, tipus: $tipus, allergens: $allergens, price: $price, calories: $calories, dietType: $dietType, additionalInfo: $additionalInfo)';
  }
}
