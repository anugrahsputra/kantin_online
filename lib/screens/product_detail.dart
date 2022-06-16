import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:kantin_online/models/product_model.dart';
import 'package:provider/provider.dart';

import '../constant.dart';
import '../providers/cart_provider.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    Key? key,
    required this.products,
  }) : super(key: key);

  final ProductModel products;

  @override
  Widget build(BuildContext context) {
    CartProvider cart = Provider.of<CartProvider>(context);

    Widget banner() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 272,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('${products.img}'),
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
              '${products.name}',
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
          'Rp. ${products.price}',
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
                  products.category.toString(),
                  style: primaryText.copyWith(
                    fontSize: 12,
                  ),
                ),
                Text(
                  products.totalStock.toString(),
                  style: primaryText.copyWith(
                    fontSize: 12,
                  ),
                ),
                Text(
                  products.stockLeft.toString(),
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
                '${products.description}',
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
              onTap: () async {
                cart.addCart(products);
                // showDialog(
                //   context: context,
                //   builder: (BuildContext context) {
                //     Future.delayed(const Duration(seconds: 1), () {
                //       Navigator.of(context).pop();
                //     });
                //     return AlertDialog(
                //       content: const Text(
                //         'Berhasil Ditambahkan',
                //         textAlign: TextAlign.center,
                //       ),
                //       contentTextStyle: primaryText.copyWith(
                //         color: Colors.black,
                //       ),
                //     );
                //   },
                // );
                showFlash(
                    context: context,
                    duration: const Duration(seconds: 1),
                    builder: (context, controller) {
                      return Flash.dialog(
                        controller: controller,
                        borderRadius: BorderRadius.circular(8),
                        backgroundColor: blueColor1,
                        alignment: Alignment.bottomCenter,
                        margin: const EdgeInsets.only(bottom: 100),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Berhasil ditambahkan',
                            style: primaryText.copyWith(color: Colors.white),
                          ),
                        ),
                      );
                    });
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
