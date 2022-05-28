import 'package:kantin_online/models/fb_model.dart';

class CartModel {
  int id;
  FoodBeverageModel foodBeverage;
  int quantity;

  CartModel({
    required this.id,
    required this.foodBeverage,
    required this.quantity,
  });

  int getTotalPrice() {
    return foodBeverage.price * quantity;
  }
}
