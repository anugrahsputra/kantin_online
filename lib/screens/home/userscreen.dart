import 'package:flutter/material.dart';

import '../../constant.dart';

class Userscreen extends StatelessWidget {
  const Userscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          left: defaultMargin2,
          bottom: defaultMargin1,
          top: defaultMargin2,
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/default_profilepic.png',
              width: 39,
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Anugrah Surya Putra',
                  style: primaryText.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  'putra.183040095@mail.unpas.ac.id',
                  style: primaryText.copyWith(
                    fontSize: 10,
                    color: const Color(0xff808080),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget akun() {
      return Container(
        margin:
            const EdgeInsets.only(left: defaultMargin2, right: defaultMargin2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Akun',
              style: primaryText.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 136,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xffE2E2E2),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: defaultMargin1, top: 13, bottom: 13),
                      child: Text(
                        'Edit Profil',
                        style: primaryText.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color(0xffE2E2E2),
                    height: 1,
                    thickness: 1,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: defaultMargin1, vertical: 13),
                      child: Text(
                        'Wishlist',
                        style: primaryText.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color(0xffE2E2E2),
                    height: 1,
                    thickness: 1,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: defaultMargin1, vertical: 13),
                      child: Text(
                        'Bantuan',
                        style: primaryText.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget general() {
      return Container(
        margin: const EdgeInsets.only(
          left: defaultMargin2,
          right: defaultMargin2,
          top: defaultMargin2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'General',
              style: primaryText.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 136,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xffE2E2E2),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: defaultMargin1, top: 13, bottom: 13),
                      child: Text(
                        'Kebijakan Privasi',
                        style: primaryText.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color(0xffE2E2E2),
                    height: 1,
                    thickness: 1,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: defaultMargin1, vertical: 13),
                      child: Text(
                        'Tentang Kami',
                        style: primaryText.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color(0xffE2E2E2),
                    height: 1,
                    thickness: 1,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: defaultMargin1, vertical: 13),
                      child: Text(
                        'Hubungi Kami',
                        style: primaryText.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            header(),
            akun(),
            general(),
          ],
        ),
      ),
    );
  }
}
