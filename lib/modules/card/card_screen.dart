import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysecondpr/modules/card/card_controller.dart';
import 'package:mysecondpr/widgets/title.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:mysecondpr/modules/card/widgets/header.dart';
import 'package:mysecondpr/modules/card/widgets/mobilelist.dart';
import 'package:mysecondpr/modules/card/widgets/tablet_dekstop.dart';
import '../../routes/app_routes.dart';

class CardScreen extends GetView<CardController> {
   CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bp = ResponsiveBreakpoints.of(context);
    return Scaffold(
      appBar: AppBar(
        title: ResponsiveTitle(text: 'List of Users'),
        centerTitle: true,
      ),
      body: GetBuilder<CardController>(
          builder:(_){
            return Align(
                alignment: Alignment.topCenter,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: bp.isDesktop ? 1100 : double.infinity
                    ),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start ,
                        children: [
                          //HEADER
                          Header(),
                        // RESPONSIVE CONTENT
                          Expanded(
                              child: bp.isMobile
                              ? MobileList() : TabletDesktopGrid(),)
                        ],
                      ),
                  )
              );
          }
      ),
      floatingActionButton: bp.isMobile? FloatingActionButton(
          onPressed: (){
          Get.toNamed(Routes.login);},
        backgroundColor: Colors.blue,
        child:Icon(Icons.arrow_forward),)
        : FloatingActionButton.extended(
          onPressed: (){
            Get.toNamed(Routes.login);
          },
          backgroundColor: Colors.blue,
          icon: Icon(Icons.arrow_forward),
          label: Text('Go to Login Page')),
    ) ;
  }
}
