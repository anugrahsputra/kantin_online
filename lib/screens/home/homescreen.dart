// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:kantin_online/widget/terlaris_card.dart';

import '../../constant.dart';
import '../../widget/carousel_image.dart';
import '../../widget/category.dart';
import '../../widget/terbaru_card.dart';

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

    Widget categories() {
      return Container(
        margin: const EdgeInsets.only(
          top: defaultMargin2,
          right: defaultMargin2,
          left: defaultMargin2,
        ),
        padding: const EdgeInsets.only(bottom: defaultPadding1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kategori',
              style: primaryText.copyWith(
                fontSize: 13,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Category()
          ],
        ),
      );
    }

    Widget productTerlarisTitle() {
      return Container(
        margin: const EdgeInsets.only(
          left: defaultMargin2,
          right: defaultMargin2,
          top: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Terlaris',
              style: primaryText.copyWith(fontWeight: semiBold, fontSize: 13),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Lihat Semua',
                style: primaryText.copyWith(fontWeight: semiBold, fontSize: 11),
              ),
            ),
          ],
        ),
      );
    }

    Widget productTerlaris() {
      return Container(
        height: 160,
        child: ListView.separated(
          padding: const EdgeInsets.only(left: 35, right: 35, top: 13),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          separatorBuilder: (context, _) => const SizedBox(
            width: 15,
          ),
          itemBuilder: (context, index) {
            return const TerlarisCard();
          },
        ),
      );
    }

    Widget productTerbaruTitle() {
      return Container(
        margin: const EdgeInsets.only(
          left: defaultMargin2,
          right: defaultMargin2,
          top: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Terbaru',
              style: primaryText.copyWith(fontWeight: semiBold, fontSize: 13),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Lihat Semua',
                style: primaryText.copyWith(fontWeight: semiBold, fontSize: 11),
              ),
            ),
          ],
        ),
      );
    }

    Widget productTerbaru() {
      return Container(
        height: 160,
        child: ListView.separated(
          padding: const EdgeInsets.only(left: 35, right: 35, top: 13),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          separatorBuilder: (context, _) => const SizedBox(
            width: 15,
          ),
          itemBuilder: (context, index) {
            return const TerbaruCard();
          },
        ),
      );
    }

    return ListView(
      children: [
        header(),
        const CarouselImage(),
        categories(),
        productTerlarisTitle(),
        productTerlaris(),
        productTerbaruTitle(),
        productTerbaru()
      ],
    );
  }
}
