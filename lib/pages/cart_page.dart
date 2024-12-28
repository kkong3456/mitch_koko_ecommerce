import 'package:flutter/material.dart';
import 'package:mitch_koko_ecommerce/components/cart_item.dart';
import 'package:mitch_koko_ecommerce/models/cart.dart';
import 'package:mitch_koko_ecommerce/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Cart',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: value.userCart.length,
              itemBuilder: (context, index) {
                //get individual shoe
                Shoe individualShoe = value.getUserCart()[index];
                //return the cart item
                return CartItem(
                  shoe: individualShoe,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
