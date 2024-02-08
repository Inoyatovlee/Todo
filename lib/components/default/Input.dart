import 'package:todo_app/config/imorts.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Name",
        hintStyle: TextStyle(color: AppColor.primary),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 18),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: AppColor.primary)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.primary, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
