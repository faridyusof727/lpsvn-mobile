import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lpsvn_general/configs/theme.dart';
import 'package:lpsvn_general/controllers/nag_friend_controler.dart';

class ScreenNagFriend extends StatelessWidget {
  const ScreenNagFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(NagFriendController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: defaultColorMajor,
        leading: Container(),
        leadingWidth: 0,
        title: const Text(
          "Pendaftaran Sukarelawan",
          style: TextStyle(
              color: defaultColorPrimary,
              fontWeight: FontWeight.w900,
              fontSize: textSizeBig),
        ),
      ),
      body: GetBuilder<NagFriendController>(
          builder: (nagFriendController) => Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 250,
                          width: double.infinity,
                          child: Image.asset('assets/images/sample_2.PNG',
                              fit: BoxFit.fill)),
                      const SizedBox(height: sectionSpacingNormal),
                      const Text(
                        "Sila isiskan maklumat peribadi anda:",
                        style: TextStyle(
                            color: defaultColorContra,
                            fontSize: textSizeNormal),
                      ),
                      const SizedBox(height: sectionSpacingSmall),
                      const Text("Nama",
                          style: TextStyle(
                              color: defaultColorContra,
                              fontSize: textSizeNormal)),
                      const SizedBox(height: labelSpacing),
                      CupertinoTextField(
                        placeholder: "Nama",
                        controller: null,
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        suffix: IconButton(
                          icon: const Icon(Icons.person,
                              size: 20, color: Colors.black38),
                          onPressed: () {},
                        ),
                        style: const TextStyle(color: Colors.black),
                        placeholderStyle:
                            const TextStyle(color: Colors.black45),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.all(15),
                      ),
                      const SizedBox(height: sectionSpacingSmall),
                      const Text("Email",
                          style: TextStyle(
                              color: defaultColorContra,
                              fontSize: textSizeNormal)),
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
                        placeholderStyle:
                            const TextStyle(color: Colors.black45),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.all(15),
                      ),
                      const SizedBox(height: sectionSpacingSmall),
                      const Text("Tarikh Lahir",
                          style: TextStyle(
                              color: defaultColorContra,
                              fontSize: textSizeNormal)),
                      const SizedBox(height: labelSpacing),
                      CupertinoTextField(
                        placeholder: "Tarikh Lahir",
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
                      const Text("Alamat",
                          style: TextStyle(
                              color: defaultColorContra,
                              fontSize: textSizeNormal)),
                      const SizedBox(height: labelSpacing),
                      CupertinoTextField(
                        maxLines: 3,
                        placeholder: "Alamat",
                        controller: null,
                        autocorrect: false,
                        keyboardType: TextInputType.multiline,
                        suffix: IconButton(
                          icon: const Icon(Icons.pin_drop_outlined,
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
                      const Text("No Telefon",
                          style: TextStyle(
                              color: defaultColorContra,
                              fontSize: textSizeNormal)),
                      const SizedBox(height: labelSpacing),
                      CupertinoTextField(
                        placeholder: "Telefon",
                        controller: null,
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        suffix: IconButton(
                          icon: const Icon(Icons.phone,
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
                      const Text("Jenis Sukarelawan",
                          style: TextStyle(
                              color: defaultColorContra,
                              fontSize: textSizeNormal)),
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
                              hint: const Text("Jenis Sukarelawan"),
                              icon: const Icon(Icons.arrow_drop_down),
                              value: nagFriendController.nagTypes[
                                  nagFriendController.selectedNagIndex],
                              dropdownColor: defaultColorContra,
                              iconSize: 30,
                              isExpanded: true,
                              style: const TextStyle(
                                  color: defaultColorMajor,
                                  fontSize: textSizeNormal),
                              items: nagFriendController.nagTypes
                                  .map((nagType) => DropdownMenuItem(
                                      value: nagType, child: Text(nagType)))
                                  .toList(),
                              onChanged: (value) => nagFriendController
                                  .selectNagType(value.toString()),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: sectionSpacingSmall),
                      const Text("Hari Bekerja Sukarelawan",
                          style: TextStyle(
                              color: defaultColorContra,
                              fontSize: textSizeNormal)),
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
                              hint: const Text("Hari Bekerja"),
                              icon: const Icon(Icons.arrow_drop_down),
                              value: nagFriendController.workingDays[
                                  nagFriendController.selectedWorkDayIndex],
                              dropdownColor: defaultColorContra,
                              iconSize: 30,
                              isExpanded: true,
                              style: const TextStyle(
                                  color: defaultColorMajor,
                                  fontSize: textSizeNormal),
                              items: nagFriendController.workingDays
                                  .map((nagType) => DropdownMenuItem(
                                      value: nagType, child: Text(nagType)))
                                  .toList(),
                              onChanged: (value) => nagFriendController
                                  .selectWorkDay(value.toString()),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: sectionSpacingBig),
                      Text(
                        nagFriendController.expDescription,
                        style: const TextStyle(
                            color: defaultColorContra,
                            fontSize: textSizeNormal),
                      ),
                      const SizedBox(height: sectionSpacingSmall),
                      CupertinoTextField(
                        maxLines: 10,
                        placeholder:
                            "Saya pernah bekerja di galeri petronas...",
                        controller: null,
                        autocorrect: false,
                        keyboardType: TextInputType.multiline,
                        style: const TextStyle(color: Colors.black),
                        placeholderStyle: const TextStyle(color: Colors.black45),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.all(15),
                      ),
                      const SizedBox(height: sectionSpacingNormal),
                      GestureDetector(
                        onTap: null,
                        child: Container(
                          decoration: BoxDecoration(
                            color: defaultColorPrimary,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          height: 40,
                          width: double.infinity,
                          child: const Center(
                            child: Text(
                              "Hantar",
                              style: TextStyle(
                                  fontSize: textSizeNormal,
                                  color: defaultColorContra,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              )),
    );
  }
}
