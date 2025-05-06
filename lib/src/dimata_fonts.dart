// lib/src/dimata_fonts.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Class helper untuk font dengan dukungan Google Fonts
class DimataFonts {
  // Private constructor untuk mencegah instantiasi
  DimataFonts._();
  
  /// Metode untuk mendapatkan TextStyle dengan Google Fonts
  static TextStyle heading1({
    Color color = Colors.black,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? 'Montserrat',
      fontSize: 28.0,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color,
      height: 1.3,
    );
  }
  
  static TextStyle heading2({
    Color color = Colors.black,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? 'Montserrat',
      fontSize: 24.0,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color,
      height: 1.3,
    );
  }
  
  static TextStyle heading3({
    Color color = Colors.black,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? 'Montserrat',
      fontSize: 20.0,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color,
      height: 1.3,
    );
  }
  
  static TextStyle bodyLarge({
    Color color = Colors.black,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? 'Open Sans',
      fontSize: 16.0,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color,
      height: 1.5,
    );
  }
  
  static TextStyle bodyMedium({
    Color color = Colors.black,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? 'Open Sans',
      fontSize: 14.0,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color,
      height: 1.5,
    );
  }
  
  static TextStyle bodySmall({
    Color color = Colors.black87,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? 'Open Sans',
      fontSize: 12.0,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color,
      height: 1.5,
    );
  }
  
  static TextStyle button({
    Color color = Colors.white,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    return GoogleFonts.getFont(
      fontFamily ?? 'Montserrat',
      fontSize: 14.0,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color,
      letterSpacing: 0.5,
    );
  }
}