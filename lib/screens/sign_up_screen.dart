import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kantin_online/constant.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          logo(),
          header(context),
          nameInput(),
          numberInput(),
          emailInput(),
          passwordInput(),
          googleSignIn(),
          SizedBox(height: height * 0.10),
          signInButton(context),
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
            'Daftar',
            style: primaryText.copyWith(
              color: color5,
              fontWeight: semiBold,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: defaultMargin2,
          ),
          RichText(
            text: TextSpan(
              text: 'Sudah Punya Akun?',
              style: primaryText.copyWith(
                color: color5,
                fontWeight: medium,
                fontSize: 12,
              ),
              children: [
                TextSpan(
                  text: ' Masuk Sekarang!',
                  style: primaryText.copyWith(
                    color: blueColor1,
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget nameInput() {
    return Container(
      margin: const EdgeInsets.only(
        left: defaultMargin1,
        right: defaultMargin1,
        top: 28,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 16),
      height: 49,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration.collapsed(
          hintText: 'Nama Lengkap',
          hintStyle: primaryText.copyWith(
            color: const Color(0xff8A8A8A),
            letterSpacing: 2,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget numberInput() {
    return Container(
      margin: const EdgeInsets.only(
        left: defaultMargin1,
        right: defaultMargin1,
        top: 15,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 16),
      height: 49,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        keyboardType: TextInputType.phone,
        decoration: InputDecoration.collapsed(
          hintText: 'Nomor WhatsApp',
          hintStyle: primaryText.copyWith(
            color: const Color(0xff8A8A8A),
            letterSpacing: 2,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: const EdgeInsets.only(
        left: defaultMargin1,
        right: defaultMargin1,
        top: 15,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 16),
      height: 49,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration.collapsed(
          hintText: 'Alamat Email',
          hintStyle: primaryText.copyWith(
            color: const Color(0xff8A8A8A),
            letterSpacing: 2,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget passwordInput() {
    return Container(
      margin: const EdgeInsets.only(
        left: defaultMargin1,
        right: defaultMargin1,
        top: 15,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 16),
      height: 49,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration.collapsed(
          hintText: 'Password',
          hintStyle: primaryText.copyWith(
              color: const Color(0xff8A8A8A), letterSpacing: 2, fontSize: 14),
        ),
      ),
    );
  }

  Widget googleSignIn() {
    return Container(
      margin: const EdgeInsets.only(
        top: defaultMargin1,
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            'Atau daftar dengan',
            style: primaryText.copyWith(
              color: const Color(0xff8A8A8A),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(
                top: 7,
                left: defaultMargin1,
                right: defaultMargin1,
              ),
              height: 46,
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding1),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SvgPicture.asset(
                    'assets/icons/icons8-google.svg',
                    height: 26,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Daftar dengan Google',
                    style: primaryText.copyWith(
                      fontWeight: medium,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget signInButton(context) {
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
          Navigator.pushNamed(context, '/home');
        },
        style: TextButton.styleFrom(
          backgroundColor: blueColor2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          'Masuk Sekarang',
          style: primaryText.copyWith(
            color: Colors.white,
            fontSize: 18,
            fontWeight: bold,
          ),
        ),
      ),
    );
  }
}
