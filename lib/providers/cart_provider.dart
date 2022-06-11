import 'package:flutter/material.dart';

import '../models/cart_model.dart';
import '../models/product_model.dart';

class CartProvider with ChangeNotifier {
  List<CartModel> _carts = [];

  List<CartModel> get carts => _carts;

  set carts(List<CartModel> carts) {
    _carts = carts;
    notifyListeners();
  }

  addCart(ProductModel products) {
    if (productExist(products)) {
      int id =
          _carts.indexWhere((element) => element.products.id == products.id);
      _carts[id].quantity++;
    } else {
      _carts.add(
        CartModel(
          id: _carts.length,
          products: products,
          quantity: 1,
        ),
      );
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
      total += (item.quantity * item.products.price!);
    }
    return total;
  }

  productExist(ProductModel products) {
    if (_carts.indexWhere((element) => element.products.id == products.id) ==
        -1) {
      return false;
    } else {
      return true;
    }
  }
}
