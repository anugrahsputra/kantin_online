import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kantin_online/providers/cart_providers.dart';
import 'package:provider/provider.dart';

import '../constant.dart';
import '../models/cart_model.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final CartModel cart;

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    return Container(
      margin: const EdgeInsets.only(
        left: defaultMargin1,
        right: defaultMargin1,
        bottom: 18,
      ),
      width: MediaQuery.of(context).size.width,
      height: 138,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffE2E2E2),
        ),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: defaultMargin1,
              top: defaultMargin1,
              bottom: 5,
            ),
            child: Row(
              children: [
                Image.network(
                  cart.foodBeverage.img,
                  width: 52,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cart.foodBeverage.name,
                      style: primaryText.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Kategori : ',
                            style: primaryText.copyWith(
                              fontSize: 10,
                              fontWeight: medium,
                              color: const Color(0xff8D8D8D),
                            ),
                          ),
                          TextSpan(
                            text: cart.foodBeverage.category,
                            style: primaryText.copyWith(
                              fontSize: 10,
                              fontWeight: medium,
                              color: blueColor2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Total Produk : ',
                            style: primaryText.copyWith(
                              fontSize: 10,
                              fontWeight: medium,
                              color: const Color(0xff8D8D8D),
                            ),
                          ),
                          TextSpan(
                            text: cart.quantity.toString(),
                            style: primaryText.copyWith(
                              fontSize: 10,
                              fontWeight: medium,
                              color: blueColor2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            color: Color(0xffE8E8E8),
            thickness: 1,
          ),
          Container(
            margin: const EdgeInsets.only(
              left: defaultMargin1,
              right: defaultMargin1,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Total Harga',
                      style: primaryText.copyWith(
                        fontSize: 10,
                        fontWeight: medium,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Rp ${cart.foodBeverage.price * cart.quantity}',
                      style: primaryText.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    cartProvider.removeCart(cart.id);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    width: 31,
                    height: 31,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0xffECECEC),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/trash.svg',
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
}
