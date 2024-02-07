import 'package:todo_app/config/imorts.dart';

class Button extends StatelessWidget {
  String text;
  Function? onTap;
  Button({
    super.key,
    this.text = "Text",
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //agar onTap nullga teng bo;lmasa
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: AppColor.primary, borderRadius: BorderRadius.circular(20)),
        child: Text(
          text,
          style: TextStyle(
              color: AppColor.white, fontWeight: FontWeight.w600, fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
