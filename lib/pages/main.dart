import 'package:todo_app/config/imorts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: AppColor.white,
          padding: EdgeInsets.zero,
          height: 70,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppColor.blue),
                color: AppColor.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16))),
            child: Row(
              children: [Text("data")],
            ),
          ),
        ),
      ),
    );
  }
}
