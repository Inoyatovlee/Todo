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
            Column(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
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
                            borderSide:
                                BorderSide(color: AppColor.blue, width: 2.0))),
                  ),
                ),
                const SizedBox(height: 50),
                //task discription
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [AppColor.blue, AppColor.blue5])),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        spacing: 21,
                        runSpacing: 16,
                        children: List.generate(controller.catigoriya.length,
                            (index) {
                          var item = controller.catigoriya[index];
                          return InkWell(
                            onTap: () {
                              print("object");
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 23, vertical: 10),
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                item,
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
          ],
        );
      },
    );
  }
}

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          color: AppColor.blue3, borderRadius: BorderRadius.circular(100)),
    );
  }
}
