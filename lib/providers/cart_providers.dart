import 'package:flutter/material.dart';
import 'package:kantin_online/models/fb_model.dart';

import '../models/cart_model.dart';

class CartProvider with ChangeNotifier {
  List<CartModel> _carts = [];

  List<CartModel> get carts => _carts;

  set carts(List<CartModel> carts) {
    _carts = carts;
    notifyListeners();
  }

  addCart(FoodBeverageModel foodBeverage) {
    if (productExist(foodBeverage)) {
      int index = _carts
          .indexWhere((element) => element.foodBeverage.id == foodBeverage.id);

      _carts[index].quantity++;
    } else {
      _carts.add(CartModel(
          id: _carts.length, foodBeverage: foodBeverage, quantity: 1));
    }

    notifyListeners();
  }

  removeCart(int id) {
    _carts.removeAt(id);
    notifyListeners();
  }

  addQuantity(int id) {
    _carts[id].quantity++;
    notifyListeners();
  }

  reduceQuantity(int id) {
    _carts[id].quantity--;
    if (_carts[id].quantity == 0) {
      _carts.removeAt(id);
    }
    notifyListeners();
  }

  totalItems() {
    int total = 0;
    for (var item in _carts) {
      total += item.quantity;
    }

    return total;
  }

  totalPrice() {
    double total = 0;
    for (var item in _carts) {
      total += (item.quantity * item.foodBeverage.price);
    }
    return total;
  }

  productExist(FoodBeverageModel foodBeverage) {
    if (_carts.indexWhere(
            (element) => element.foodBeverage.id == foodBeverage.id) ==
        -1) {
      return false;
    } else {
      return true;
    }
  }
}
