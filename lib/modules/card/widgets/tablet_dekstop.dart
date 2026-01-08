import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysecondpr/modules/card/card_controller.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'user_card_tile.dart';

class TabletDesktopGrid extends GetView<CardController> {
  const TabletDesktopGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final bp = ResponsiveBreakpoints.of(context);
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: controller.users.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: bp.isTablet ? 2 : 4,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 3,),
      physics: const AlwaysScrollableScrollPhysics(),
      itemBuilder: (_,index){
        return UserCardTile(user: controller.users[index]);
      },
    );
  }
}
