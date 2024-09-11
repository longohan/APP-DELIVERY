import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/components/my_quantity_selection.dart';
import 'package:untitled1/models/cart_item.dart';
import 'package:untitled1/models/restaurant.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).colorScheme.secondary,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  //food image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      cartItem.food.imagePath,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  const SizedBox(width: 10),
                  //name and price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //food name
                      Text(cartItem.food.name),
                      //price
                      Text('\$${cartItem.food.price}'),
                    ],
                  ),
                  //increment or decrement quantity
                  const Spacer(),
                  MyQuantitySelection(
                    food: cartItem.food,
                    quantity: cartItem.quantity,
                    onDecrement: () {
                      restaurant.removeToCart(cartItem);
                    },
                    onIncrement: () {
                      restaurant.addToCart(cartItem.food, cartItem.selectedAddons);
                    },
                  ),
                ],
              ),
            ),
            //addon
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(10),
                children: cartItem.selectedAddons
                    .map(
                      (addon) => Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: FilterChip(
                          label: Row(
                            children: [
                              //addon name
                              Text(addon.name),
                              //addon price
                              Text("\$${addon.price.toString()}"),
                            ],
                          ),
                          shape: StadiumBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary)),
                          onSelected: (value) {},
                          backgroundColor: Theme.of(context).colorScheme.secondary,
                          labelStyle: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontSize: 12),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
