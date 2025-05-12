// lib/src/dimata_fonts.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Class helper untuk font dengan dukungan Google Fonts
class DimataFonts {
  // Private constructor untuk mencegah instantiasi
  DimataFonts._();

  // Font family constants
  static const String primaryFontFamily = 'Montserrat';
  static const String secondaryFontFamily = 'Open Sans';

  /// Heading 1 - Largest heading (Display Large)
  static TextStyle heading1({
    Color? color,
    FontWeight fontWeight = FontWeight.w700,
    String? fontFamily,
    double? letterSpacing,
    double? height,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? primaryFontFamily,
      fontSize: 32.0,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing ?? -0.5,
      height: height ?? 1.2,
    );
  }

  /// Heading 2 (Display Medium)
  static TextStyle heading2({
    Color? color,
    FontWeight fontWeight = FontWeight.w700,
    String? fontFamily,
    double? letterSpacing,
    double? height,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? primaryFontFamily,
      fontSize: 28.0,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing ?? -0.5,
      height: height ?? 1.2,
    );
  }

  /// Heading 3 (Display Small)
  static TextStyle heading3({
    Color? color,
    FontWeight fontWeight = FontWeight.w600,
    String? fontFamily,
    double? letterSpacing,
    double? height,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? primaryFontFamily,
      fontSize: 24.0,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing ?? 0.0,
      height: height ?? 1.3,
    );
  }

  /// Heading 4 (Headline Medium)
  static TextStyle heading4({
    Color? color,
    FontWeight fontWeight = FontWeight.w600,
    String? fontFamily,
    double? letterSpacing,
    double? height,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? primaryFontFamily,
      fontSize: 20.0,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing ?? 0.15,
      height: height ?? 1.3,
    );
  }

  /// Heading 5 (Headline Small)
  static TextStyle heading5({
    Color? color,
    FontWeight fontWeight = FontWeight.w600,
    String? fontFamily,
    double? letterSpacing,
    double? height,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? primaryFontFamily,
      fontSize: 18.0,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing ?? 0.15,
      height: height ?? 1.3,
    );
  }

  /// Heading 6 (Title Large)
  static TextStyle heading6({
    Color? color,
    FontWeight fontWeight = FontWeight.w500,
    String? fontFamily,
    double? letterSpacing,
    double? height,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? primaryFontFamily,
      fontSize: 16.0,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing ?? 0.15,
      height: height ?? 1.5,
    );
  }

  /// Body Large (Body Large)
  static TextStyle bodyLarge({
    Color? color,
    FontWeight fontWeight = FontWeight.normal,
    String? fontFamily,
    double? letterSpacing,
    double? height,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? secondaryFontFamily,
      fontSize: 16.0,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing ?? 0.5,
      height: height ?? 1.5,
    );
  }

  /// Body Medium (Body Medium)
  static TextStyle bodyMedium({
    Color? color,
    FontWeight fontWeight = FontWeight.normal,
    String? fontFamily,
    double? letterSpacing,
    double? height,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? secondaryFontFamily,
      fontSize: 14.0,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing ?? 0.25,
      height: height ?? 1.5,
    );
  }

  /// Body Small (Body Small)
  static TextStyle bodySmall({
    Color? color,
    FontWeight fontWeight = FontWeight.normal,
    String? fontFamily,
    double? letterSpacing,
    double? height,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? secondaryFontFamily,
      fontSize: 12.0,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing ?? 0.4,
      height: height ?? 1.5,
    );
  }

  /// Button text style (Label Large)
  static TextStyle button({
    Color? color,
    FontWeight fontWeight = FontWeight.w500,
    String? fontFamily,
    double? letterSpacing,
    double? height,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? primaryFontFamily,
      fontSize: 14.0,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing ?? 0.5,
      height: height ?? 1.0,
    );
  }

  /// Small button text style (Label Small)
  static TextStyle buttonSmall({
    Color? color,
    FontWeight fontWeight = FontWeight.w500,
    String? fontFamily,
    double? letterSpacing,
    double? height,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? primaryFontFamily,
      fontSize: 12.0,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing ?? 0.5,
      height: height ?? 1.0,
    );
  }

  /// Caption text style (Label Medium)
  static TextStyle caption({
    Color? color,
    FontWeight fontWeight = FontWeight.normal,
    String? fontFamily,
    double? letterSpacing,
    double? height,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? secondaryFontFamily,
      fontSize: 12.0,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing ?? 0.4,
      height: height ?? 1.3,
    );
  }

  /// Overline text style
  static TextStyle overline({
    Color? color,
    FontWeight fontWeight = FontWeight.normal,
    String? fontFamily,
    double? letterSpacing,
    double? height,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? secondaryFontFamily,
      fontSize: 10.0,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing ?? 1.5,
      height: height ?? 1.5,
    );
  }
}
