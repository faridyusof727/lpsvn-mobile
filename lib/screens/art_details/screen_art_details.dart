import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lpsvn_general/configs/theme.dart';

import '../audio_player/ScreenAudioPlayer.dart';

class ScreenArtDetails extends StatelessWidget {
  const ScreenArtDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(sectionSpacingNormal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network('https://picsum.photos/id/689/400/200'),
              const SizedBox(
                height: sectionSpacingNormal,
              ),
              Image.network('https://picsum.photos/id/699/400/200'),
              const SizedBox(
                height: sectionSpacingBig,
              ),
              const Text(
                "Ibrahim Hussein",
                style: TextStyle(
                  color: defaultColorContra,
                  fontSize: textSizeSmall,
                ),
              ),
              const Text(
                "Why You Are The Way You Are",
                style: TextStyle(
                  color: defaultColorContra,
                  fontSize: textSizeSmall,
                ),
              ),
              const Text(
                "(Mengapa Kamu Begitu)",
                style: TextStyle(
                  color: defaultColorContra,
                  fontSize: textSizeSmall,
                ),
              ),
              const Text(
                "1969",
                style: TextStyle(
                  color: defaultColorContra,
                  fontSize: textSizeSmall,
                ),
              ),
              const Text(
                "Acrylic, ink and printage on canvas",
                style: TextStyle(
                  color: defaultColorContra,
                  fontSize: textSizeSmall,
                ),
              ),
              const Text(
                "195.6 x 121.9 cm",
                style: TextStyle(
                  color: defaultColorContra,
                  fontSize: textSizeSmall,
                ),
              ),
              const Text(
                "Collection of The National Art Gallery Malaysia",
                style: TextStyle(
                  color: defaultColorContra,
                  fontSize: textSizeSmall,
                ),
              ),
              const SizedBox(
                height: sectionSpacingBig,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => Get.to(ScreenAudioPlayer()),
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color: defaultColorContra,
                          borderRadius: BorderRadius.circular(60),
                          boxShadow: const [
                            BoxShadow(
                              color: defaultColorMajor,
                              blurRadius: 10,
                              spreadRadius: 3,
                              offset: Offset(3, 3),
                            ),
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.headset_rounded,
                            color: defaultColorMajor,
                            size: 40,
                          ),
                          Text(
                            "Dengar",
                            style: TextStyle(
                                color: defaultColorMajor,
                                fontSize: textSizeSmall),
                          ),
                          Text(
                            "02.30",
                            style: TextStyle(
                                color: defaultColorMajor,
                                fontSize: textSizeSmall),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: sectionSpacingBig,
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        color: defaultColorContra,
                        borderRadius: BorderRadius.circular(60),
                        boxShadow: const [
                          BoxShadow(
                            color: defaultColorMajor,
                            blurRadius: 10,
                            spreadRadius: 3,
                            offset: Offset(3, 3),
                          ),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.menu_book_rounded,
                          color: defaultColorMajor,
                          size: 60,
                        ),
                        Text(
                          "Baca",
                          style: TextStyle(
                              color: defaultColorMajor,
                              fontSize: textSizeSmall),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
