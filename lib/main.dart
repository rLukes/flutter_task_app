import 'package:flutter/material.dart';
import 'package:flutter_task/screen/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task app',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: TasksScreen(),
    );
  }
}


