import 'package:calappone/TodoList/todoHome.dart';
import 'package:calappone/calcsAppHome/CalsAppHome.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoListHome(),
    );
  }
}
