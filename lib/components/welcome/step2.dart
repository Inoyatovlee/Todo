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
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        constraints: BoxConstraints(maxWidth: 500),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(AppImages.step2, width: 300),
          Text(
            "Vazifalar ro'yxati - Jadvalni rejalashtiruvchi va bajariladigan ishlar ro'yxati Vazifa menejeri bu bepul va oson onlayn ishlar ro'yxati menejeri va vaqtni rejalashtirishda foydalanish mumkin bo'lgan dastur.",
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
