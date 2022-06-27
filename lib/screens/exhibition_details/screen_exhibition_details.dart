import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lpsvn_general/configs/theme.dart';
import 'package:lpsvn_general/screens/art/screen_art.dart';
import 'package:lpsvn_general/screens/youtube/screen_youtube_player.dart';

import '../../dummy/dummy_exhibition.dart';

class ScreenExhibitionDetails extends StatelessWidget {
  const ScreenExhibitionDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double halfScreenWidth = Get.width / 2.0;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Image.asset(
                'assets/images/def_ex_youtube.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: sectionSpacingNormal,
                right: sectionSpacingNormal,
                top: sectionSpacingBig,
                bottom: sectionSpacingBig,
              ),
              child: Text(
                description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: textSizeSmall, color: defaultColorContra),
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(const ScreenYoutubePlayer()),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: sectionSpacingNormal,
                  right: sectionSpacingNormal,
                ),
                child: Stack(children: [
                  SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Image.asset(
                      'assets/images/def_ex_youtube.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Positioned(
                      bottom: 7,
                      right: 0,
                      child: Container(
                        color: defaultColorContra.withOpacity(0.7),
                        height: 35,
                        width: 100,
                        child: Image.asset(
                          'assets/icons/youtube_logo.png',
                          fit: BoxFit.fill,
                        ),
                      )),
                ]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: sectionSpacingNormal,
                right: sectionSpacingNormal,
                top: sectionSpacingSmall,
                bottom: sectionSpacingBig,
              ),
              child: Text(
                descriptionArt,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: textSizeSmall, color: defaultColorContra),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: sectionSpacingNormal,
                right: sectionSpacingNormal,
              ),
              child: Stack(children: [
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: Image.asset(
                    'assets/images/panorama.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  width: halfScreenWidth,
                  child: const Text(
                    "Panorama Digital Gallery",
                    style: TextStyle(
                      fontSize: textSizeBig,
                      color: defaultColorPrimary,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 7,
                    right: 3,
                    child: Container(
                      color: defaultColorContra.withOpacity(0.7),
                      height: 50,
                      width: 90,
                      child: Image.asset(
                        'assets/icons/icon_360.png',
                        fit: BoxFit.fill,
                      ),
                    )),
              ]),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: sectionSpacingNormal,
                right: sectionSpacingNormal,
                top: sectionSpacingSmall,
                bottom: sectionSpacingBig,
              ),
              child: Text(
                description360,
                maxLines: 10,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: textSizeSmall, color: defaultColorContra),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                  left: sectionSpacingNormal,
                  right: sectionSpacingNormal,
                  top: sectionSpacingSmall,
                  bottom: sectionSpacingBig,
                ),
                child: GestureDetector(
                  onTap: () => Get.to(const ScreenArt()),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: sectionSpacingSmall, right: sectionSpacingSmall),
                    height: 100,
                    width: double.infinity,
                    color: defaultColorThird,
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              boxShadow: const [
                                BoxShadow(
                                  color: defaultColorMajor,
                                  blurRadius: 10,
                                  spreadRadius: 3,
                                  offset: Offset(3, 3),
                                ),
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'assets/images/def_ex_youtube.png',
                              fit: BoxFit.fill,
                              width: 80,
                              height: 80,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Flexible(
                            child: Text(
                          'Lawatan Audio Karya Ibrahim Hussein',
                          style: TextStyle(
                              fontSize: textSizeNormal,
                              color: defaultColorPrimary,
                              fontWeight: FontWeight.w900),
                        )),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.headset_rounded,
                          size: 40,
                          color: defaultColorContra,
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
