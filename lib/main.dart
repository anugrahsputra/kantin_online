import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kantin_online/constant.dart';
import 'package:kantin_online/screens/home/sign_up_screen.dart';
import 'package:kantin_online/screens/sign_in_screeen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: backgroundColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SignIn(),
        '/sign-up': (context) => const SignUp(),
      },
    );
  }
}
