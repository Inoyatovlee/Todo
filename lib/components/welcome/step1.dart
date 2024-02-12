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
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        constraints: const BoxConstraints(maxWidth: 500),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Hush Kelibsiz!',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColor.blue7,
                fontWeight: FontWeight.w700,
                fontSize: 32),
          ),
          Image.asset(AppImages.step1),
          Text(
            "Xavotir olmang, vaqtni boshqarish va oson hayot kechirishda yordam berish uchun ushbu samarali va bepul topshiriq kuzatuvchisidan foydalaning va vazifalar menejeri ro'yxatini bepul bajaring.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColor.blue7,
                fontWeight: FontWeight.w600,
                height: 1.5),
          ),
        ]),
      ),
    );
  }
}
