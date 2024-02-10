import 'package:todo_app/config/imorts.dart';

class StepTwo extends StatefulWidget {
  const StepTwo({super.key});

  @override
  State<StepTwo> createState() => _StepTwoState();
}

class _StepTwoState extends State<StepTwo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Image.asset(
          AppImages.step2,
        ),
      ]),
    );
  }
}
