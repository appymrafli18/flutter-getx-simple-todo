import 'package:get/get.dart';

class HomeController extends GetxController {

  RxList<Map<String, dynamic>> data = [
    {"nama": "Joni", "umur": 25},
    {"nama": "Panjul", "umur": 19},
    {"nama": "Yono", "umur": 18},
    {"nama": "Sapri", "umur": 33},
    {"nama": "Juminten", "umur": 20},
  ].obs;

}

  /*
  RxInt data = 99.obs; // observable

  void tambah() {
    data++;
  }

  void kurang() {
    data--;
  }
  */