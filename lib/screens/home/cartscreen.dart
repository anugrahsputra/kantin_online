import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../constant.dart';

import '../../providers/cart_provider.dart';
import '../../widget/cart_card.dart';
import '../trendproducts_screen.dart';

class Cartscreen extends StatelessWidget {
  const Cartscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartProvider cart = Provider.of<CartProvider>(context);

    Widget title() {
      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: defaultMargin1,
          vertical: defaultMargin1,
        ),
        child: Text(
          'Keranjang',
          style: primaryText.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget cartCount() {
      return Container(
        margin: const EdgeInsets.only(
          left: defaultMargin1,
          right: defaultMargin1,
          bottom: defaultMargin2,
        ),
        padding: const EdgeInsets.only(left: defaultPadding1),
        width: MediaQuery.of(context).size.width,
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          border: Border.all(
            color: const Color(0xffE1E1E1),
            width: 0.5,
            style: BorderStyle.solid,
          ),
        ),
        child: Row(
          children: [
            Text(
              'Total keranjang belanja : ',
              style: primaryText.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
              ),
            ),
            Text(
              cart.totalItems().toString(),
              style: primaryText.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
                color: blueColor2,
              ),
            ),
          ],
        ),
      );
    }

    Widget emptyCart() {
      return Container(
        margin: const EdgeInsets.all(50),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/shoppingcart.png',
                width: 158,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Kamu belum memasukan\nke keranjang',
                style: primaryText.copyWith(fontSize: 18, fontWeight: semiBold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 27,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TrendProducts(),
                  ),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.3,
                  height: 49,
                  decoration: BoxDecoration(
                    color: blueColor1,
                    borderRadius: BorderRadius.circular(17),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        offset: const Offset(1, 0),
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Pesan Makan',
                      style: primaryText.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Column(
        children: [
          ...cart.carts
              .map(
                (cart) => CartCard(cart: cart),
              )
              .toList(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: defaultMargin2),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: blueColor2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        offset: const Offset(1, 0),
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    color: blueColor1,
                  ),
                  child: Text(
                    'Checkout',
                    style: primaryText.copyWith(
                      fontWeight: medium,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }

    return ListView(
      children: [
        title(),
        cartCount(),
        cart.carts.isEmpty ? emptyCart() : content()
      ],
    );
  }
}
