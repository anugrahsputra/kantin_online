import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kantin_online/constant.dart';
import 'package:provider/provider.dart';

import '../providers/auth_provider.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController(text: '');

  TextEditingController usernameController = TextEditingController(text: '');

  TextEditingController numberController = TextEditingController(text: '');

  TextEditingController emailController = TextEditingController(text: '');

  TextEditingController passwordController = TextEditingController(text: '');

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleSignUp() async {
      if (await authProvider.register(
        name: nameController.text,
        username: usernameController.text,
        phoneNumber: numberController.text,
        email: emailController.text,
        password: passwordController.text,
      )) {
        Navigator.pushNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: blueColor1,
            content: Text(
              'Register Failed!',
              textAlign: TextAlign.center,
            ),
          ),
        );
      }
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
          controller: nameController,
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

    Widget usernameInput() {
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
          controller: usernameController,
          keyboardType: TextInputType.text,
          decoration: InputDecoration.collapsed(
            hintText: 'Username',
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
          controller: numberController,
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
          controller: emailController,
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
          controller: passwordController,
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
                padding:
                    const EdgeInsets.symmetric(horizontal: defaultPadding1),
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
          onPressed: handleSignUp,
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

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          logo(),
          header(context),
          nameInput(),
          usernameInput(),
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
}
