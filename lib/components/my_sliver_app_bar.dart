import 'package:flutter/material.dart';
import 'package:untitled1/Theme/Themo_provider.dart';
import 'package:untitled1/pages/cart_page.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySliverAppBar({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 350,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        //cart button
        IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage(),));
        }, icon: const Icon(Icons.shopping_cart_outlined))
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text("Sunset Diner"),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        expandedTitleScale: 1,
      ),
    );
  }
}
