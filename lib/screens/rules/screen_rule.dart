import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lpsvn_general/configs/theme.dart';
import 'package:lpsvn_general/controllers/rule_controller.dart';

class ScreenRule extends StatelessWidget {
  const ScreenRule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(RuleController());

    return Scaffold(
      body: GetBuilder<RuleController>(
        builder: (ruleController) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.asset('assets/images/sample_1.png',
                      fit: BoxFit.fill)),
              const SizedBox(height: 10),
              const Text(
                "Video Norma baru di galeri",
                style: TextStyle(
                    color: defaultColorContra, fontSize: textSizeNormal),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  ruleController.ruleDescription,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                      color: defaultColorContra, fontSize: textSizeSlightBig),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
