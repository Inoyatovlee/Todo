import 'package:todo_app/config/imorts.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("CreateTask"),
      ),
    );
  }
}
