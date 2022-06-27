import 'package:flutter/material.dart';
import 'package:lpsvn_general/configs/theme.dart';
import 'package:lpsvn_general/models/art.dart';
import 'package:lpsvn_general/screens/art/list_item_art.dart';

import '../../dummy/dummy_art.dart';

class ScreenArt extends StatelessWidget {
  const ScreenArt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 60,
              bottom: sectionSpacingBig,
              left: sectionSpacingNormal,
              right: sectionSpacingNormal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    'Lawatan Audio',
                    style: TextStyle(
                      color: defaultColorPrimary,
                      fontSize: textSizeBig,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.headset_rounded,
                    size: 40,
                    color: defaultColorContra,
                  )
                ],
              ),
              const Text(
                'Karya Ibrahim Hussein',
                style: TextStyle(
                  color: defaultColorPrimary,
                  fontSize: textSizeBig,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: sectionSpacingBig,
              ),
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Image.asset(
                  'assets/images/def_ex_youtube.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(
                height: sectionSpacingSmall,
              ),
              const Text(
                description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: defaultColorContra, fontSize: textSizeSmall),
              ),
              const SizedBox(
                height: sectionSpacingBig,
              ),
              ListItemArt(
                  art: Art(
                      id: 1,
                      author: "Ibrahim Hussein",
                      title: "Why You Are The Way You Are",
                      img: "https://picsum.photos/id/383/200/200",
                      audioUrl: "",
                      description: "")),
              ListItemArt(
                  art: Art(
                      id: 1,
                      author: "Ibrahim Hussein",
                      title: "My Father And mThe Astronaut",
                      img: "https://picsum.photos/id/384/200/200",
                      audioUrl: "",
                      description: "")),
              ListItemArt(
                  art: Art(
                      id: 1,
                      author: "Ibrahim Hussein",
                      title: "Genting",
                      img: "https://picsum.photos/id/385/200/200",
                      audioUrl: "",
                      description: "")),
              ListItemArt(
                  art: Art(
                      id: 1,
                      author: "Ibrahim Hussein",
                      title: "Octopi II",
                      img: "https://picsum.photos/id/386/200/200",
                      audioUrl: "",
                      description: "")),
            ],
          ),
        ),
      ),
    );
  }
}
