import 'package:flutter/material.dart';

import '../../constant.dart';

class Cartscreen extends StatelessWidget {
  const Cartscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Text(
          'cartscreen',
        ),
      ),
    );
  }
}
