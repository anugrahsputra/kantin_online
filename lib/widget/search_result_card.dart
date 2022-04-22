import 'package:flutter/material.dart';

import '../constant.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: defaultMargin1,
        right: defaultMargin1,
        top: defaultMargin1,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding1,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(-1, -1),
            blurRadius: 5,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(1, 1),
            blurRadius: 5,
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width,
      height: 74,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hazelnut Coffee',
            style: primaryText.copyWith(
              fontSize: 13,
            ),
          ),
          Image.asset(
            'assets/images/kopi.png',
            width: 36,
          ),
        ],
      ),
    );
  }
}
