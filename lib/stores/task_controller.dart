import 'package:get/get.dart';

class TaskController extends GetxController {
  List<String> catigoriya = [
    "Musiqa",
    "kino",
    "Sport",
    "Xarid",
    "Coding",
    "Coding",
    "Coding",
    "Coding",
    "Uy ishi",
    "Kitob",
  ];

  List<String> hours = [];
  List<String> minuts = [];

  autoSet(int count, List list) {
    for (var i = 0; i < count; i++) {
      if (i < 10) {
        list.add("0$i");
      } else {
        list.add(i.toString());
      }
    }
  }
// //soat uchun
//   autoSetHours() {
//     for (var i = 0; i < 24; i++) {
//       if (i < 10) {
//         minuts.add("0$i");
//       } else {
//         minuts.add(i.toString());
//       }
//     }
//   }

// //minut uchun
//   autoSetMinuts() {
//     for (var i = 0; i < 60; i++) {
//       if (i < 10) {
//         hours.add("0$i");
//       } else {
//         hours.add(i.toString());
//       }
//     }
//   }

  @override
  void onInit() {
    autoSet(24, hours);
    autoSet(60, minuts);

    super.onInit();
  }
}
