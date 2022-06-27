import 'package:get/get.dart';
import 'package:lpsvn_general/screens/nag_friend/screen_nag_friend.dart';
import 'package:lpsvn_general/screens/rules/screen_rule.dart';

class TicketsController extends GetxController {
  List<String> tickets = [
    "https://picsum.photos/id/689/400/200",
    "https://picsum.photos/id/383/200/200",
    "https://picsum.photos/id/948/200/300",
  ];

  int selectedVisitTimeIndex = 0;

  List<String> visitTimes = [
    "10:00am",
    "12:00pm",
    "2:00pm",
    "4:00pm"
  ];

  void toRuleScreen() {
    Get.to(const ScreenRule());
  }

  void toNagFriendScreen() {
    Get.to(
      const ScreenNagFriend(),
    );
  }

  void selectVisitTime(String value) {
    selectedVisitTimeIndex = visitTimes.indexOf(value);
    update();
  }
}
