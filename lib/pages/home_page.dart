import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/components/my_Drawer.dart';
import 'package:untitled1/components/my_current_location.dart';
import 'package:untitled1/components/my_description_box.dart';
import 'package:untitled1/components/my_food_tile.dart';
import 'package:untitled1/components/my_sliver_app_bar.dart';
import 'package:untitled1/components/my_tab_bar.dart';
import 'package:untitled1/models/Food.dart';
import 'package:untitled1/models/restaurant.dart';
import 'package:untitled1/pages/food_page.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FoodCategores.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  //chưa hiểu
  List<Food> _filterMenuByCategory(FoodCategores categores, List<Food> fullMenu) {
    return fullMenu.where((food) => food.categores == categores).toList();
  }

//chưa hiểu
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategores.values.map((categores) {
      List<Food> categoryMenu = _filterMenuByCategory(categores, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          //get individual food
          final food = categoryMenu[index];
          //return food tile UI
          return MyFoodTile(
            food: food,
            Ontap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodPage(food: food),
              ),
            ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                //my current location
                const MyCurrentLocation(),
                //description box
                const MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restaurant.menu),
          ),
        ),
      ),
    );
  }
}
