import 'package:flutter/material.dart';

extension ResponsiveLayout on BuildContext {
  // screen sizes
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  // typography
  double get headline => 25.0;
  double get subtitle => 20.0;
  double get bodyText => 15.0;
}
