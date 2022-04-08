import 'package:flutter/material.dart';

import '../constant.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customNav() {
      return ClipRRect(
        child: BottomAppBar(
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: backgroundColor,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/home.png',
                  width: 24,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/search_notactive.png',
                  width: 24,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/cart_notactive.png',
                  width: 24,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/user_notactive.png',
                  width: 24,
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: customNav(),
    );
  }
}
