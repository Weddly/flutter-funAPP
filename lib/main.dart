import 'package:flutter/material.dart';
import 'package:widget/views/inicial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fun APP',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: InicialPage(),
    );
  }
}
