import 'package:todo_app/config/imorts.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // 3 secund kutib turib Welcome ga o'tib ketsin
    Timer(const Duration(seconds: 3), () {
      Get.off(() => const Welcome());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.logo, width: 120),
            const SizedBox(height: 24),
            Text(
              "Todo App",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: AppColor.blue7),
            ),
            SizedBox(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(
                    color: AppColor.blue, strokeWidth: 2))
          ],
        ),
      ),
    );
  }
}
