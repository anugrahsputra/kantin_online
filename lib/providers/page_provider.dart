import 'package:flutter/material.dart';

class PageProvier with ChangeNotifier {
  final int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set currentIndex(int index) {
    print(currentIndex);
    notifyListeners();
  }
}
