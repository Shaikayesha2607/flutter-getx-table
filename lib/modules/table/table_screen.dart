import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysecondpr/modules/table/widgets/course_table.dart';
import 'package:mysecondpr/widgets/title.dart';
import 'package:responsive_framework/responsive_framework.dart';


class TableScreen extends StatelessWidget {
  TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bp = ResponsiveBreakpoints.of(context);
    return Scaffold(
      appBar: AppBar(
          title:  ResponsiveTitle(text:'Course Enrollments'),
          leading: IconButton(onPressed: (){
            Get.back();
    }, icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: bp.isDesktop ? 1100 : double.infinity
            ),
            child: const CourseTable(),
        ),
      )

    );
  }
}
