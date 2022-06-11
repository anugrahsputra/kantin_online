class ProductModel {
  int? id;
  String? name;
  String? category;
  String? address;
  String? img;
  String? description;
  int? totalStock;
  int? stockLeft;
  int? price;

  ProductModel({
    required this.id,
    required this.name,
    required this.category,
    required this.address,
    required this.img,
    required this.description,
    required this.totalStock,
    required this.stockLeft,
    required this.price,
  });
}
