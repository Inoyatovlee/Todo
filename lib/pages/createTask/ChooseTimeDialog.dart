import 'package:todo_app/config/imorts.dart';

class ChooseTimeDialog extends StatefulWidget {
  ChooseTimeDialog({
    super.key,
    required this.controller,
  });

  TaskController controller;

  @override
  State<ChooseTimeDialog> createState() => _ChooseTimeDialogState();
}

class _ChooseTimeDialogState extends State<ChooseTimeDialog> {
  String hours = "00";
  String minuts = "00";

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      actions: [Button1(onTap: () {}, dense: true, text: "Saqlash")],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Soat"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children:
                    List.generate(widget.controller.hours.length, (index) {
              var item = widget.controller.hours[index];
              return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  margin: const EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                      color: item == hours ? AppColor.blue7 : null,
                      border: Border.all(
                        color: AppColor.blue7,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    item,
                    style: TextStyle(
                        color: item == hours ? AppColor.white : AppColor.blue7),
                  ));
            })),
          ),
          const SizedBox(height: 24),
          const Text("Minut"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children:
                    List.generate(widget.controller.minuts.length, (index) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                margin: const EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.blue7,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(widget.controller.minuts[index]),
              );
            })),
          )
        ],
      ),
    );
  }
}
