import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo/models/task.data.dart';
import 'package:todaydo/widget/TaskTile.dart';

class task_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, child) {
        return ListView.builder(
          itemCount: TaskData.Tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: TaskData.Tasks[index].isDone,
              tasktitle: TaskData.Tasks[index].name,
              Checkboxchange: (bool? newvalue) {
                // setState(() {
                //   widget.Tasks[index].doneChange();
                // });
              },
            );
          },
        );
      },
    );
  }
}
