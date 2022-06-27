import 'package:get/get.dart';
import 'package:lpsvn_general/screens/nag_friend/screen_nag_friend.dart';
import 'package:lpsvn_general/screens/rules/screen_rule.dart';

class TicketsController extends GetxController {
  List<String> tickets = [
    "https://picsum.photos/id/689/400/200",
    "https://picsum.photos/id/383/200/200",
    "https://picsum.photos/id/948/200/300",
  ];

  void toRuleScreen() {
    Get.to(const ScreenRule());
  }

  void toNagFriendScreen() {
    Get.to(
      const ScreenNagFriend(),
    );
  }
}
