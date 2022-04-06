import 'package:flutter/material.dart';

import '../constant.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          logo(),
          header(context),
        ],
      ),
    );
  }

  SafeArea logo() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(
          left: defaultMargin1,
          top: defaultMargin2,
        ),
        height: 60,
        child: Image.asset('assets/images/logo_kantinvirtual_splash.png'),
      ),
    );
  }

  Widget header(context) {
    return Container(
      margin: const EdgeInsets.only(top: 69),
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            'Masuk',
            style: primaryText.copyWith(
              color: color5,
              fontWeight: semiBold,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: defaultMargin2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Belum Punya Akun? ',
                style: primaryText.copyWith(
                  color: color5,
                  fontWeight: medium,
                  fontSize: 12,
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/sign-up'),
                child: Text(
                  'Daftar Sekarang!',
                  style: primaryText.copyWith(
                    color: blueColor1,
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
