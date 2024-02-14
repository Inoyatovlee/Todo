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
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        constraints: const BoxConstraints(maxWidth: 500),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(AppImages.step3, width: 300),
          Text(
            "Ishlar ro'yxati vazifalari menejeri todos unumdorligini rejalashtiruvchi ilova sifatida foydalanuvchilarga qilinadigan ishlar ro'yxatini kuzatish, kundalik rejalashtiruvchilarni bepul qilish va muhim vazifalar eslatmalarini taqdim etishga yordam berishga bag'ishlangan. ",
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
