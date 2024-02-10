import 'package:todo_app/config/imorts.dart';

class WelcomeController extends GetxController {
  // void onInit() {
  //   GetStorage().write('welcome', true);
  //   super.onInit();
  // }

  PageController pageController = PageController(initialPage: 0);

  int currentPage = 0;

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
      Get.off(() => const HomePage());
      return;
    }
    pageController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }
}
