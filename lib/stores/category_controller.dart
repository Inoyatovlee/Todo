import 'package:todo_app/config/imorts.dart';
import 'dart:async';

class CategoryController extends GetxController {
  //inputlar uchun shunaqa ochiladi
  TextEditingController title = TextEditingController();

  Future add() async {
    try {
      if (title.text.trim().isEmpty) {
        Get.snackbar("Error", "Kategoriya nomi kiritilmagan");
        return;
      }
      await MyDb().open();
      await MyDb()
          .db
          ?.rawInsert("INSERT INTO category (title) VALUES(?);", [title.text]);
      title.text = '';
      Get.back();
      Get.snackbar("Sucsess", "Yangi kategoriya yaratildi");
    } catch (err) {
      print(err);
    }
  }
}
