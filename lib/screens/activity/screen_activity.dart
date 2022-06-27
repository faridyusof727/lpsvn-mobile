import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lpsvn_general/configs/theme.dart';
import 'package:lpsvn_general/controllers/activities_controller.dart';

class ScreenActivity extends StatelessWidget {
  const ScreenActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double preferredBodyHeight =
        Get.height - Get.statusBarHeight - Get.bottomBarHeight;

    Get.put(ActivitiesController());

    return Scaffold(
        appBar: AppBar(
          backgroundColor: defaultColorMajor,
          leading: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Image.asset(
              'assets/icons/app_icon.png',
              color: defaultColorContra,
            ),
          ),
          title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("BALAI SENI NEGARA",
                    style: TextStyle(
                        fontSize: textSizeTitle, fontWeight: FontWeight.bold)),
                Text("NATIONAL ART GALLERY",
                    style: TextStyle(
                        fontSize: textSizeTitle, fontWeight: FontWeight.w300))
              ]),
          actions: const [
            Icon(
              Icons.mail_outline,
              size: 28,
            ),
            SizedBox(width: 15),
            Icon(
              Icons.workspaces_outline,
              size: 28,
            ),
            SizedBox(width: 10)
          ],
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 8, right: 8, top: 20, bottom: 20),
          child: IntrinsicHeight(
            child: Row(
              children: [
                const Icon(Icons.arrow_back_ios_outlined,
                    color: defaultColorContra),
                const SizedBox(width: 7),
                Expanded(
                    child: GetBuilder<ActivitiesController>(
                  builder: (activitiesController) => SizedBox(
                    height: preferredBodyHeight,
                    child: PageView.builder(
                      itemCount: activitiesController.images.length,
                      itemBuilder: (context, index) => SizedBox(
                        height: preferredBodyHeight,
                        child: Image.network(
                          activitiesController.images[index],
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                )),
                const SizedBox(width: 7),
                const Icon(Icons.arrow_forward_ios_outlined,
                    color: defaultColorContra)
              ],
            ),
          ),
        ));
  }
}
