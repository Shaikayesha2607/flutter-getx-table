import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysecondpr/routes/app_pages.dart';


void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute:'/card',
      getPages: AppPages.routes,
    ),
  );
}
