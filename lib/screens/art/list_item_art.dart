import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lpsvn_general/configs/theme.dart';
import 'package:lpsvn_general/models/art.dart';

import '../art_details/screen_art_details.dart';

class ListItemArt extends StatelessWidget {
  final Art art;

  const ListItemArt({Key? key, required this.art}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(const ScreenArtDetails()),
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: sectionSpacingSmall,
        ),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [
                    BoxShadow(
                      color: defaultColorMajor,
                      blurRadius: 10,
                      spreadRadius: 3,
                      offset: Offset(3, 3),
                    ),
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  art.img,
                  fit: BoxFit.fill,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  art.author,
                  style: const TextStyle(
                      color: defaultColorContra, fontSize: textSizeSmall),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  art.title,
                  style: const TextStyle(
                      color: defaultColorContra, fontSize: textSizeSmall),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Icon(
                  Icons.headset_rounded,
                  color: defaultColorContra,
                  size: 25,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
