import 'package:flutter/foundation.dart';
import '../models/task.dart';

class TaskProvider with ChangeNotifier {
  final List<Task> _tasks = []; //no se reasigna despues de inicializarse

  List<Task> get tasks {
    return [..._tasks];
  }

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  // Implement methods to update and delete tasks

  // You can also add methods for fetching and managing tasks
}