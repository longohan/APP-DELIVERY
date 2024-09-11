import 'package:flutter/material.dart';

class MyDrawerTile extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Function()? Ontap;

  const MyDrawerTile({
    super.key,
    required this.text,
    required this.Ontap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: ListTile(
        title: Text(text,
          style: const TextStyle(color:Colors.amber,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          ),
        ),
        leading: Icon(icon,
        color: Colors.cyan,
          size: 30,
        ),
        onTap: Ontap,
      ),
    );
  }
}
