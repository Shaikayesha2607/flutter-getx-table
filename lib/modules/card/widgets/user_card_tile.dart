import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:mysecondpr/modules/card/card_controller.dart';

class UserCardTile extends GetView<CardController>{
  final user;
  const UserCardTile({super.key, required this.user});
  @override
  Widget build(BuildContext context) {
    final bp = ResponsiveBreakpoints.of(context);
    return Card(
      elevation: 4,
      margin:EdgeInsets.symmetric(
      horizontal : bp.isMobile ? 12 : 0,
      vertical:  8),
      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.person)),
        title: Text(user.name,
        style: Get.textTheme.titleMedium
        ),
        subtitle: bp.isMobile ? null
              :Text(
                "Age: ${user.age}",
          style: const TextStyle(color: Colors.grey),
        ),
        onTap: controller.showPopup,
      ),
    );
  }
}