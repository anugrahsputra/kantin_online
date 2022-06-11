import 'package:kantin_online/models/product_model.dart';

class CartModel {
  int id;
  ProductModel products;
  int quantity;

  CartModel({
    required this.id,
    required this.products,
    required this.quantity,
  });

  int getTotalPrice() {
    return products.price! * quantity;
  }
}
