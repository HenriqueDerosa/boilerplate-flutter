import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomFadeTransition extends CustomTransition {
  @override
  Widget buildTransition(
      BuildContext context,
      Curve curve,
      Alignment alignment,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return Align(
      alignment: Alignment.center,
      child: FadeTransition(
        opacity: CurvedAnimation(
          parent: animation,
          curve: curve,
        ),
        child: child,
      ),
    );
  }
}
