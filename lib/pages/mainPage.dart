import 'package:todo_app/config/imorts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MainController controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<MainController>(
        builder: (controller) {
          return Scaffold(
            bottomNavigationBar: BottomAppBar(
              padding: EdgeInsets.zero,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColor.white,
                    border: Border.all(color: AppColor.blue5),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(controller.menus.length, (index) {
                      var item = controller.menus[index];
                      return InkWell(
                          onTap: () {
                            controller.setWidget(item['id']);
                          },
                          child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: SvgPicture.asset(item['icon'],
                                  width: 30,
                                  color: item['id'] == controller.currentPageId
                                      ? AppColor.blue7
                                      : AppColor.grey7)));
                    })),
              ),
            ),
            body: controller.currentWidget(),
          );
        },
      ),
    );
  }
}
