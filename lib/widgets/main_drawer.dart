import 'package:flutter/material.dart';

import '../screens/settings_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildListTile(String title, IconData icon, Function() onTap) {
      return ListTile(
        leading: Icon(
          icon,
          size: 30,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_right_rounded,
          size: 35,
        ),
        onTap: onTap,
      );
    }

    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: const Text(
              'Cooking Up!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'Metrophobic',
              ),
            ),
          ),
          const SizedBox(height: 20),
          buildListTile(
            'Meals',
            Icons.restaurant_menu_outlined,
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          const Divider(height: 16, thickness: 1),
          buildListTile(
            'Settings',
            Icons.settings,
            () {
              Navigator.of(context)
                  .pushReplacementNamed(SettingsScreen.routeName);
            },
          ),
          const Divider(height: 16, thickness: 1),
        ],
      ),
    );
  }
}
