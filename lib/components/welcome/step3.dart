import 'package:todo_app/config/imorts.dart';

class StepThee extends StatefulWidget {
  const StepThee({super.key});

  @override
  State<StepThee> createState() => _StepTheeState();
}

class _StepTheeState extends State<StepThee> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Image.asset(
          AppImages.step3,
        ),
      ]),
    );
  }
}
