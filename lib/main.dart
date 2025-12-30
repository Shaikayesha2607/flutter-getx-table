import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/table_screen.dart';
import 'package:mysecondpr/views/card_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: CardScreen(),
    ),
  );
}
