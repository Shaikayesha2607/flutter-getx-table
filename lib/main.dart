import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysecondpr/routes/app_pages.dart';
import 'package:mysecondpr/routes/app_routes.dart';
import 'package:mysecondpr/theme/responsive_text_theme.dart';
import 'package:responsive_framework/responsive_framework.dart';



void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3:true ,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          //textTheme:  responsiveTextTheme(context),
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            centerTitle: true
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white
          )
        )
      ),
      //builder
      builder: (context , child){
        return ResponsiveBreakpoints.builder(
            child: child!,
            breakpoints: const [
              Breakpoint(start: 0, end: 450 ,name: MOBILE),
              Breakpoint(start:451, end:800 , name:TABLET),
              Breakpoint(start: 801, end: 1920, name: DESKTOP)

            ]);
      },
      initialRoute:Routes.initial,
      getPages: AppPages.routes,

    );

  }
}


