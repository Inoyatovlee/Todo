import 'package:todo_app/config/imorts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            Text(name.text),
            Input(
              hindText: "Username",
              label: "Ismingizni kiriting",
              denger: name.text.trim().isEmpty,
              demgerText: "Ismingizni kiritmadingiz",
              controller: name, // tepada yozilishini taminlayapti changed
              changed: (value) {
                setState(() {});
              },
            ),
            const SizedBox(height: 24),
            Input(
              hindText: "Password",
            ),
          ],
        ),
      ),
    );
  }
}
