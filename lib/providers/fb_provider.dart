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
      img: 'assets/images/cireng.png',
      description: 'Dibuat dari tepung tapioka pilihan',
    ),
    FoodBeverageModel(
      id: 2,
      name: 'Hazelnut Coffee',
      category: 'Aneka Kopi',
      address: 'Cimahi, Jawa Barat',
      totalStock: 100,
      stockLeft: 100,
      price: 20000,
      img: 'assets/images/hazelnut.png',
      description: 'Kopi Espresso, Susu UHT dan Syrup Huzelnut',
    ),
    FoodBeverageModel(
      id: 3,
      name: 'Java Brown Sugar Coffee',
      category: 'Aneka Kopi',
      address: 'Cimahi, Jawa Barat',
      totalStock: 100,
      stockLeft: 100,
      price: 25000,
      img: 'assets/images/javabrown.png',
      description: 'Kopi Espresso, Susu UHT dan Syrup Huzelnut',
    ),
    FoodBeverageModel(
      id: 4,
      name: 'Cireng Mantap',
      category: 'Makanan Ringan',
      address: 'Cimahi, Jawa Barat',
      totalStock: 100,
      stockLeft: 100,
      price: 15000,
      img: 'assets/images/cirengmantap.png',
      description: 'Dibuat dari tepung tapioka pilihan',
    ),
    FoodBeverageModel(
      id: 5,
      name: 'Cireng Rujak Mantap',
      category: 'Makanan Ringan',
      address: 'Cimahi, Jawa Barat',
      totalStock: 100,
      stockLeft: 100,
      price: 23000,
      img: 'assets/images/cireng.png',
      description: 'Dibuat dari tepung tapioka pilihan',
    ),
    FoodBeverageModel(
      id: 6,
      name: 'Cireng Mantap 2',
      category: 'Makanan Ringan',
      address: 'Cimahi, Jawa Barat',
      totalStock: 100,
      stockLeft: 100,
      price: 15000,
      img: 'assets/images/cirengmantap2.png',
      description: 'Dibuat dari tepung tapioka pilihan',
    ),
  ];

  List<FoodBeverageModel> get fbs => _fb;

  set foodbeverage(List<FoodBeverageModel> fb) {
    _fb = fb;
    notifyListeners();
  }
}
