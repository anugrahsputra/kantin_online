import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'constant.dart';
import 'providers/page_provider.dart';
import 'screens/mainscreen.dart';
import 'screens/newproducts_screen.dart';
import 'screens/sign_in_screeen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/trendproducts_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: barColor,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: backgroundColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PageProvier(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SignIn(),
          '/sign-up': (context) => const SignUp(),
          '/home': (context) => const Mainscreen(),
          '/new-product': (context) => const NewProducts(),
          '/trend-product': (context) => const TrendProducts()
        },
      ),
    );
  }
}
