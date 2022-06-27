import 'package:flutter/material.dart';
import 'package:lpsvn_general/configs/theme.dart';

class PopupBooking extends StatelessWidget {
  const PopupBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(sectionSpacingNormal),
      child: Scaffold(
        backgroundColor: defaultColorThird,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: defaultColorThird,
          leading: Container(),
          actions: const [
            Icon(
              Icons.close,
              color: defaultColorContra,
              size: 23,
            ),
            SizedBox(width: sectionSpacingNormal)
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(
              left: sectionSpacingNormal,
              right: sectionSpacingNormal,
              top: sectionSpacingBig,
              bottom: sectionSpacingBig),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Pameran The Collective Memory of The Ibrahim Hussein Museum and Cultural Foundation (ARKIB)",
                style: TextStyle(color: defaultColorContra),
              )
            ],
          ),
        ),
      ),
    );
  }
}
