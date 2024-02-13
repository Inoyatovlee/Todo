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
              color: AppColor.white,
              padding: EdgeInsets.zero,
              height: 70,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColor.blue),
                    color: AppColor.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(controller.menus.length, (index) {
                      var item = controller.menus[index];
                      return InkWell(
                          onTap: () {},
                          child: Container(
                              padding: EdgeInsets.all(10),
                              child: SvgPicture.asset(item['icon'])));
                    })),
              ),
            ),
          );
        },
      ),
    );
  }
}
