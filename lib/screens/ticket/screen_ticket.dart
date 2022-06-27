import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lpsvn_general/configs/theme.dart';
import 'package:lpsvn_general/controllers/tickets_controller.dart';
import 'package:lpsvn_general/screens/ticket/list_visit.dart';

class ScreenTicket extends StatelessWidget {
  const ScreenTicket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TicketsController());

    return Scaffold(
      body: GetBuilder<TicketsController>(
        builder: (ticketsController) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.asset('assets/images/def_img_1.png',
                      fit: BoxFit.fill)),
              const SizedBox(height: sectionSpacingSmall),
              const Text(
                "General Admission",
                style: TextStyle(
                    color: defaultColorPrimary,
                    fontSize: textSizeBig,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: sectionSpacingSmall),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "Quickstart your gallery experience by scanning your MySejahtera at our main entrance.",
                  style: TextStyle(
                      color: defaultColorContra,
                      fontSize: textSizeNormal,
                      fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(height: sectionSpacingNormal),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GestureDetector(
                  onTap: () => ticketsController.toRuleScreen(),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    color: defaultColorPrimary,
                    child: const Center(
                      child: Text(
                        "PERATURAN DI GALERI",
                        style: TextStyle(
                            fontSize: textSizeNormal,
                            color: defaultColorContra,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: sectionSpacingSmall),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GestureDetector(
                  onTap: () => ticketsController.toNagFriendScreen(),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    color: defaultColorContra,
                    child: const Center(
                      child: Text(
                        "NAD FRIENDS",
                        style: TextStyle(
                            fontSize: textSizeNormal,
                            color: defaultColorMajor,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: sectionSpacingSmall),
              SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.asset('assets/images/def_img_2.png',
                      fit: BoxFit.fill)),
              const SizedBox(height: sectionSpacingBig),
              const Text(
                "Lawatan",
                style: TextStyle(
                    color: defaultColorPrimary,
                    fontSize: textSizeBig,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: sectionSpacingNormal),
              SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.asset('assets/images/def_img_2.png',
                      fit: BoxFit.fill)),
              const SizedBox(height: sectionSpacingNormal),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "Sila muat turun surat permohonan lawatan berpandu secara berkumpulan anda (Minimum 20 pax) di sini:",
                  style: TextStyle(
                      color: defaultColorContra,
                      fontSize: textSizeSmall,
                      fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(height: sectionSpacingSmall),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CupertinoTextField(
                  controller: null,
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: Colors.black),
                  placeholderStyle: const TextStyle(color: Colors.black45),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                  ),
                  padding: const EdgeInsets.all(15),
                ),
              ),
              const SizedBox(height: sectionSpacingSmall),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GestureDetector(
                  onTap: null,
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    color: defaultColorAccent,
                    child: const Center(
                      child: Text(
                        "Muat Turun",
                        style: TextStyle(
                            fontSize: textSizeNormal,
                            color: defaultColorContra,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: sectionSpacingNormal),
              ListVisit(tickets: ticketsController.tickets)
            ],
          ),
        ),
      ),
    );
  }
}
