import 'package:flutter/material.dart';
import 'package:flutter_lab/screens/ListScreen.dart';

void main() => runApp(FlutterLabApp());

class FlutterLabApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xffe4161c),
        accentColor: Color(0xffe4161c),
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xffe4161c),
          textTheme: ButtonTextTheme.primary
        ),
      ),
      home: ListScreen(),
    );
  }
}
