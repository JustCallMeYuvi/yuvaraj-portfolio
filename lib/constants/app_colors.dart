// lib/constants/app_constants.dart
import 'package:flutter/material.dart';

class AppColors {
  // Primary brand colors
  static const Color primary = Color(0xFF6C63FF);
  static const Color primaryLight = Color(0xFF9B94FF);
  static const Color primaryDark = Color(0xFF4A42CC);
  static const Color accent = Color(0xFF00D9FF);
  static const Color accentSecondary = Color(0xFF00FFA3);

  // Dark theme
  static const Color darkBg = Color(0xFF0A0A0F);
  static const Color darkSurface = Color(0xFF12121A);
  static const Color darkCard = Color(0xFF1A1A2E);
  static const Color darkBorder = Color(0xFF2A2A40);
  static const Color darkText = Color(0xFFF0F0FF);
  static const Color darkSubtext = Color(0xFF9090B0);

  // Light theme
  static const Color lightBg = Color(0xFFF5F5FF);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightCard = Color(0xFFEEEEFF);
  static const Color lightBorder = Color(0xFFDDDDF0);
  static const Color lightText = Color(0xFF0A0A1A);
  static const Color lightSubtext = Color(0xFF505070);

  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, accent],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient heroGradient = LinearGradient(
    colors: [Color(0xFF0A0A0F), Color(0xFF1A0A2E), Color(0xFF0A0A0F)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient cardGradient = LinearGradient(
    colors: [Color(0xFF1A1A2E), Color(0xFF16213E)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

class AppStrings {
  static const String name = 'Yuvaraj P';
  static const String role = 'Flutter Developer';
  static const String tagline = 'Building Cross-Platform Mobile Experiences';
  static const String experience = '3+ Years';
  static const String location = 'Chennai, India';
  static const String email = 'yuviyuva363@gmail.com';
  static const String phone = '+91 98944 83640';
  static const String linkedin = 'https://www.linkedin.com/in/yuvaraj-p-36a922194/';
static const String github =
    'https://github.com/JustCallMeYuvi';
  static const String resumeUrl = '';

  static const String aboutText =
      'Passionate Flutter Developer with 3+ years of hands-on experience building enterprise-grade, cross-platform mobile applications for Android and iOS. I specialize in crafting clean, scalable architectures with real-world impact — from automating factory gate operations to GPS-based attendance systems used daily by hundreds of employees.';
}

class AppDimensions {
  static const double maxWidth = 1200.0;
  static const double sectionPadding = 80.0;
  static const double mobilePadding = 20.0;
  static const double cardRadius = 16.0;
  static const double navHeight = 70.0;
}

class AppSections {
  static const String home = 'Home';
  static const String about = 'About';
  static const String skills = 'Skills';
  static const String experience = 'Experience';
  static const String projects = 'Projects';
  static const String services = 'Services';
  static const String contact = 'Contact';

  static const List<String> navItems = [
    home,
    about,
    skills,
    experience,
    projects,
    services,
    contact,
  ];
}