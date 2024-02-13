import 'package:todo_app/config/imorts.dart';

class MainController extends GetxController {
  //hozi turgan widgeti
  Widget currentWidget = const HomePage();

  List menus = [
    {"id": 1, "icon": AppIcon.home, "page": const HomePage()},
    {"id": 2, "icon": AppIcon.calendar, "page": const CalendarPage()},
    {"id": 3, "icon": AppIcon.add, "page": const ProfilePage()},
    {"id": 4, "icon": AppIcon.bell, "page": const BallPage()},
    {"id": 5, "icon": AppIcon.shield, "page": const AddPage()}
  ];

  setWidget(Widget page) {
    currentWidget = page;
    update();
  }
}
