import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lpsvn_general/screens/activity/screen_activity.dart';
import 'package:lpsvn_general/screens/announcement/screen_announcement.dart';
import 'package:lpsvn_general/screens/contact/screen_contact.dart';
import 'package:lpsvn_general/screens/exhibition/screen_exhibition.dart';
import 'package:lpsvn_general/screens/ticket/screen_ticket.dart';

class BottomNavController extends GetxController {
  int currentIndex = 0; //default screen's index
  int ticketIndex = 4;

  List<Widget> screens = [
    const ScreenActivity(),
    const ScreenAnnouncement(),
    const ScreenExhibition(),
    const ScreenContact(),
    const ScreenTicket()
  ];

  void onTapped(index) {
    if (index == ticketIndex) {
      _toTicketScreen();
      return;
    }

    if (index == currentIndex) {
      return;
    }

    switch (index) {
    }

    //update screen
    currentIndex = index;
    update();
  }

  void _toTicketScreen() {
    Get.to(const ScreenTicket());
  }
}
