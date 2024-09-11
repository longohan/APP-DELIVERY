import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? Ontap;
  final String text;

  const MyButton({
    super.key,
    required this.text,
    required this.Ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Ontap,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.secondary, borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.inversePrimary,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
