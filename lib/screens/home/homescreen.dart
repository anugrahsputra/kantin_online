import 'package:flutter/material.dart';
import 'package:kantin_online/constant.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Text(
          'homescreen',
        ),
      ),
    );
  }
}
