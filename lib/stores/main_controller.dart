import 'package:todo_app/config/imorts.dart';

class MainController extends GetxController {
  int currentPageId = 1;

  List menus = [
    {"id": 1, "icon": AppIcon.home, "page": const HomePage()},
    {"id": 2, "icon": AppIcon.calendar, "page": const CalendarPage()},
    {"id": 3, "icon": AppIcon.add, "page": const CreateTask()},
    {"id": 4, "icon": AppIcon.bell, "page": const BallPage()},
    {"id": 5, "icon": AppIcon.shield, "page": const AddPage()},
  ];

  setWidget(int id) {
    currentPageId = id;
    update();
  }

  currentWidget() {
    var index = menus.indexWhere((element) => element['id'] == currentPageId);
    if (index > -1) {
      return menus[index]['page'];
    }
  }
}
