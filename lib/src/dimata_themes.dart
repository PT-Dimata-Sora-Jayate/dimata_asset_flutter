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
    String? primaryFontFamily,
    String? secondaryFontFamily,
    ColorScheme? colorScheme,
  }) {
    final colors = DimataColors();

    // Buat MaterialColor dari warna primer
    final primarySwatch = MaterialColor(
      colors.primaryLight.value,
      <int, Color>{
        50: colors.primaryLight.withOpacity(0.1),
        100: colors.primaryLight.withOpacity(0.2),
        200: colors.primaryLight.withOpacity(0.3),
        300: colors.primaryLight.withOpacity(0.4),
        400: colors.primaryLight.withOpacity(0.5),
        500: colors.primaryLight,
        600: colors.primaryLight.withOpacity(0.7),
        700: colors.primaryLight.withOpacity(0.8),
        800: colors.primaryLight.withOpacity(0.9),
        900: colors.primaryLight,
      },
    );

    return ThemeData(
      brightness: Brightness.light,
      primarySwatch: primarySwatch,
      primaryColor: colors.primaryLight,
      colorScheme: colorScheme ??
          ColorScheme.light(
            primary: colors.primaryLight,
            primaryContainer: colors.primaryLight.withOpacity(0.2),
            secondary: colors.secondaryLight,
            secondaryContainer: colors.secondaryLightVariant,
            surface: colors.surfaceLight,
            background: colors.backgroundLight,
            error: colors.errorLight,
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onSurface: colors.textPrimaryLight,
            onBackground: colors.textPrimaryLight,
            onError: Colors.white,
          ),
      scaffoldBackgroundColor: colors.backgroundLight,
      fontFamily: GoogleFonts.openSans().fontFamily,
      textTheme: TextTheme(
        displayLarge: DimataFonts.heading1(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: colors.textPrimaryLight,
        ),
        displayMedium: DimataFonts.heading2(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: colors.textPrimaryLight,
        ),
        displaySmall: DimataFonts.heading3(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: colors.textPrimaryLight,
        ),
        headlineMedium: DimataFonts.heading4(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: colors.textPrimaryLight,
        ),
        headlineSmall: DimataFonts.heading5(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: colors.textPrimaryLight,
        ),
        titleLarge: DimataFonts.heading6(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: colors.textPrimaryLight,
        ),
        bodyLarge: DimataFonts.bodyLarge(
          fontFamily: secondaryFontFamily ?? 'Open Sans',
          color: colors.textPrimaryLight,
        ),
        bodyMedium: DimataFonts.bodyMedium(
          fontFamily: secondaryFontFamily ?? 'Open Sans',
          color: colors.textPrimaryLight,
        ),
        bodySmall: DimataFonts.bodySmall(
          fontFamily: secondaryFontFamily ?? 'Open Sans',
          color: colors.textSecondaryLight,
        ),
        labelLarge: DimataFonts.button(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: Colors.white,
        ),
        labelMedium: DimataFonts.buttonSmall(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: Colors.white,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: colors.primaryLight,
        foregroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        titleTextStyle: DimataFonts.heading6(
          color: Colors.white,
          fontFamily: primaryFontFamily ?? 'Montserrat',
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: colors.primaryLight,
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
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colors.primaryLight,
          textStyle: DimataFonts.button(
            fontFamily: primaryFontFamily ?? 'Montserrat',
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colors.primaryLight,
          textStyle: DimataFonts.button(
            fontFamily: primaryFontFamily ?? 'Montserrat',
          ),
          side: BorderSide(color: colors.primaryLight),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 12,
          ),
        ),
      ),
      cardTheme: CardTheme(
        color: colors.surfaceLight,
        elevation: 1,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: colors.textDisabledLight.withOpacity(0.2),
        thickness: 1,
        space: 1,
      ),
    );
  }

  /// Membuat tema dark dengan opsi kustomisasi
  static ThemeData dark({
    String? primaryFontFamily,
    String? secondaryFontFamily,
    ColorScheme? colorScheme,
  }) {
    final colors = DimataColors();

    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: colors.primaryDark,
      colorScheme: colorScheme ??
          ColorScheme.dark(
            primary: colors.primaryDark,
            primaryContainer: colors.primaryDark.withOpacity(0.2),
            secondary: colors.secondaryDark,
            secondaryContainer: colors.secondaryDarkVariant,
            surface: colors.surfaceDark,
            background: colors.backgroundDark,
            error: colors.errorDark,
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onSurface: colors.textPrimaryDark,
            onBackground: colors.textPrimaryDark,
            onError: Colors.white,
          ),
      scaffoldBackgroundColor: colors.backgroundDark,
      fontFamily: GoogleFonts.openSans().fontFamily,
      textTheme: TextTheme(
        displayLarge: DimataFonts.heading1(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: colors.textPrimaryDark,
        ),
        displayMedium: DimataFonts.heading2(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: colors.textPrimaryDark,
        ),
        displaySmall: DimataFonts.heading3(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: colors.textPrimaryDark,
        ),
        headlineMedium: DimataFonts.heading4(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: colors.textPrimaryDark,
        ),
        headlineSmall: DimataFonts.heading5(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: colors.textPrimaryDark,
        ),
        titleLarge: DimataFonts.heading6(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: colors.textPrimaryDark,
        ),
        bodyLarge: DimataFonts.bodyLarge(
          fontFamily: secondaryFontFamily ?? 'Open Sans',
          color: colors.textPrimaryDark,
        ),
        bodyMedium: DimataFonts.bodyMedium(
          fontFamily: secondaryFontFamily ?? 'Open Sans',
          color: colors.textPrimaryDark,
        ),
        bodySmall: DimataFonts.bodySmall(
          fontFamily: secondaryFontFamily ?? 'Open Sans',
          color: colors.textSecondaryDark,
        ),
        labelLarge: DimataFonts.button(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: colors.textPrimaryDark,
        ),
        labelMedium: DimataFonts.buttonSmall(
          fontFamily: primaryFontFamily ?? 'Montserrat',
          color: colors.textPrimaryDark,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: colors.surfaceDark,
        foregroundColor: colors.textPrimaryDark,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: DimataFonts.heading6(
          color: colors.textPrimaryDark,
          fontFamily: primaryFontFamily ?? 'Montserrat',
        ),
        iconTheme: IconThemeData(color: colors.textPrimaryDark),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: colors.textPrimaryDark,
          backgroundColor: colors.primaryDark,
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
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colors.primaryDark,
          textStyle: DimataFonts.button(
            fontFamily: primaryFontFamily ?? 'Montserrat',
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colors.primaryDark,
          textStyle: DimataFonts.button(
            fontFamily: primaryFontFamily ?? 'Montserrat',
          ),
          side: BorderSide(color: colors.primaryDark),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 12,
          ),
        ),
      ),
      cardTheme: CardTheme(
        color: colors.surfaceDark,
        elevation: 1,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: colors.textDisabledDark.withOpacity(0.2),
        thickness: 1,
        space: 1,
      ),
    );
  }

  /// Mendapatkan tema yang sesuai dengan mode saat ini
  static ThemeData getAppTheme([ThemeMode? themeMode]) {
    switch (themeMode ?? ThemeMode.system) {
      case ThemeMode.light:
        return light();
      case ThemeMode.dark:
        return dark();
      case ThemeMode.system:
      default:
        final brightness = WidgetsBinding.instance.window.platformBrightness;
        return brightness == Brightness.dark ? dark() : light();
    }
  }
}
