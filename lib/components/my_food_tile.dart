import 'package:flutter/material.dart';
import 'package:untitled1/models/Food.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final void Function()? Ontap;

  const MyFoodTile({
    super.key,
    required this.food,
    required this.Ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: Ontap,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('\$${food.price}'),
                      Text(food.description),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    food.imagePath,
                    height: 120,
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(color:  Theme.of(context).colorScheme.primary),
      ],
    );
  }
}
