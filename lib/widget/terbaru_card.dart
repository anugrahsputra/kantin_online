import 'package:flutter/material.dart';

import 'package:kantin_online/models/fb_model.dart';

import '../constant.dart';
import '../screens/product_detail.dart';

class TerbaruCard extends StatelessWidget {
  const TerbaruCard({
    Key? key,
    required this.fbModel,
  }) : super(key: key);

  final FoodBeverageModel fbModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetail(foodBeverageModel: fbModel,),
          ),
        );
      },
      child: Container(
        width: 123,
        height: 143,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(fbModel.img),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 5),
              child: Text(
                fbModel.name,
                style: primaryText.copyWith(
                  fontSize: 12,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rp. ${fbModel.price}',
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
