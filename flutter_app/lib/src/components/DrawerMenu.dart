import 'package:flutter/material.dart';
import 'package:flutter_app/src/components/drawer_item.dart';
//import 'package:flutter_app/components/bottom_navigation_bar.dart';

class DrawerMenu extends StatelessWidget {
  // final VoidCallback onClick;

  // const DrawerMenu({Key key, this.onClick}) : super(key: key);
  DrawerMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = "shoikat";
    String email = "Shoikat.cse@gmail.com";

    return new Drawer(
      child: new ListView(
        children: <Widget>[
          // Drawer header
          new UserAccountsDrawerHeader(
            accountName: Text(name),
            accountEmail: Text(email),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: new BoxDecoration(color: Colors.red),
          ),

          // Drawer body
          DrawerItem(title: 'Home', icon: Icons.home),
          DrawerItem(title: 'My account', icon: Icons.person),
          DrawerItem(
            title: 'Food',
            icon: Icons.fastfood,
            iconColor: Colors.red,
          ),
          // _buildDrawerListItem(context, 'Home', Icons.home),
          DrawerItem(title: 'login', icon: Icons.person),
          DrawerItem(title: 'Gym', icon: Icons.fitness_center),
          DrawerItem(title: 'Diet Plan', icon: Icons.free_breakfast),
          DrawerItem(title: 'Food', icon: Icons.fastfood),
          DrawerItem(title: 'BIM', icon: Icons.toll),
          DrawerItem(title: 'shop', icon: Icons.add_shopping_cart),
          DrawerItem(title: 'Tutorial', icon: Icons.assignment),
          Divider(),
          // menu
          DrawerItem(
              title: 'Settings', icon: Icons.settings, iconColor: Colors.blue),
          DrawerItem(title: 'About', icon: Icons.help, iconColor: Colors.green),
          DrawerItem(title: 'Contact', icon: Icons.phone),
        ],
      ),
    );
  }

  // buid drawer list item

  // Widget _buildDrawerListItem(
  //     BuildContext context, String title, IconData icon) {
  //   // String icone =icon.toString();
  //   return InkWell(
  //     onTap: () => Navigator.of(context).pushNamed('/$title'),
  //     child: ListTile(
  //       title: Text(title),
  //       leading: Icon(icon),
  //     ),
  //   );
  // }

  // Widget _buildDrawerMenuItem(
  //     BuildContext context, String title, IconData icon, Color iconColor) {
  //   // String icone =icon.toString();
  //   return InkWell(
  //     onTap: () => Navigator.of(context).pushNamed('/$title'),
  //     child: ListTile(
  //       title: Text(title),
  //       leading: Icon(icon, color: iconColor),
  //     ),
  //   );
  // }
}
