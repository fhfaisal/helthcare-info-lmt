import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:helthcare/app/modules/home/views/data_screen.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/home_controller.dart';
import 'drawer.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(title: Obx(() => Text(_getTitle(controller.selectedIndex.value)))),
          drawer: AppDrawer(controller: controller),
          body: _buildBody(controller.selectedIndex.value),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: (index) {
              controller.changeTabIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Iconsax.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.search_normal_1),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.user),
                label: 'Profile',
              ),
            ],
          ),
        ));
  }

// Method to dynamically set the AppBar title
  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'Home Screen';
      case 1:
        return 'Search Screen';
      case 2:
        return 'Profile Screen';
      default:
        return 'Home Screen';
    }
  }

  Widget _buildBody(int index) {
    switch (index) {
      case 0:
        return DataScreen();
      case 1:
        return Center(child: Text('Search Tab'));
      case 2:
        return Center(child: Text('Profile Tab'));
      default:
        return Center(child: Text('Home Tab'));
    }
  }
}
