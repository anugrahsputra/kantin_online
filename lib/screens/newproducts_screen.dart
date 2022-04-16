import 'package:flutter/material.dart';

import '../constant.dart';

class NewProducts extends StatelessWidget {
  const NewProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Text('explore new product'),
      ),
    );
  }
}
