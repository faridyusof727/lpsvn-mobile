import 'package:get/get.dart';

class NagFriendController extends GetxController {
  int selectedNagIndex = 0;
  int selectedWorkDayIndex = 0;

  List<String> nagTypes = [
    "Jurupandu Galeri",
    "Jurugambar galeri",
    "Penjaga Kaunter"
  ];

  List<String> workingDays = [
    "Sabtu dan Ahad",
    "Sabtu",
    "Ahad",
  ];

  String expDescription = "Pengalaman Dahulu (Sila berikan butiran tentang sebarang pengalaman terdahulu "
      "seperti kerja, pendidikan, pengalaman sukarelawan yang mungkin anda rasa berkaitandengan sukarelawan anda minati)";

  void selectNagType(String value) {
    selectedNagIndex = nagTypes.indexOf(value);
    update();
  }

  void selectWorkDay(String value) {
    selectedWorkDayIndex = workingDays.indexOf(value);
    update();
  }
}
