import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/components/my_Button.dart';
import 'package:untitled1/models/restaurant.dart';
import 'package:untitled1/pages/cart_page.dart';
import '../models/Food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({
    super.key,
    required this.food,
  }) {
    //initialize selected addons to be false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  //method to add to cast
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    //close to the current food page to go back to menu

    //format the selected addons
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //image
                Image.asset(widget.food.imagePath),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //food name
                      Text(
                        widget.food.name,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      //food price
                      Text('\$${widget.food.price}'),
                      const SizedBox(
                        height: 10,
                      ),
                      //food description
                      Text(
                        widget.food.description,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.primary,
                        thickness: 3,
                      ),
                      // addon
                      Text(
                        "Add-ons:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.inversePrimary),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: ListView.builder(
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(0),
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: (context, index) {
                            //get individual addon
                            Addon addon = widget.food.availableAddons[index];
                            //return check box UI
                            return CheckboxListTile(
                              title: Text(
                                addon.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text('\$${addon.price.toString()}'),
                              value: widget.selectedAddons[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                      //button -> add to cart
                      const SizedBox(height: 15),
                      MyButton(
                        text: 'Add to cart',
                        Ontap: () {
                          addToCart(widget.food, widget.selectedAddons);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CartPage()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SafeArea(
              child: Opacity(
                opacity: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_circle_left_outlined,
                      size: 40,
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
}
