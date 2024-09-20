class Task {
  final String id;
  final String title;
  bool isDone; //se quita el modificador final para poder cambiar su valor

  Task({
    required this.id,
    required this.title,
    this.isDone = false,
  });

  void toggleDone(){
    isDone = !isDone;
  }
}