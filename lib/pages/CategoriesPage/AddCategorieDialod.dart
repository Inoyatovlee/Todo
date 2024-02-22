import 'package:todo_app/config/imorts.dart';

class AddCategorieDialod extends StatelessWidget {
  const AddCategorieDialod({
    super.key,
    required this.textcontroller,
    required this.onTap,
  });

  final TextEditingController textcontroller;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Kategoriya qo'shish",
            style: TextStyle(
                color: AppColor.blue5,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 15),
          Input(
            hindText: "Kategoriya nomi",
            controller: textcontroller,
          ),
          const SizedBox(height: 15),
          Button1(
            text: "Qo'shish",
            onTap: () {
              onTap();
            },
          ),
        ],
      ),
    );
  }
}
