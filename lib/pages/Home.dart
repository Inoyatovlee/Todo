import 'package:todo_app/config/colors.dart';
import 'package:todo_app/config/imorts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: AppColor.primary,
            ),
            child: Text(
              "Label",
              style:
                  TextStyle(color: AppColor.white, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          )
        ]),
      ),
    );
  }
}
