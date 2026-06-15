// lib/theme/app_theme.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';


class AppTheme {
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkBg,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.accent,
      surface: AppColors.darkSurface,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: AppColors.darkText,
    ),
    textTheme: _buildTextTheme(AppColors.darkText, AppColors.darkSubtext),
    cardTheme: CardTheme(
      color: AppColors.darkCard,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.cardRadius),
        side: const BorderSide(color: AppColors.darkBorder),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkBg.withOpacity(0.9),
      elevation: 0,
      centerTitle: false,
      titleTextStyle: GoogleFonts.spaceGrotesk(
        color: AppColors.darkText,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: GoogleFonts.spaceGrotesk(
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        side: const BorderSide(color: AppColors.primary),
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: GoogleFonts.spaceGrotesk(
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.darkCard,
      labelStyle: GoogleFonts.spaceGrotesk(color: AppColors.accent, fontSize: 13),
      side: const BorderSide(color: AppColors.darkBorder),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    dividerTheme: const DividerThemeData(color: AppColors.darkBorder),
    extensions: const [],
  );

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightBg,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.accent,
      surface: AppColors.lightSurface,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: AppColors.lightText,
    ),
    textTheme: _buildTextTheme(AppColors.lightText, AppColors.lightSubtext),
    cardTheme: CardTheme(
      color: AppColors.lightSurface,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.cardRadius),
        side: const BorderSide(color: AppColors.lightBorder),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightBg.withOpacity(0.9),
      elevation: 0,
      centerTitle: false,
      titleTextStyle: GoogleFonts.spaceGrotesk(
        color: AppColors.lightText,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: GoogleFonts.spaceGrotesk(
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        side: const BorderSide(color: AppColors.primary),
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: GoogleFonts.spaceGrotesk(
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.lightCard,
      labelStyle: GoogleFonts.spaceGrotesk(color: AppColors.primaryDark, fontSize: 13),
      side: const BorderSide(color: AppColors.lightBorder),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    dividerTheme: const DividerThemeData(color: AppColors.lightBorder),
  );

  static TextTheme _buildTextTheme(Color primary, Color secondary) {
    return TextTheme(
      displayLarge: GoogleFonts.spaceGrotesk(
        fontSize: 64, fontWeight: FontWeight.w800, color: primary, height: 1.1,
      ),
      displayMedium: GoogleFonts.spaceGrotesk(
        fontSize: 48, fontWeight: FontWeight.w700, color: primary, height: 1.2,
      ),
      displaySmall: GoogleFonts.spaceGrotesk(
        fontSize: 36, fontWeight: FontWeight.w700, color: primary, height: 1.2,
      ),
      headlineLarge: GoogleFonts.spaceGrotesk(
        fontSize: 30, fontWeight: FontWeight.w700, color: primary,
      ),
      headlineMedium: GoogleFonts.spaceGrotesk(
        fontSize: 24, fontWeight: FontWeight.w600, color: primary,
      ),
      headlineSmall: GoogleFonts.spaceGrotesk(
        fontSize: 20, fontWeight: FontWeight.w600, color: primary,
      ),
      titleLarge: GoogleFonts.spaceGrotesk(
        fontSize: 18, fontWeight: FontWeight.w600, color: primary,
      ),
      bodyLarge: GoogleFonts.inter(
        fontSize: 16, color: secondary, height: 1.7,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 14, color: secondary, height: 1.6,
      ),
      labelLarge: GoogleFonts.spaceGrotesk(
        fontSize: 13, fontWeight: FontWeight.w600, color: primary,
        letterSpacing: 0.5,
      ),
    );
  }
}