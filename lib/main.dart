import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app_ui/moduls/on_board/views/on_board_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App UI',
      home: OnBoardView()
    );
  }
}
