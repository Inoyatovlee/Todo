import 'package:todo_app/config/imorts.dart';

class WelcomeController extends GetxController {
  // void onInit() {
  //   GetStorage().write('welcome', true);
  //   super.onInit();
  // }

  PageController pageController = PageController(initialPage: 0);

  int currentPage = 0;
//List tipiga Map ni ishlatish shu ko'rinishda bo'ladi
  // List<Map> users = [
  //   {"id": 1, 'name': "Erkinjon", "age": 33}, //0  //user
  //   {"id": 2, 'name': "Azizjon", "age": 23}, //1
  //   {"id": 3, 'name': "Boburjon", "age": 27}, //2
  //   {"id": 4, 'name': "Alijon", "age": 21}, //3
  // ];
//Id orqali Listdan malumot topib olish
  // findUsersFromId() {
  //   int index = users.indexWhere((user) => user['id'] == 3);
  //   print(index);
  // }
  //Id orqali Listdan malumotni o'chirish
  // findUsersFromId() {
  //   print(users);
  //   int index = users.indexWhere((user) => user['id'] == 3);
  //   if (index > -1) {
  //     users.removeAt(index);
  //   }
  //   print(users);
  // }

  List<Widget> pages = [
    const StepOne(),
    const StepTwo(),
    const StepThee(),
  ];

  setPageIndex(int value) {
    currentPage = value;
    update();
  }

  back() {
    if (currentPage == 0) return;
    pageController.previousPage(
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  next() {
    if (currentPage == 2) {
      Get.off(() => const MainPage());
      return;
    }
    pageController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }
}
