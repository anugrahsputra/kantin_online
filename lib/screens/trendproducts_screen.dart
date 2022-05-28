import 'package:flutter/material.dart';
import 'package:kantin_online/widget/category.dart';
import 'package:kantin_online/widget/trendproduct_card.dart';
import 'package:provider/provider.dart';

import '../constant.dart';
import '../providers/fb_provider.dart';

class TrendProducts extends StatelessWidget {
  const TrendProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FoodBeverageProvider fbProvider = Provider.of<FoodBeverageProvider>(context);

    Widget category() {
      return Container(
        margin: const EdgeInsets.symmetric(
          vertical: defaultMargin1,
          horizontal: defaultMargin1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pilih sesuai Kategori',
              style: primaryText.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            const Category(),
          ],
        ),
      );
    }

    Widget banner() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: defaultMargin1),
        height: 167,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/banner.png',
            ),
          ),
        ),
      );
    }

    Widget trendProductTitle() {
      return Container(
        margin: const EdgeInsets.only(
          left: defaultMargin1,
          right: defaultMargin1,
          top: defaultMargin1,
        ),
        child: Text(
          'Menu Baru',
          style: primaryText.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget trendProduct() {
      // ignore: sized_box_for_whitespace
      return Container(
        height: MediaQuery.of(context).size.height,
        child: GridView.builder(
          padding: const EdgeInsets.only(
            top: 15,
            left: defaultMargin1,
            right: defaultMargin1,
          ),
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 32,
            crossAxisSpacing: 24,
            childAspectRatio: 6 / 7,
          ),
          itemBuilder: (context, index) => TrendCard(fbModel: fbProvider.fbs[index],),
          itemCount: fbProvider.fbs.length,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: color5,
        ),
        title: const Text('Explore'),
        titleTextStyle: primaryText.copyWith(
          fontSize: 18,
          fontWeight: semiBold,
          color: color5,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            category(),
            banner(),
            trendProductTitle(),
            trendProduct(),
          ],
        ),
      ),
    );
  }
}
