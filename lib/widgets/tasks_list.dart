import 'package:flutter/material.dart';
import 'package:todo_app/model/task_model.dart';

import 'tasks_tile.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'buy milk', isDone: false),
    Task(name: 'buy bugger', isDone: false),
    Task(name: 'buy tea', isDone: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              taskTitle: tasks[index].name,
              isChecked: tasks[index].isDone,
              checkboxCallback: (checkboxState) {
                setState(() {
                  tasks[index].toggleDone();
                });
              });
          // checkboxCallback:
        },
        itemCount: tasks.length,
      ),
    );
  }
}
