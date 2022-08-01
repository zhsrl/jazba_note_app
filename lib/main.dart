import 'package:flutter/material.dart';
import 'package:jazba_app/screens/folders_screen.dart';
import 'package:jazba_app/widgets/note_widget.dart';
import 'consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'EuclidCircular',
            scaffoldBackgroundColor: MainColors.darkColor),
        home: FoldersScreen());
  }
}
