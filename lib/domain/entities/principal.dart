class Principal {
  final String
  name; // Nom del plat principal
  final String
  description; // Descripció amb ingredients
  final String? tipus;
  final List<String>
  allergens; // Alèrgens
  final double price; // Preu
  final int calories; // Calories
  final List<String>
  dietType; // Tipus de dieta
  final String?
  additionalInfo; // Qualsevol informació addicional
  final String? img;

  Principal({
    required this.name,
    required this.description,
    this.tipus,
    required this.allergens,
    required this.price,
    required this.calories,
    required this.dietType,
    this.additionalInfo,
    this.img,
  });

  @override
  String toString() {
    return 'Principal(name: $name, description: $description, tipus: $tipus, allergens: $allergens, price: $price, calories: $calories, dietType: $dietType, additionalInfo: $additionalInfo)';
  }
}
