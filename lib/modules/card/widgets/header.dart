import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
   Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Users Overview",
              style: Get.textTheme.headlineSmall,),
        const SizedBox(height: 6),
        Text("browse all registered users with a responsive layout",
        style: Get.textTheme.bodyMedium,),
      ],
    ),);
  }
}
