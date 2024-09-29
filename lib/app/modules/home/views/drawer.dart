import 'package:flutter/material.dart';

import '../controllers/home_controller.dart';
class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            curve: Curves.bounceIn,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Menu', style:Theme.of(context).textTheme.headlineLarge!.apply(color: Colors.white) ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              controller.changeTabIndex(0);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Search'),
            onTap: () {
              controller.changeTabIndex(1);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              controller.changeTabIndex(2);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}