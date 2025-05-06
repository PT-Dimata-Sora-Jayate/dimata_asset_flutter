// lib/src/dimata_themes.dart
import 'package:flutter/material.dart';
import 'dimata_fonts.dart';
import 'dimata_colors.dart';
import 'package:google_fonts/google_fonts.dart';

/// Class helper untuk theme
class DimataThemes {
  // Private constructor untuk mencegah instantiasi
  DimataThemes._();
  
  /// Membuat tema light dengan opsi kustomisasi
  static ThemeData light({
    // Color? primaryColor,
    // Color? secondaryColor,
    String? primaryFontFamily,
    String? secondaryFontFamily,
    ColorScheme? colorScheme,
  }) {
    // Gunakan warna default jika tidak disediakan
    final primary =  DimataColors().primaryLight;
    final secondary =  DimataColors().secondary;

    DimataColors().configPrimaryColor(primary);
    
    // Buat MaterialColor dari warna primer
    final primarySwatch = MaterialColor(
      primary.value,
      <int, Color>{
        50: primary.withOpacity(0.1),
        100: primary.withOpacity(0.2),
        200: primary.withOpacity(0.3),
        300: primary.withOpacity(0.4),
        400: primary.withOpacity(0.5),
        500: primary,
        600: primary.withOpacity(0.7),
        700: primary.withOpacity(0.8),
        800: primary.withOpacity(0.9),
        900: primary,
      },
    );
    
    return ThemeData(
      primarySwatch: primarySwatch,
      primaryColor: primary,
      colorScheme: colorScheme ?? ColorScheme.light(
        primary: primary,
        primaryContainer: primary.withOpacity(0.5),
        secondary: secondary,
        secondaryContainer: secondary.withOpacity(0.5),
        surface: DimataColors().surface,
        error: DimataColors().error,
      ),
      scaffoldBackgroundColor: DimataColors().surface,
      fontFamily: GoogleFonts.openSans().fontFamily,
      textTheme: TextTheme(
        displayLarge: DimataFonts.heading1(
          fontFamily: primaryFontFamily ?? 'Montserrat',
        ),
        displayMedium: DimataFonts.heading2(
          fontFamily: primaryFontFamily ?? 'Montserrat',
        ),
        displaySmall: DimataFonts.heading3(
          fontFamily: primaryFontFamily ?? 'Montserrat',
        ),
        bodyLarge: DimataFonts.bodyLarge(
          fontFamily: secondaryFontFamily ?? 'Open Sans',
        ),
        bodyMedium: DimataFonts.bodyMedium(
          fontFamily: secondaryFontFamily ?? 'Open Sans',
        ),
        bodySmall: DimataFonts.bodySmall(
          fontFamily: secondaryFontFamily ?? 'Open Sans',
        ),
        labelLarge: DimataFonts.button(
          fontFamily: primaryFontFamily ?? 'Montserrat',
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: DimataFonts.heading3(
          color: Colors.white,
          fontFamily: primaryFontFamily ?? 'Montserrat',
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: primary,
          textStyle: DimataFonts.button(
            fontFamily: primaryFontFamily ?? 'Montserrat',
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 12,
          ),
        ),
      ),
    );
  }
  
  /// Membuat tema dark dengan opsi kustomisasi
  static ThemeData dark({
    // Color? primaryColor,
    // Color? secondaryColor,
    String? primaryFontFamily,
    String? secondaryFontFamily,
    ColorScheme? colorScheme,
  }) {
    // Gunakan warna default jika tidak disediakan
    final primary =  DimataColors().primaryDark;
    final secondary = DimataColors().secondary;
  
    DimataColors().configPrimaryColor(primary);
    
    return ThemeData.dark().copyWith(
      primaryColor: primary,
      colorScheme: colorScheme ?? ColorScheme.dark(
        primary: primary,
        primaryContainer: primary.withOpacity(0.5),
        secondary: secondary,
        secondaryContainer: secondary.withOpacity(0.5),
        surface: const Color(0xFF121212),
        error: DimataColors().error,
      ),
      scaffoldBackgroundColor: const Color(0xFF121212),
      textTheme: TextTheme(
        displayLarge: DimataFonts.heading1(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: Colors.white,
        ),
        displayMedium: DimataFonts.heading2(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: Colors.white,
        ),
        displaySmall: DimataFonts.heading3(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: Colors.white,
        ),
        bodyLarge: DimataFonts.bodyLarge(
          fontFamily: secondaryFontFamily ?? 'Open Sans',
          color: Colors.white,
        ),
        bodyMedium: DimataFonts.bodyMedium(
          fontFamily: secondaryFontFamily ?? 'Open Sans',
          color: Colors.white,
        ),
        bodySmall: DimataFonts.bodySmall(
          fontFamily: secondaryFontFamily ?? 'Open Sans',
          color: Colors.white70,
        ),
        labelLarge: DimataFonts.button(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: Colors.white,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: DimataFonts.heading3(
          color: Colors.white,
          fontFamily: primaryFontFamily ?? 'Montserrat',
        ),
      ),
    );
  }
}