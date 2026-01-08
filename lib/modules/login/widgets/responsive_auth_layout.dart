import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveAuthLayout extends StatelessWidget {
  final Widget child;
  const ResponsiveAuthLayout({super.key , required this.child});

  @override
  Widget build(BuildContext context) {
    final bp = ResponsiveBreakpoints.of(context);
    return Center(
      child: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(
                          horizontal:  bp.isMobile ? 16 : 24,
        ),
          child: ConstrainedBox(constraints: BoxConstraints(
                    maxWidth: bp.isMobile? double.infinity : 420,
              ),
              child: child,
          ),
        ),
      ),
    );
  }
}
