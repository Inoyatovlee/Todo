import 'package:todo_app/config/imorts.dart';

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("BallPage"),
      ),
    );
  }
}
