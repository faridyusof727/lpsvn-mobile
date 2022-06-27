import 'package:flutter/cupertino.dart';
import 'package:lpsvn_general/configs/theme.dart';

Widget doneToast(String message) => Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: defaultColorThird.withOpacity(0.85),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            CupertinoIcons.check_mark_circled_solid,
            size: 50,
            color: defaultColorPrimary,
          ),
          const SizedBox(
            height: sectionSpacingNormal,
          ),
          Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: defaultColorContra,
                fontSize: textSizeBig,
                fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
