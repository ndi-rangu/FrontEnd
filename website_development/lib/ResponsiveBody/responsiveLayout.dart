// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;
  
  ResponsiveLayout({required this.mobileBody, required this.tabletBody, required this.desktopBody});

 @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileBody;
        } else if (constraints.minWidth >= 600 && constraints.maxWidth < 1080) {
          return tabletBody;
        } else {
          return desktopBody; 
        }
      },
    );
  }
}