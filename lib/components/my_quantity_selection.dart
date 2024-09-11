import 'package:flutter/material.dart';
import 'package:untitled1/models/Food.dart';

class MyQuantitySelection extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const MyQuantitySelection({
    super.key,
    required this.food,
    required this.quantity,
    required this.onDecrement,
    required this.onIncrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: onDecrement,
                  child: Icon(
                    Icons.remove_circle_outline,
                    size: 20,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Center(
                        child: Text(
                          quantity.toString(),
                        ),
                    ),
                ),
                GestureDetector(
                  onTap: onIncrement,
                  child: Icon(
                    Icons.add_circle_outline,
                    color: Theme.of(context).colorScheme.primary,
                    size: 20,
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
