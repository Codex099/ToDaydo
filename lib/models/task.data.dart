import 'package:flutter/material.dart';
import 'package:todaydo/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> Tasks = [Task(name: "1.2.3"), Task(name: "4.5.6")];
}
