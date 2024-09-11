import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/components/my_cart_tile.dart';
import 'package:untitled1/models/restaurant.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        //cart
        final userCart = restaurant.cart;
        //scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: const Text("cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: userCart.length,
                  itemBuilder: (context, index) {
                    //get individual cart item
                    final cartItem = userCart[index];
                    // return cart item UI
                    return MyCartTile(cartItem: cartItem);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
