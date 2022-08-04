import 'package:flutter/material.dart';

import 'tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        // shrinkWrap: true,
        children: [
          TaskTile(),
          TaskTile(),
          TaskTile(),
          TaskTile(),
          TaskTile(),
          TaskTile(),
          TaskTile(),
        ],
      ),
    );
  }
}
