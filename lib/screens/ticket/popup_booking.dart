import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:lpsvn_general/configs/theme.dart';
import 'package:lpsvn_general/controllers/tickets_controller.dart';
import 'package:lpsvn_general/generated/l10n.dart';

import '../../components/toast_done.dart';

class PopupBooking extends StatefulWidget {
  const PopupBooking({Key? key}) : super(key: key);

  @override
  State<PopupBooking> createState() => _PopupBookingState();
}

class _PopupBookingState extends State<PopupBooking> {
  final toast = FToast();

  @override
  void initState() {
    super.initState();

    toast.init(context);
  }

  void showDoneToast() => toast.showToast(
      child: doneToast(S.of(context).registered), gravity: ToastGravity.CENTER);

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
          actions: [
            GestureDetector(
              onTap: () => Get.back(),
              child: const Icon(
                Icons.close,
                color: defaultColorContra,
                size: 23,
              ),
            ),
            const SizedBox(width: sectionSpacingNormal)
          ],
        ),
        body: GetBuilder<TicketsController>(
          builder: (ticketController) => Padding(
            padding: const EdgeInsets.only(
                left: sectionSpacingNormal,
                right: sectionSpacingNormal,
                top: sectionSpacingBig,
                bottom: sectionSpacingBig),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Pameran The Collective Memory of The Ibrahim Hussein Museum and Cultural Foundation (ARKIB)",
                    style: TextStyle(color: defaultColorContra),
                  ),
                  const SizedBox(
                    height: sectionSpacingBig,
                  ),
                  const Text(
                    "Pameran The Collective Memory of The Ibrahim "
                    "Hussein Museum and Cultural "
                    "Foundation (ARKIB) - Bahasa "
                    "Melayu",
                    style: TextStyle(color: defaultColorContra),
                  ),
                  const SizedBox(
                    height: sectionSpacingBig,
                  ),
                  const Text("Tarikh Lawatan Berpandu",
                      style: TextStyle(
                          color: defaultColorContra, fontSize: textSizeNormal)),
                  const SizedBox(height: labelSpacing),
                  CupertinoTextField(
                    placeholder: "YYYY-MM-DD",
                    controller: null,
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,
                    suffix: IconButton(
                      icon: const Icon(Icons.date_range_outlined,
                          size: 20, color: Colors.black38),
                      onPressed: () {},
                    ),
                    style: const TextStyle(color: Colors.black),
                    placeholderStyle: const TextStyle(color: Colors.black45),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(15),
                  ),
                  const SizedBox(height: sectionSpacingSmall),
                  const Text("Masa Lawatan Berpandu",
                      style: TextStyle(
                          color: defaultColorContra, fontSize: textSizeNormal)),
                  const SizedBox(height: labelSpacing),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: DropdownButton(
                          hint: const Text("Masa Lawatan Berpandu"),
                          icon: const Icon(Icons.arrow_drop_down),
                          value: ticketController.visitTimes[
                              ticketController.selectedVisitTimeIndex],
                          dropdownColor: defaultColorContra,
                          iconSize: 30,
                          isExpanded: true,
                          style: const TextStyle(
                              color: defaultColorMajor,
                              fontSize: textSizeNormal),
                          items: ticketController.visitTimes
                              .map((nagType) => DropdownMenuItem(
                                  value: nagType, child: Text(nagType)))
                              .toList(),
                          onChanged: (value) => ticketController
                              .selectVisitTime(value.toString()),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: sectionSpacingSmall),
                  const Text("Email",
                      style: TextStyle(
                          color: defaultColorContra, fontSize: textSizeNormal)),
                  const SizedBox(height: labelSpacing),
                  CupertinoTextField(
                    placeholder: "Email",
                    controller: null,
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,
                    suffix: IconButton(
                      icon: const Icon(Icons.email_outlined,
                          size: 20, color: Colors.black38),
                      onPressed: () {},
                    ),
                    style: const TextStyle(color: Colors.black),
                    placeholderStyle: const TextStyle(color: Colors.black45),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(15),
                  ),
                  const SizedBox(
                    height: sectionSpacingBig,
                  ),
                  GestureDetector(
                    onTap: showDoneToast,
                    child: Container(
                      decoration: BoxDecoration(
                        color: defaultColorPrimary,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: 50,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          S.of(context).booking,
                          style: const TextStyle(
                              fontSize: textSizeNormal,
                              color: defaultColorContra,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
