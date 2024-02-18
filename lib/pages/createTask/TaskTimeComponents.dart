import 'package:todo_app/config/imorts.dart';

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
