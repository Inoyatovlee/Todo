import 'package:todo_app/config/imorts.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.logo, width: 120),
            Text(
              "ToDo App",
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
