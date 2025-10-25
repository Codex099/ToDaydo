import 'package:flutter/material.dart';
import 'package:todaydo/models/task.data.dart';
import 'package:todaydo/screens/tasksScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => TaskData(),
      child: MaterialApp(
        home: Tasksscreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
