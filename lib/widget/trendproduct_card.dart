import 'package:flutter/material.dart';
import 'package:kantin_online/models/product_model.dart';

import '../constant.dart';
import '../screens/product_detail.dart';

class TrendCard extends StatelessWidget {
  const TrendCard({
    Key? key,
    required this.products,
  }) : super(key: key);

  final ProductModel products;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetail(
              products: products,
            ),
          ),
        );
      },
      child: Container(
        width: 123,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 4,
                offset: const Offset(0, 0)),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network('${products.img}'),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 5),
              child: Text(
                '${products.name}',
                style: primaryText.copyWith(
                  fontSize: 12,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rp. ${products.price}',
                    style: primaryText.copyWith(fontSize: 11),
                  ),
                  Text(
                    '0x',
                    style: primaryText.copyWith(fontSize: 11),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
