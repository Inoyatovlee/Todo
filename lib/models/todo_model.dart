class TodoModel {
  int id;
  String title;
  String content;
  bool isDone;
  bool isDelete;

  TodoModel({
    required this.id,
    required this.title,
    required this.content,
    required this.isDone,
    required this.isDelete,
  });

  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(
        id: json['id'],
        title: json['title'],
        content: json['content'],
        isDone: json['isDone'],
        isDelete: json['isDelete']);
  }
}
