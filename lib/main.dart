import 'package:flutter/material.dart';
import 'package:flutter_boro_uiux_kids_learning_app/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estudo 1 - Boro uiux kids',
      theme: ThemeData(fontFamily: "Montserrat"),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
