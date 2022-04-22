import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constant.dart';
import '../../widget/search_result_card.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleBar() {
      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: defaultMargin1,
          vertical: defaultMargin1,
        ),
        child: Text(
          'Pencarian',
          style: primaryText.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget searchBox() {
      return Container(
        margin: const EdgeInsets.only(
          left: defaultMargin1,
          right: defaultMargin1,
        ),
        width: MediaQuery.of(context).size.width,
        height: 44,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xffE1E1E1),
            width: 0.5,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(33),
        ),
        child: TextField(
          style: primaryText.copyWith(
            fontSize: 11,
            fontWeight: light,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Align(
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: SvgPicture.asset(
                'assets/icons/search.svg',
                width: 14,
              ),
            ),
            hintText: 'Cari dikantin unpas',
            hintStyle: primaryText.copyWith(
              fontSize: 11,
              fontWeight: light,
            ),
          ),
        ),
      );
    }

    Widget mostSearched() {
      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: defaultMargin1,
          vertical: defaultMargin1,
        ),
        child: Text(
          'Paling banyak dicari',
          style: primaryText.copyWith(
            fontSize: 12,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget searchResult() {
      return Container(
        margin: const EdgeInsets.only(
          left: defaultMargin1,
          top: defaultMargin1,
        ),
        child: Text(
          'Hasil pencarian',
          style: primaryText.copyWith(
            fontSize: 12,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          titleBar(),
          searchBox(),
          // mostSearched(),
          searchResult(),
          const ResultCard(),
        ],
      ),
    );
  }
}
