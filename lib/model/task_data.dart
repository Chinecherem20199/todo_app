import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'task_model.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'buy milk', isDone: false),
    Task(name: 'buy bugger', isDone: false),
    Task(name: 'buy tea', isDone: false),
  ];
  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  // UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void updateTask(Task tasks) {
    tasks.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    // _tasks.removeAt(task);
    _tasks.remove(task);
    notifyListeners();
  }
}
