import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../widget/carousel_image.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: defaultMargin1,
          left: defaultMargin1,
          right: defaultMargin1,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Selamat Siang,',
                    style: primaryText.copyWith(),
                  ),
                  Text(
                    'Anugrah Surya Putra',
                    style: primaryText.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 32,
              height: 32,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/default_profilepic.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        const CarouselImage(),
      ],
    );
  }
}
