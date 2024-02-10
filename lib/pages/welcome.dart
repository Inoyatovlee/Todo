import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todo_app/config/imorts.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          scrollDirection: Axis.horizontal,
          controller: pageController,
          children: const [
            Center(
              child: Text("Page 1"),
            ),
            Center(
              child: Text("Page 2"),
            ),
            Center(
              child: Text("Page 3"),
            ),
          ],
        ),
        // SmoothPageIndicator(controller: controller, count: count)
      ],
    ));
  }
}
