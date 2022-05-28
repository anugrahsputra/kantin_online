import 'package:flutter/material.dart';

import 'package:kantin_online/models/fb_model.dart';
import 'package:provider/provider.dart';

import '../constant.dart';
import '../providers/cart_providers.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    Key? key,
    required this.foodBeverageModel,
  }) : super(key: key);

  final FoodBeverageModel foodBeverageModel;

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    Widget banner() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 272,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              foodBeverageModel.img,
            ),
            fit: BoxFit.fill,
            alignment: FractionalOffset.topCenter,
          ),
        ),
      );
    }

    Widget productName() {
      return Padding(
        padding: const EdgeInsets.only(
          left: defaultPadding1,
          top: defaultPadding1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              foodBeverageModel.name,
              style: primaryText.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Text(
                '0 Penilaian | 0 Terjual',
                style: primaryText.copyWith(
                  fontSize: 11,
                  color: const Color(0xff8D8D8D),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget priceTag() {
      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: defaultMargin2,
          vertical: defaultMargin2,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(0xffECECEC),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          'Rp. ${foodBeverageModel.price}',
          style: primaryText.copyWith(
            fontSize: 14,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget productDetails() {
      return Container(
        margin: const EdgeInsets.only(left: defaultMargin2),
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kategori',
                    style: primaryText.copyWith(
                      fontSize: 12,
                      color: const Color(0xff8D8D8D),
                    ),
                  ),
                  Text(
                    'Total Stok',
                    style: primaryText.copyWith(
                      fontSize: 12,
                      color: const Color(0xff8D8D8D),
                    ),
                  ),
                  Text(
                    'Stok Tersisa',
                    style: primaryText.copyWith(
                      fontSize: 12,
                      color: const Color(0xff8D8D8D),
                    ),
                  ),
                  Text(
                    'Dikirm Dari',
                    style: primaryText.copyWith(
                      fontSize: 12,
                      color: const Color(0xff8D8D8D),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foodBeverageModel.category,
                  style: primaryText.copyWith(
                    fontSize: 12,
                  ),
                ),
                Text(
                  foodBeverageModel.totalStock.toString(),
                  style: primaryText.copyWith(
                    fontSize: 12,
                  ),
                ),
                Text(
                  foodBeverageModel.stockLeft.toString(),
                  style: primaryText.copyWith(
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Cimahi, Jawa Barat, Cimahi Selatan',
                  style: primaryText.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget productDescription() {
      return Padding(
        padding: const EdgeInsets.only(
          left: defaultMargin2,
          top: defaultMargin2,
          right: defaultMargin2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deskripsi Produk',
              style: primaryText.copyWith(
                fontSize: 15,
                fontWeight: semiBold,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
              child: Text(
                'Dibuat dari tepung Tapioka pilihan',
                style: primaryText.copyWith(
                  color: const Color(0xff8D8D8D),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding1,
          vertical: defaultPadding1,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                cartProvider.addCart(foodBeverageModel);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: blueColor1,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '+ keranjang',
                  style: primaryText.copyWith(
                    fontWeight: semiBold,
                    color: blueColor1,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 15,
              ),
              decoration: BoxDecoration(
                color: blueColor1,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Beli Langsung',
                style: primaryText.copyWith(
                  fontWeight: semiBold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          banner(),
          productName(),
          priceTag(),
          productDetails(),
          productDescription(),
          const SizedBox(
            height: defaultMargin2,
          ),
          button(),
        ],
      ),
    );
  }
}
