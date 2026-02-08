class Beguda {
  final String id; // ID
  final String name; // Nom de la beguda
  final String description; // Descripció amb ingredients
  final String? tipus;
  final List<String> allergens; // Alèrgens
  final double price; // Preu
  final int calories; // Calories
  final bool isAlcoholic; // Si és alcohòlica
  final String? additionalInfo; // Qualsevol informació addicional
  final String? img;

  Beguda({
    required this.id,
    required this.name,
    required this.description,
    this.tipus,
    required this.allergens,
    required this.price,
    required this.calories,
    required this.isAlcoholic,
    this.additionalInfo,
    this.img,
  });

  @override
  String toString() {
    return 'Beguda(id: $id,name: $name, description: $description, tipus: $tipus, allergens: $allergens, price: $price, calories: $calories, isAlcoholic: $isAlcoholic, additionalInfo: $additionalInfo)';
  }
}
