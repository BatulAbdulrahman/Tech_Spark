import 'package:flutter/material.dart';
import './UI/firstscreen.dart';
import './UI/Home.dart';

void main() {
  runApp(MaterialApp(
    home:new FirstScreen(),
    title: 'Tech Spark',
    debugShowCheckedModeBanner: false,
    routes: <String,WidgetBuilder>{
      '/FirstScreen':(BuildContext context) => new FirstScreen(),
       '/Home':(BuildContext context) => new Home(),
    },
  ));
}
