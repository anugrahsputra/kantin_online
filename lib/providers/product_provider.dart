import 'package:flutter/material.dart';
import 'package:kantin_online/data/product_data.dart';

import '../models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> _products = productData;
  List<ProductModel> get products => _products;

  set product(List<ProductModel> products) {
    _products = products;
    notifyListeners();
  }

  search(String query) {
    _products = products;
    products.where((product) {
      final name = product.name!.toLowerCase();
      final category = product.category.name.toLowerCase();
      final searchLower = query.toLowerCase();

      return name.contains(searchLower) || category.contains(searchLower);
    }).toList();

    notifyListeners();
  }
}
