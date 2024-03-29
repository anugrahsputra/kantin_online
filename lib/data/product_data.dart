import '../models/category_model.dart';
import '../models/product_model.dart';

final productData = [
  ProductModel(
    id: 1,
    name: 'Cireng Rujak',
    category: CategoryModel(id: 1, name: 'Makanan Ringan'),
    address: 'Cimahi, Jawa Barat',
    totalStock: 100,
    stockLeft: 100,
    price: 17500,
    img: 'assets/images/cireng.png',
    description: 'Dibuat dari tepung tapioka pilihan',
  ),
  ProductModel(
    id: 2,
    name: 'Hazelnut Coffee',
    category: CategoryModel(id: 2, name: 'Aneka Kopi'),
    address: 'Cimahi, Jawa Barat',
    totalStock: 100,
    stockLeft: 100,
    price: 20000,
    img: 'assets/images/hazelnut.png',
    description: 'Kopi Espresso, Susu UHT dan Syrup Huzelnut',
  ),
  ProductModel(
    id: 3,
    name: 'Java Brown Sugar Coffee',
    category: CategoryModel(id: 3, name: 'Aneka Kopi'),
    address: 'Cimahi, Jawa Barat',
    totalStock: 100,
    stockLeft: 100,
    price: 25000,
    img: 'assets/images/javabrown.png',
    description: 'Kopi Espresso, Susu UHT dan Syrup Huzelnut',
  ),
  ProductModel(
    id: 4,
    name: 'Cireng Mantap',
    category: CategoryModel(id: 4, name: 'Makanan Ringan'),
    address: 'Cimahi, Jawa Barat',
    totalStock: 100,
    stockLeft: 100,
    price: 15000,
    img: 'assets/images/cirengmantap.png',
    description: 'Dibuat dari tepung tapioka pilihan',
  ),
  ProductModel(
    id: 5,
    name: 'Cireng Rujak Mantap',
    category: CategoryModel(id: 5, name: 'Makanan Ringan'),
    address: 'Cimahi, Jawa Barat',
    totalStock: 100,
    stockLeft: 100,
    price: 23000,
    img: 'assets/images/cireng.png',
    description: 'Dibuat dari tepung tapioka pilihan',
  ),
  ProductModel(
    id: 6,
    name: 'Cireng Mantap 2',
    category: CategoryModel(id: 6, name: 'Makanan Ringan'),
    address: 'Cimahi, Jawa Barat',
    totalStock: 100,
    stockLeft: 100,
    price: 15000,
    img: 'assets/images/cirengmantap2.png',
    description: 'Dibuat dari tepung tapioka pilihan',
  ),
];
