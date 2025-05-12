// lib/src/dimata_colors.dart
import 'package:flutter/material.dart';

/// Class helper untuk warna dengan kemampuan konfigurasi
class DimataColors {
  // Singleton pattern
  static final DimataColors _instance = DimataColors._internal();
  factory DimataColors() => _instance;
  DimataColors._internal();

  // Default warna primer
  Color _primaryLight = const Color(0xFF1A73E8);
  Color _primaryDark = const Color(0xFF8AB4F8);

  // Default warna sekunder
  Color _secondaryLight = const Color(0xFF34A853);
  Color _secondaryDark = const Color(0xFF81C995);
  Color _secondaryLightVariant = const Color(0xFF66D880);
  Color _secondaryDarkVariant = const Color(0xFF007926);

  // Default warna aksen
  Color _accentLight = const Color(0xFFEA4335);
  Color _accentDark = const Color(0xFFF28B82);

  // Default warna netral
  Color _backgroundLight = const Color(0xFFF8F9FA);
  Color _backgroundDark = const Color(0xFF202124);
  Color _surfaceLight = Colors.white;
  Color _surfaceDark = const Color(0xFF303134);
  Color _errorLight = const Color(0xFFDC3545);
  Color _errorDark = const Color(0xFFF28B82);

  // Default warna teks
  Color _textPrimaryLight = const Color(0xFF202124);
  Color _textPrimaryDark = Colors.white;
  Color _textSecondaryLight = const Color(0xFF5F6368);
  Color _textSecondaryDark = const Color(0xFF9AA0A6);
  Color _textDisabledLight = const Color(0xFF9AA0A6);
  Color _textDisabledDark = const Color(0xFF5F6368);

  // Current theme mode
  final ThemeMode _currentThemeMode = ThemeMode.system;

  // Getters untuk mengakses warna
  Color get primary => _isDarkMode ? _primaryDark : _primaryLight;
  Color get primaryLight => _primaryLight;
  Color get primaryDark => _primaryDark;

  Color get secondary => _isDarkMode ? _secondaryDark : _secondaryLight;
  Color get secondaryLight => _secondaryLight;
  Color get secondaryDark => _secondaryDark;
  Color get secondaryVariant =>
      _isDarkMode ? _secondaryDarkVariant : _secondaryLightVariant;
  Color get secondaryLightVariant => _secondaryLightVariant;
  Color get secondaryDarkVariant => _secondaryDarkVariant;

  Color get accent => _isDarkMode ? _accentDark : _accentLight;
  Color get accentLight => _accentLight;
  Color get accentDark => _accentDark;

  Color get background => _isDarkMode ? _backgroundDark : _backgroundLight;
  Color get backgroundLight => _backgroundLight;
  Color get backgroundDark => _backgroundDark;
  Color get surface => _isDarkMode ? _surfaceDark : _surfaceLight;
  Color get surfaceLight => _surfaceLight;
  Color get surfaceDark => _surfaceDark;
  Color get error => _isDarkMode ? _errorDark : _errorLight;
  Color get errorLight => _errorLight;
  Color get errorDark => _errorDark;

  Color get textPrimary => _isDarkMode ? _textPrimaryDark : _textPrimaryLight;
  Color get textPrimaryLight => _textPrimaryLight;
  Color get textPrimaryDark => _textPrimaryDark;
  Color get textSecondary =>
      _isDarkMode ? _textSecondaryDark : _textSecondaryLight;
  Color get textSecondaryLight => _textSecondaryLight;
  Color get textSecondaryDark => _textSecondaryDark;
  Color get textDisabled =>
      _isDarkMode ? _textDisabledDark : _textDisabledLight;
  Color get textDisabledLight => _textDisabledLight;
  Color get textDisabledDark => _textDisabledDark;

  bool get _isDarkMode {
    switch (_currentThemeMode) {
      case ThemeMode.light:
        return false;
      case ThemeMode.dark:
        return true;
      case ThemeMode.system:
        return WidgetsBinding.instance.window.platformBrightness ==
            Brightness.dark;
    }
  }

  // Metode untuk mengubah primary color
  void configPrimaryColor(Color light, Color dark) {
    _primaryLight = light;
    _primaryDark = dark;
  }

  // Metode untuk mengkonfigurasi warna
  void configure({
    Color? primaryLight,
    Color? primaryDark,
    Color? secondaryLight,
    Color? secondaryDark,
    Color? secondaryLightVariant,
    Color? secondaryDarkVariant,
    Color? accentLight,
    Color? accentDark,
    Color? backgroundLight,
    Color? backgroundDark,
    Color? surfaceLight,
    Color? surfaceDark,
    Color? errorLight,
    Color? errorDark,
    Color? textPrimaryLight,
    Color? textPrimaryDark,
    Color? textSecondaryLight,
    Color? textSecondaryDark,
    Color? textDisabledLight,
    Color? textDisabledDark,
  }) {
    _primaryLight = primaryLight ?? _primaryLight;
    _primaryDark = primaryDark ?? _primaryDark;

    _secondaryLight = secondaryLight ?? _secondaryLight;
    _secondaryDark = secondaryDark ?? _secondaryDark;
    _secondaryLightVariant = secondaryLightVariant ?? _secondaryLightVariant;
    _secondaryDarkVariant = secondaryDarkVariant ?? _secondaryDarkVariant;

    _accentLight = accentLight ?? _accentLight;
    _accentDark = accentDark ?? _accentDark;

    _backgroundLight = backgroundLight ?? _backgroundLight;
    _backgroundDark = backgroundDark ?? _backgroundDark;
    _surfaceLight = surfaceLight ?? _surfaceLight;
    _surfaceDark = surfaceDark ?? _surfaceDark;
    _errorLight = errorLight ?? _errorLight;
    _errorDark = errorDark ?? _errorDark;

    _textPrimaryLight = textPrimaryLight ?? _textPrimaryLight;
    _textPrimaryDark = textPrimaryDark ?? _textPrimaryDark;
    _textSecondaryLight = textSecondaryLight ?? _textSecondaryLight;
    _textSecondaryDark = textSecondaryDark ?? _textSecondaryDark;
    _textDisabledLight = textDisabledLight ?? _textDisabledLight;
    _textDisabledDark = textDisabledDark ?? _textDisabledDark;
  }

  // Reset ke nilai default
  void reset() {
    _primaryLight = const Color(0xFF1A73E8);
    _primaryDark = const Color(0xFF8AB4F8);

    _secondaryLight = const Color(0xFF34A853);
    _secondaryDark = const Color(0xFF81C995);
    _secondaryLightVariant = const Color(0xFF66D880);
    _secondaryDarkVariant = const Color(0xFF007926);

    _accentLight = const Color(0xFFEA4335);
    _accentDark = const Color(0xFFF28B82);

    _backgroundLight = const Color(0xFFF8F9FA);
    _backgroundDark = const Color(0xFF202124);
    _surfaceLight = Colors.white;
    _surfaceDark = const Color(0xFF303134);
    _errorLight = const Color(0xFFDC3545);
    _errorDark = const Color(0xFFF28B82);

    _textPrimaryLight = const Color(0xFF202124);
    _textPrimaryDark = Colors.white;
    _textSecondaryLight = const Color(0xFF5F6368);
    _textSecondaryDark = const Color(0xFF9AA0A6);
    _textDisabledLight = const Color(0xFF9AA0A6);
    _textDisabledDark = const Color(0xFF5F6368);
  }
}
