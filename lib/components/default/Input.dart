import 'package:todo_app/config/imorts.dart';

class Input extends StatelessWidget {
  String? hindText;
  String? label;
  bool? denger;
  String? demgerText;
  TextEditingController? controller;
  Function? changed;
  Input({
    super.key,
    this.hindText,
    this.controller,
    this.changed,
    this.label,
    this.denger = false,
    this.demgerText = "Error text",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label == null
            ? const SizedBox()
            : Column(children: [
                Text(
                  label!,
                  style: TextStyle(color: AppColor.blue7, fontSize: 12),
                ),
                const SizedBox(height: 4),
              ]),
        TextField(
          cursorColor: AppColor.blue,
          controller: controller,
          onChanged: (value) {
            if (changed != null) {
              changed!(value);
            }
          },
          decoration: InputDecoration(
            hintText: hindText,
            // filled: true,
            // fillColor: AppColor.blue3,
            hintStyle: TextStyle(color: AppColor.blue7),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.blue7.withOpacity(0.6)),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.blue, width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(16))),
          ),
        ),
        SizedBox(height: denger! ? 4 : 0),
        denger!
            ? Text(demgerText!,
                style: const TextStyle(color: Colors.red, fontSize: 10))
            : const SizedBox(),
      ],
    );
  }
}
