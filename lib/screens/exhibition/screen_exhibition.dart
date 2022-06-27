import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lpsvn_general/controllers/exhibitions_controller.dart';
import 'package:lpsvn_general/screens/exhibition/list_exhibition.dart';

class ScreenExhibition extends StatelessWidget {
  const ScreenExhibition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ExhibitionsController());

    return GetBuilder<ExhibitionsController>(
      builder: (exhibitionsController) => Scaffold(
        body: ListExhibition(exhibitions: exhibitionsController.exhibitions,),
      ),
    );
  }

}