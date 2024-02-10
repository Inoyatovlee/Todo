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
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Hush Kelibsiz',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColor.blue7, fontWeight: FontWeight.w700, fontSize: 32),
        ),
        Image.asset(AppImages.step1, width: 300),
        Text(
          "efyu iehiuuh eyghfiesh f uehufhheufh  euhfuhihef  hesufhi3ahsf rje vge easyfissdnvr euphasgehru",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColor.blue7, fontWeight: FontWeight.w600, height: 1.5),
        ),
      ]),
    );
  }
}
