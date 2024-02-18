import 'package:todo_app/config/imorts.dart';

class ChooseTimeDialog extends StatefulWidget {
  ChooseTimeDialog({
    super.key,
    required this.controller,
    required this.start,
  });

  TaskController controller;
  bool start;

  @override
  State<ChooseTimeDialog> createState() => _ChooseTimeDialogState();
}

class _ChooseTimeDialogState extends State<ChooseTimeDialog> {
  String hours = "00";
  String minuts = "00";

  setHours(item) {
    setState(() {
      hours = item;
    });
  }

  setMinuts(item) {
    setState(() {
      minuts = item;
    });
  }

  save() {
    widget.controller.saveTime(widget.start, hours + ":" + minuts);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      actions: [
        Button1(
            onTap: () {
              save();
            },
            dense: true,
            text: "Saqlash")
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TimeSiction(
            section: hours,
            label: "Soatni tanlang",
            list: widget.controller.hours,
            onTap: (item) {
              setHours(item);
            },
          ),
          const SizedBox(height: 24),
          TimeSiction(
            section: minuts,
            label: "Minutni tanlang",
            list: widget.controller.minuts,
            onTap: (item) {
              setMinuts(item);
            },
          ),
        ],
      ),
    );
  }
}

class TimeSiction extends StatelessWidget {
  const TimeSiction({
    super.key,
    required this.section,
    required this.label,
    required this.list,
    required this.onTap,
  });

  final String section;
  final String label;
  final List list;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(list.length, (index) {
            var item = list[index];
            return InkWell(
              onTap: () {
                onTap(item);
              },
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  margin: const EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                      color: item == section ? AppColor.blue7 : null,
                      border: Border.all(
                        color: AppColor.blue7,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    item,
                    style: TextStyle(
                        color:
                            item == section ? AppColor.white : AppColor.blue7),
                  )),
            );
          })),
        ),
      ],
    );
  }
}
