import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/views/home_page.dart';
import 'package:quizapp/views/html_page.dart';
import 'package:quizapp/views/result_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
