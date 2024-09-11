import 'package:flutter/material.dart';
import 'package:untitled1/components/my_Drawer_Tile.dart';
import 'package:untitled1/pages/settting_page.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _State();
}

class _State extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 182, 236, 214),
      child: Column(
        children: [
          //Icon
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Icon(
              Icons.lock_person_outlined,
              size: 80,
              color: Colors.red,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Divider(),
          ),
          //Home list tile
          MyDrawerTile(
            text: "Home",
            Ontap: () => Navigator.pop(context) ,
            icon: Icons.home,
          ),
          //Setting list tile
          MyDrawerTile(
            text: "Setting",
            Ontap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingPage(),));
            },
            icon: Icons.settings_suggest_outlined,
          ),
          //logout list tile
          const Spacer(),
          MyDrawerTile(
            text: "Log Out",
            Ontap: () {},
            icon: Icons.logout_sharp,
          ),
        ],
      ),
    );
  }
}
