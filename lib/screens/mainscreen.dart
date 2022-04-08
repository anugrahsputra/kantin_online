// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:kantin_online/providers/page_provider.dart';
import 'package:kantin_online/screens/home/cartscreen.dart';
import 'package:kantin_online/screens/home/homescreen.dart';
import 'package:kantin_online/screens/home/searchscreen.dart';
import 'package:kantin_online/screens/home/userscreen.dart';
import 'package:provider/provider.dart';

import '../constant.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    PageProvier pageProvier = Provider.of<PageProvier>(context);

    Widget customNav() {
      return ClipRRect(
        child: BottomAppBar(
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            elevation: 0,
            currentIndex: pageProvier.currentIndex,
            onTap: (index) {
              pageProvier.currentIndex = index;
            },
            backgroundColor: backgroundColor,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: pageProvier.currentIndex == 0
                    ? Image.asset(
                        'assets/icons/home.png',
                        width: 24,
                      )
                    : Image.asset(
                        'assets/icons/home_notactive.png',
                        width: 24,
                      ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: pageProvier.currentIndex == 1
                    ? Image.asset(
                        'assets/icons/search.png',
                        width: 24,
                      )
                    : Image.asset(
                        'assets/icons/search_notactive.png',
                        width: 24,
                      ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: pageProvier.currentIndex == 2
                    ? Image.asset(
                        'assets/icons/cart.png',
                        width: 24,
                      )
                    : Image.asset(
                        'assets/icons/cart_notactive.png',
                        width: 24,
                      ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: pageProvier.currentIndex == 3
                    ? Image.asset(
                        'assets/icons/user.png',
                        width: 24,
                      )
                    : Image.asset(
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

    Widget body() {
      switch (pageProvier.currentIndex) {
        case 0:
          return const Homescreen();
          break;
        case 1:
          return const Searchscreen();
          break;
        case 2:
          return const Cartscreen();
          break;
        case 3:
          return const Userscreen();
          break;
        default:
          return const Homescreen();
      }
    }

    return Scaffold(
      bottomNavigationBar: customNav(),
      backgroundColor: backgroundColor,
      body: body(),
    );
  }
}
