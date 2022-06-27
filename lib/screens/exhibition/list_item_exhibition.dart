import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lpsvn_general/configs/theme.dart';
import 'package:lpsvn_general/screens/exhibition_details/screen_exhibition_details.dart';

class ListItemExhibition extends StatelessWidget {
  final String img;
  final String status;

  const ListItemExhibition(
      {super.key, required this.img, required this.status});

  @override
  Widget build(BuildContext context) {
    double halfScreenWidth = Get.width / 2;

    return GestureDetector(
      onTap: () => Get.to(const ScreenExhibitionDetails()),
      child: Padding(
        padding: const EdgeInsets.only(
          left: sectionSpacingSmall,
          right: sectionSpacingSmall,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: sectionSpacingNormal,
            ),
            Image.network(
              img,
              fit: BoxFit.fill,
            ),
            Container(
              height: 40,
              width: halfScreenWidth,
              color: defaultColorPrimary,
              child: Center(
                child: Text(
                  status,
                  style: const TextStyle(
                      fontSize: textSizeNormal,
                      color: defaultColorContra,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            const SizedBox(
              height: sectionSpacingNormal,
            ),
          ],
        ),
      ),
    );
  }
}
