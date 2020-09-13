import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo/models/task.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final Function taskListCallback;
  TasksList({this.tasks, this.taskListCallback});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (newValue) {
            taskListCallback(newValue, index);
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
