import 'package:todo_app/config/imorts.dart';

class StepOne extends StatefulWidget {
  const StepOne({super.key});

  @override
  State<StepOne> createState() => _StepOneState();
}

class _StepOneState extends State<StepOne> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Image.asset(
          AppImages.step1,
        ),
      ]),
    );
  }
}
