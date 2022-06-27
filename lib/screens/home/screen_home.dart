import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lpsvn_general/configs/theme.dart';
import 'package:lpsvn_general/controllers/bottom_nav_controller.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
      autoRemove: false,
      init: BottomNavController(),
      builder: (bottomNavController) => Scaffold(
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 3.0,
                spreadRadius: 1,
                offset: Offset(0, 2))
          ]),
          child: BottomNavigationBar(
            elevation: 10,
            currentIndex: bottomNavController.currentIndex,
            onTap: (index) => bottomNavController.onTapped(index),
            items: const [
              BottomNavigationBarItem(
                  backgroundColor: defaultColorThird,
                  icon: Icon(Icons.event),
                  label: "Activity"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.announcement_outlined),
                  label: "Announcement"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.extension_sharp), label: "Exhibition"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.contact_phone_outlined), label: "Contact"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.airplane_ticket), label: "Ticket")
            ],
          ),
        ),
        body: bottomNavController.screens[bottomNavController.currentIndex],
      ),
    );
  }
}
