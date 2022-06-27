import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lpsvn_general/configs/theme.dart';
import 'package:lpsvn_general/screens/ticket/popup_booking.dart';

class ListItemVisit extends StatelessWidget {
  final String img;

  const ListItemVisit({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: sectionSpacingSmall, right: sectionSpacingSmall),
      child: Column(
        children: [
          const SizedBox(height: sectionSpacingSmall),
          Image.network(
            img,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: sectionSpacingSmall),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: GestureDetector(
              onTap: () => Get.to(const PopupBooking(), fullscreenDialog: true, opaque: false),
              child: Container(
                height: 40,
                width: double.infinity,
                color: defaultColorAccent,
                child: const Center(
                  child: Text(
                    "Tempah Sekarang",
                    style: TextStyle(
                        fontSize: textSizeNormal,
                        color: defaultColorContra,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: sectionSpacingBig)
        ],
      ),
    );
  }
}
