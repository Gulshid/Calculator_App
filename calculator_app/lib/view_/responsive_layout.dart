import 'package:calculator_app/Utills/responsive.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;

  const ResponsiveLayout(
      {super.key, required this.mobileBody,
      required this.tabletBody,
      required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: mobileBody,
      tablet: tabletBody,
      desktop: desktopBody,
    );
  }
}