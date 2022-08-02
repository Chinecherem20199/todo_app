import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  // void checkBoxCallBack(bool currentCheckBox) {
  //   setState(() {
  //     isChecked = currentCheckBox;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
          checkBoxState: isChecked,
          toggleCheckbox: (bool checkBoxState) {
            setState(() {
              isChecked = checkBoxState;
            });
          }),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function toggleCheckbox;
  TaskCheckBox({required this.checkBoxState, required this.toggleCheckbox});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckbox(),
      value: checkBoxState,
    );
  }
}
