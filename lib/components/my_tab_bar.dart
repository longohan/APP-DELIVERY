import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/models/Food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({
    super.key,
    required this.tabController,
  });
List<Tab> _buildCategoryTabs()
{
   return FoodCategores.values.map((categores) {
     return Tab(
       text: categores.toString().split('.').last,
     );
   }).toList();
}
  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: _buildCategoryTabs(),
    );
  }
}
