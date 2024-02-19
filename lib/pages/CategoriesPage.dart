import 'package:todo_app/config/imorts.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 500),
      padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //App title
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Spacer(),
                Text(
                  "Kategoriyalar",
                  style: TextStyle(
                      color: AppColor.blue5,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.add_circle_outline_outlined,
                      color: AppColor.blue5, size: 30),
                ),
              ],
            ),
          ),
          //fewwe
          Container(
            padding:
                EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 5),
            decoration: BoxDecoration(
                border: Border.all(color: AppColor.blue5),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Text("Musiqa",
                    style: TextStyle(fontSize: 18, color: AppColor.blue5)),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert_outlined, color: AppColor.blue5))
              ],
            ),
          )
        ],
      ),
    );
  }
}
