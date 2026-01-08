import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysecondpr/modules/login/widgets/auth_card.dart';
import 'package:mysecondpr/modules/login/widgets/login_form.dart';
import 'package:mysecondpr/modules/login/widgets/responsive_auth_layout.dart';
import 'package:mysecondpr/widgets/title.dart';
import 'login_controller.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ResponsiveTitle(text:'Login'),
        centerTitle: true,
      ),
      body:ResponsiveAuthLayout(
          child: AuthCard(
              child: LoginForm()))
      // body:AuthCard(child: LoginForm() ));
      );
  }
}