import 'package:todo_app/config/imorts.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  WelcomeController controller = Get.put(WelcomeController());

  @override
  void initState() {
    controller.pageContoller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            PageView.builder(
                controller: controller.pageContoller,
                itemCount: controller.pages
                    .length, //ishlashini  bilib turish uchun onPagechanged..
                onPageChanged: (value) {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                itemBuilder: (context, index) {
                  return controller.pages[index];
                }),
            Container(
                alignment: const Alignment(0, 0.7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Orqaga",
                      style: TextStyle(
                          color: controller.currentPage == 0
                              ? AppColor.grey7
                              : AppColor.primary),
                    ),
                    SmoothPageIndicator(
                        controller: controller.pageContoller,
                        count: controller.pages.length),
                    const Text("Oldinga"),
                  ],
                ))
          ],
        ),
      ],
    ));
  }
}
