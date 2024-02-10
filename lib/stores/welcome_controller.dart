import 'package:todo_app/config/imorts.dart';

class WelcomeController extends GetxController {
  late PageController pageContoller;

  int currentPage = 0;

  List<Widget> pages = [
    StepOne(),
    StepTwo(),
    StepThee(),
  ];
}
