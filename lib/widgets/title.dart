import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart' as rf;

class ResponsiveTitle extends StatelessWidget {
  final String text;
  const ResponsiveTitle({required this .text,super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Get.textTheme.headlineMedium?.copyWith(
        color: Theme.of(context).colorScheme.onPrimary,
        fontSize: rf.ResponsiveValue<double>(
                  context,
                  defaultValue: 18,
                  conditionalValues: [
                    rf.Condition.equals(name: rf.TABLET , value : 28),
                    rf.Condition.equals(name: rf.DESKTOP , value : 34)
                  ]).value
      ),
    );
  }
}
