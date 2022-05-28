class FoodBeverageModel {
  int id;
  String name;
  String category;
  String address;
  String img;
  int totalStock;
  int stockLeft;
  int price;

  FoodBeverageModel({
    required this.id,
    required this.name,
    required this.category,
    required this.address,
    required this.img,
    required this.totalStock,
    required this.stockLeft,
    required this.price,
  });
}
