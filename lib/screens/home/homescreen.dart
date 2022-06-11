// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constant.dart';
import '../../models/user_model.dart';
import '../../providers/auth_provider.dart';
import '../../providers/fb_provider.dart';
import '../../widget/carousel_image.dart';
import '../../widget/category.dart';
import '../../widget/terbaru_card.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    FoodBeverageProvider fbProvider =
        Provider.of<FoodBeverageProvider>(context);

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
                    greating(),
                    style: primaryText.copyWith(),
                  ),
                  Text(
                    '${user.name}',
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
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage('${user.profilePhotoUrl}'),
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
              onTap: () {
                Navigator.pushNamed(context, '/trend-product');
              },
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
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: defaultMargin2,
              ),
              Row(
                children: fbProvider.fbs
                    .map((fb) => TerbaruCard(fbModel: fb))
                    .toList(),
              ),
            ],
          ),
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
              onTap: () {
                Navigator.pushNamed(context, '/new-product');
              },
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
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: defaultMargin2,
              ),
              Row(
                children: fbProvider.fbs
                    .map((foodBeverage) => TerbaruCard(fbModel: foodBeverage))
                    .toList(),
              ),
            ],
          ),
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
        productTerbaru(),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }

  String greating() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Selamat Pagi,';
    }
    if (hour < 15) {
      return 'Selamat Siang,';
    }
    if (hour < 18) {
      return 'Selamat Sore,';
    }
    return 'Selamat Malam,';
  }
}
