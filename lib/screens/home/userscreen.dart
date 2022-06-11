import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constant.dart';
import '../../models/user_model.dart';
import '../../providers/auth_provider.dart';

class Userscreen extends StatelessWidget {
  const Userscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          left: defaultMargin2,
          bottom: defaultMargin1,
          top: defaultMargin2,
        ),
        child: Row(
          children: [
            Image.network(
              '${user.profilePhotoUrl}',
              width: 20,
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}',
                  style: primaryText.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  '${user.email}',
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
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xffE2E2E2),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.10),
                    blurRadius: 4.0,
                    offset: const Offset(0, 1),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: defaultMargin1,
                        top: 13,
                        bottom: 13,
                      ),
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
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xffE2E2E2),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.10),
                    blurRadius: 4.0,
                    offset: const Offset(0, 1),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: defaultMargin1,
                        top: 13,
                        bottom: 13,
                      ),
                      width: MediaQuery.of(context).size.height,
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
                      padding: const EdgeInsets.only(
                        left: defaultMargin1,
                        top: 13,
                        bottom: 13,
                      ),
                      width: MediaQuery.of(context).size.height,
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
                      padding: const EdgeInsets.only(
                        left: defaultMargin1,
                        top: 13,
                        bottom: 13,
                      ),
                      width: MediaQuery.of(context).size.height,
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

    Widget logoutButton(context) {
      return Container(
        height: 52,
        width: double.infinity,
        margin: const EdgeInsets.only(
          top: 41,
          left: defaultMargin1,
          right: defaultMargin1,
          bottom: defaultMargin1,
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
          },
          style: TextButton.styleFrom(
            backgroundColor: blueColor2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Logout',
            style: primaryText.copyWith(
              color: Colors.white,
              fontSize: 18,
              fontWeight: bold,
            ),
          ),
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
            const Spacer(),
            logoutButton(context),
          ],
        ),
      ),
    );
  }
}
