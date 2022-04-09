// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../constant.dart';
import '../providers/page_provider.dart';
import 'home/cartscreen.dart';
import 'home/homescreen.dart';
import 'home/searchscreen.dart';
import 'home/userscreen.dart';

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
                    ? SvgPicture.asset(
                        'assets/icons/home.svg',
                        width: 24,
                      )
                    : SvgPicture.asset(
                        'assets/icons/home_notactive.svg',
                        width: 24,
                      ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: pageProvier.currentIndex == 1
                    ? SvgPicture.asset(
                        'assets/icons/search.svg',
                        width: 24,
                      )
                    : SvgPicture.asset(
                        'assets/icons/search_notactive.svg',
                        width: 24,
                      ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: pageProvier.currentIndex == 2
                    ? SvgPicture.asset(
                        'assets/icons/cart.svg',
                        width: 24,
                      )
                    : SvgPicture.asset(
                        'assets/icons/cart_notactive.svg',
                        width: 24,
                      ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: pageProvier.currentIndex == 3
                    ? SvgPicture.asset(
                        'assets/icons/user.svg',
                        width: 24,
                      )
                    : SvgPicture.asset(
                        'assets/icons/user_notactive.svg',
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
