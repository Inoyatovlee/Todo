import 'package:todo_app/config/imorts.dart';

class MainController extends GetxController {
  //hozi turgan widgeti
  int currentPageId = 1;

  List menus = [
    {"id": 1, "icon": AppIcon.home, "page": const HomePage()},
    {"id": 2, "icon": AppIcon.calendar, "page": const CalendarPage()},
    {"id": 3, "icon": AppIcon.add, "page": const CreateTask()},
    {"id": 4, "icon": AppIcon.bell, "page": const BallPage()},
    {"id": 5, "icon": AppIcon.shield, "page": const AddPage()}
  ];

  setWidget(int id) {
    currentPageId = id;
    update();
  }

//tugmani bosganimizda boshqatdan qurilish kerak
  currentWidget() {
    var index = menus.indexWhere((element) => ('id') == currentPageId);
    if (index > -1) {
      return menus[index]['page'];
    }
  }

// // turgan page ni rangini o'zgartirish
//   bool activePage(Widget page) {
//     return currentPageId == page;
//   }
}
