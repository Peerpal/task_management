import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_manager/screens/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Task Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: HexColor('#2D5151'),
        primaryColorDark: HexColor('#2D5151'),
        colorScheme: ColorScheme.light(
          primary: HexColor('#2D5151'),
        ),
      ),
      home: const MainPage(),
    );
  }
}
