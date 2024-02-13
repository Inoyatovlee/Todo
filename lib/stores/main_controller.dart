import 'package:todo_app/config/imorts.dart';

class MainController extends GetxController {
  List menus = [
    {"id": 1, "icon": AppIcon.home, "page": HomePage()},
    {"id": 2, "icon": AppIcon.calendar},
    {"id": 3, "icon": AppIcon.add},
    {"id": 4, "icon": AppIcon.bell},
    {"id": 5, "icon": AppIcon.shield}
  ];
}
