import 'package:flutter/material.dart';

import '../constant.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Column(
            children: [
              Container(
                width: 54,
                height: 54,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/category_drinks.png'),
                  ),
                ),
              ),
              Text(
                'Minuman\nBersoda',
                textAlign: TextAlign.center,
                style: primaryText.copyWith(
                  fontWeight: medium,
                  fontSize: 11,
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/kopi');
                },
                child: Container(
                  width: 54,
                  height: 54,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/category_coffee.png'),
                    ),
                  ),
                ),
              ),
              Text(
                'Aneka Kopi\n',
                textAlign: TextAlign.center,
                style: primaryText.copyWith(
                  fontWeight: medium,
                  fontSize: 11,
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/makanan-ringan');
                },
                child: Container(
                  width: 54,
                  height: 54,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/category_snacks.png'),
                    ),
                  ),
                ),
              ),
              Text(
                'Makanan\nRingan',
                textAlign: TextAlign.center,
                style: primaryText.copyWith(
                  fontWeight: medium,
                  fontSize: 11,
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                width: 54,
                height: 54,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/category_food.png'),
                  ),
                ),
              ),
              Text(
                'Makanan\nUtama',
                textAlign: TextAlign.center,
                style: primaryText.copyWith(
                  fontWeight: medium,
                  fontSize: 11,
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                width: 54,
                height: 54,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/category_others.png'),
                  ),
                ),
              ),
              Text(
                'Lainnya\n',
                textAlign: TextAlign.center,
                style: primaryText.copyWith(
                  fontWeight: medium,
                  fontSize: 11,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
