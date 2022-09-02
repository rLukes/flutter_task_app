import 'package:flutter/material.dart';
import 'package:flutter_task/bloc/bloc_export.dart';
import 'package:flutter_task/models/task.dart';
import 'package:flutter_task/screen/tasks_screen.dart';

void main() {
  BlocOverrides.runZoned(() => {
  runApp(const MyApp()),
  });

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksBloc()..add(AddTask(task:Task(title: 'Viono '))),
      child: MaterialApp(
        title: 'Task app',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: TasksScreen(),
      ),
    );
  }
}


