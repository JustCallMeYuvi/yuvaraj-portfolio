// lib/utils/responsive_helper.dart
import 'package:flutter/material.dart';

enum DeviceType { mobile, tablet, desktop }

class ResponsiveHelper {
  static DeviceType getDeviceType(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width < 600) return DeviceType.mobile;
    if (width < 1024) return DeviceType.tablet;
    return DeviceType.desktop;
  }

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return w >= 600 && w < 1024;
  }

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static EdgeInsets sectionPadding(BuildContext context) {
    if (isMobile(context)) {
      return const EdgeInsets.symmetric(horizontal: 20, vertical: 50);
    } else if (isTablet(context)) {
      return const EdgeInsets.symmetric(horizontal: 40, vertical: 70);
    }
    return const EdgeInsets.symmetric(horizontal: 80, vertical: 80);
  }

  static double headingFontSize(BuildContext context) {
    if (isMobile(context)) return 28;
    if (isTablet(context)) return 36;
    return 48;
  }

  static double heroFontSize(BuildContext context) {
    if (isMobile(context)) return 34;
    if (isTablet(context)) return 50;
    return 68;
  }

  static int projectGridColumns(BuildContext context) {
    if (isMobile(context)) return 1;
    if (isTablet(context)) return 2;
    return 3;
  }

  static int skillGridColumns(BuildContext context) {
    if (isMobile(context)) return 2;
    if (isTablet(context)) return 3;
    return 4;
  }
  static int statsGridColumns(BuildContext context) {
  if (isMobile(context)) return 2;
  if (isTablet(context)) return 2;
  return 4;
}
}