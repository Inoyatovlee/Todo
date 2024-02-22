import 'package:todo_app/config/imorts.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  CategoryController controller = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 500),
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //App title
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                const Spacer(),
                Text(
                  "Kategoriyalar",
                  style: TextStyle(
                      color: AppColor.blue5,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Get.dialog(AddCategorieDialod(
                        textcontroller: controller.title,
                        onTap: () {
                          controller.add();
                        }));
                  },
                  child: Icon(Icons.add_circle_outline_outlined,
                      color: AppColor.blue5, size: 30),
                ),
              ],
            ),
          ),
          //fewwe
          Container(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 16, vertical: 5),
            decoration: BoxDecoration(
                border: Border.all(color: AppColor.blue5),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Text("Musiqa",
                    style: TextStyle(fontSize: 18, color: AppColor.blue5)),
                const Spacer(),
                PopupMenuButton(
                  icon: Icon(Icons.more_vert_outlined, color: AppColor.blue5),
                  color: AppColor.blue5,
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: Row(
                        children: [
                          Icon(Icons.edit, color: AppColor.white),
                          const SizedBox(width: 10),
                          Text(
                            "Tahrirlash",
                            style: TextStyle(
                                color: AppColor.white,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 1,
                      child: Row(
                        children: [
                          Icon(Icons.delete, color: AppColor.white),
                          const SizedBox(width: 10),
                          Text(
                            "O'chirish",
                            style: TextStyle(
                                color: AppColor.white,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    )
                  ],
                  elevation: 2,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
