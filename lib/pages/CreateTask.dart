import 'package:todo_app/config/imorts.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Spacer(),
            Text("Create a Task",
                style: TextStyle(
                    color: AppColor.blue5,
                    fontWeight: FontWeight.w600,
                    fontSize: 18)),
            Spacer(),
            SvgPicture.asset(AppIcon.search, color: AppColor.blue5),
          ],
        ),
        //task  title
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
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
                    borderSide: BorderSide(color: AppColor.blue, width: 1.0)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColor.blue, width: 2.0))),
          ),
        ),

        //task discription
      ],
    );
  }
}
