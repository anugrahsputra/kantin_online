import 'package:flutter/material.dart';
import 'package:kantin_online/models/fb_model.dart';

class FoodBeverageProvider with ChangeNotifier {
  List<FoodBeverageModel> _fb = [
    FoodBeverageModel(
      id: 1,
      name: 'Cireng Rujak',
      category: 'Makanan Ringan',
      address: 'Cimahi, Jawa Barat',
      totalStock: 100,
      stockLeft: 100,
      price: 17500,
      img: 'https://i.ibb.co/XZvsTsZ/cirengmantap.png',
    ),
    FoodBeverageModel(
      id: 2,
      name: 'Hazelnut Coffee',
      category: 'Aneka Kopi',
      address: 'Cimahi, Jawa Barat',
      totalStock: 100,
      stockLeft: 100,
      price: 20000,
      img: 'https://i.ibb.co/GVM0gz9/javabrown.png',
    ),
    FoodBeverageModel(
      id: 3,
      name: 'Java Brown Sugar Coffee',
      category: 'Aneka Kopi',
      address: 'Cimahi, Jawa Barat',
      totalStock: 100,
      stockLeft: 100,
      price: 25000,
      img: 'https://i.ibb.co/QFHtzBq/Rectangle-9.png',
    ),
    FoodBeverageModel(
      id: 4,
      name: 'Cireng Mantap',
      category: 'Makanan Ringan',
      address: 'Cimahi, Jawa Barat',
      totalStock: 100,
      stockLeft: 100,
      price: 15000,
      img: 'https://i.ibb.co/XZvsTsZ/cirengmantap.png',
    ),
    FoodBeverageModel(
      id: 5,
      name: 'Cireng Rujak Mantap',
      category: 'Makanan Ringan',
      address: 'Cimahi, Jawa Barat',
      totalStock: 100,
      stockLeft: 100,
      price: 23000,
      img: 'https://i.ibb.co/xhNBmPL/cirengmantap2.png',
    ),
  ];

  List<FoodBeverageModel> get fbs => _fb;

  set foodbeverage(List<FoodBeverageModel> fb) {
    _fb = fb;
    notifyListeners();
  }
}
