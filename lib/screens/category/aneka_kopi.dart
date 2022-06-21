import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constant.dart';
import '../../providers/product_provider.dart';
import '../../widget/trendproduct_card.dart';

class AnekaKopi extends StatelessWidget {
  const AnekaKopi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductProvider productProvider = Provider.of<ProductProvider>(context);

    Widget banner() {
      return Container(
        margin: const EdgeInsets.only(
          top: defaultMargin2,
        ),
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
          'Menu',
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
        child: GridView(
          padding: const EdgeInsets.only(
            top: 15,
            left: defaultMargin1,
            right: defaultMargin1,
          ),
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.9,
            crossAxisSpacing: defaultMargin1,
            mainAxisSpacing: defaultMargin1,
          ),
          children: productProvider.products
              .where((product) => product.category.name == 'Aneka Kopi')
              .map((product) => TrendCard(
                    products: product,
                  ))
              .toList(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: color5,
        ),
        title: const Text('Aneka Kopi'),
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
            banner(),
            trendProductTitle(),
            trendProduct(),
          ],
        ),
      ),
    );
  }
}
