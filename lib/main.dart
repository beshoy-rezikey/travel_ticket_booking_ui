import 'package:booking_ticket_ui/screens/bottom_bar.dart';
import 'package:booking_ticket_ui/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: primary),
      home: const BottomBar(),
    );
  }
}
