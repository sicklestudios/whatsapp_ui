import 'package:flutter/material.dart';

class ResponsvieLayout extends StatelessWidget {
  final Widget mobileScreen;
  final Widget webScreen;
  const ResponsvieLayout(
      {required this.webScreen, required this.mobileScreen, super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 900) {
          //return the mobile screen
          return mobileScreen;
        }
        //return the webscreen
        return webScreen;
      },
    );
  }
}
