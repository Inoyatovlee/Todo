import 'package:todo_app/config/imorts.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(top: -100, child: CircleContainer()),
        const Positioned(top: -30, left: -60, child: CircleContainer()),
        Column(
          children: [
            Row(
              children: [
                const Spacer(),
                Text("Create a Task",
                    style: TextStyle(
                        color: AppColor.blue5,
                        fontWeight: FontWeight.w600,
                        fontSize: 18)),
                const Spacer(),
                SvgPicture.asset(AppIcon.search, color: AppColor.blue5),
              ],
            ),
            //task  title
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              child: TextField(
                style: TextStyle(
                    color: AppColor.blue7,
                    fontWeight: FontWeight.w800,
                    fontSize: 20),
                cursorColor: AppColor.blue5,
                decoration: InputDecoration(
                    label: Text("Task title",
                        style: TextStyle(
                            color: AppColor.blue5,
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.blue, width: 1.0)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.blue, width: 2.0))),
              ),
            ),
            const SizedBox(height: 50),
            //task discription
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [AppColor.blue5, AppColor.blue7])),
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(
                        color: AppColor.blue7,
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                    cursorColor: AppColor.blue5,
                    decoration: InputDecoration(
                        label: Text("Task title",
                            style: TextStyle(
                                color: AppColor.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColor.blue, width: 1.0)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColor.blue, width: 2.0))),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          color: AppColor.blue3, borderRadius: BorderRadius.circular(100)),
    );
  }
}
