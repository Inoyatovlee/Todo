import 'dart:js_util';

import 'package:todo_app/config/imorts.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  TaskController controller = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TaskController>(
      builder: (controller) {
        return Stack(
          children: [
            const Positioned(top: -100, child: CircleContainer()),
            const Positioned(top: -30, left: -60, child: CircleContainer()),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      const Spacer(),
                      Text("Create a Task",
                          style: TextStyle(
                              color: AppColor.blue5,
                              fontWeight: FontWeight.w600,
                              fontSize: 18)),
                      const Spacer(),
                      SvgPicture.asset(AppIcon.search, color: AppColor.blue5),
                    ],
                  ),
                  //task  title
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 30),
                    child: TextField(
                      style: TextStyle(
                          color: AppColor.blue7,
                          fontWeight: FontWeight.w800,
                          fontSize: 20),
                      cursorColor: AppColor.blue5,
                      decoration: InputDecoration(
                          label: Text("Task title",
                              style: TextStyle(
                                  color: AppColor.blue5,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColor.blue, width: 1.0)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColor.blue, width: 2.0))),
                    ),
                  ),
                  const SizedBox(height: 50),
                  //task discription
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [AppColor.blue, AppColor.blue5])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            TaskTimeComponents(
                                label: "Start Time",
                                time: "03:15",
                                onTap: () {
                                  Get.dialog(
                                      ChooseTimeDialog(controller: controller));
                                }),
                            SizedBox(width: 110),
                            TaskTimeComponents(
                                label: "End Time",
                                time: "07:15",
                                onTap: () {
                                  print("End Time");
                                }),
                          ],
                        ),
                        Divider(color: AppColor.white, thickness: 2),
                        TextField(
                          maxLines: 3,
                          style: TextStyle(
                              color: AppColor.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 20),
                          cursorColor: AppColor.white,
                          decoration: InputDecoration(
                              label: Text("Discription",
                                  style: TextStyle(
                                      color: AppColor.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.white, width: 1.0)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.white, width: 2.0))),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          "Category",
                          style: TextStyle(
                              color: AppColor.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 15),
                        Wrap(
                          spacing: 20,
                          runSpacing: 16,
                          children: List.generate(controller.catigoriya.length,
                              (index) {
                            var item = controller.catigoriya[index];
                            return InkWell(
                              onTap: () {
                                print("object");
                              },
                              child: Container(
                                width: 100,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  item,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColor.blue7,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            );
                          }),
                        ),
                        // nimasxw
                        const SizedBox(height: 15),
                        Button1(onTap: () {})
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class ChooseTimeDialog extends StatelessWidget {
  ChooseTimeDialog({
    super.key,
    required this.controller,
  });

  TaskController controller;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      actions: [Button1(onTap: () {}, dense: true, text: "Saqlash")],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Soat"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(controller.hours.length, (index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                margin: EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.blue7,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(controller.hours[index]),
              );
            })),
          ),
          SizedBox(height: 24),
          Text("Minut"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(controller.minuts.length, (index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                margin: EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.blue7,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(controller.minuts[index]),
              );
            })),
          )
        ],
      ),
    );
  }
}

class TaskTimeComponents extends StatelessWidget {
  TaskTimeComponents({
    super.key,
    required this.label,
    required this.time,
    required this.onTap,
  });

  String label, time;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: TextStyle(
                  color: AppColor.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400)),
          Text(time,
              style: TextStyle(
                  color: AppColor.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w800)),
        ],
      ),
    );
  }
}
