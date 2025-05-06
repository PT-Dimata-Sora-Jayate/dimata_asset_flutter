// lib/src/dimata_colors.dart
import 'package:flutter/material.dart';

/// Class helper untuk warna dengan kemampuan konfigurasi
class DimataColors {
  // Singleton pattern
  static final DimataColors _instance = DimataColors._internal();
  factory DimataColors() => _instance;
  DimataColors._internal();
  
  // Default warna primer
  Color _primary = const Color(0xFF1A73E8);
  Color _primaryLight = const Color(0xFF1A73E8);
  Color _primaryDark = const Color(0xFF0049B5);
  
  // Default warna sekunder
  Color _secondary = const Color(0xFF34A853);
  Color _secondaryLight = const Color(0xFF66D880);
  Color _secondaryDark = const Color(0xFF007926);
  
  // Default warna aksen
  Color _accent = const Color(0xFFEA4335);
  
  // Default warna netral
  Color _background = const Color(0xFFF8F9FA);
  Color _surface = Colors.white;
  Color _error = const Color(0xFFDC3545);
  
  // Default warna teks
  Color _textPrimary = const Color(0xFF202124);
  Color _textSecondary = const Color(0xFF5F6368);
  Color _textDisabled = const Color(0xFF9AA0A6);
  
  // Getters untuk mengakses warna
  Color get primary => _primary;
  Color get primaryLight => _primaryLight;
  Color get primaryDark => _primaryDark;
  
  Color get secondary => _secondary;
  Color get secondaryLight => _secondaryLight;
  Color get secondaryDark => _secondaryDark;
  
  Color get accent => _accent;
  
  Color get background => _background;
  Color get surface => _surface;
  Color get error => _error;
  
  Color get textPrimary => _textPrimary;
  Color get textSecondary => _textSecondary;
  Color get textDisabled => _textDisabled;

  // Metode untuk mengubah primary color
  void configPrimaryColor(Color primary){
    _primary = primary ;
  }
  // Metode untuk mengkonfigurasi warna
  void configure({
    Color? primaryLight,
    Color? primaryDark,
    Color? secondary,
    Color? secondaryLight,
    Color? secondaryDark,
    Color? accent,
    Color? background,
    Color? surface,
    Color? error,
    Color? textPrimary,
    Color? textSecondary,
    Color? textDisabled,
  }) {
    _primaryLight = primaryLight ?? _primaryLight;
    _primaryDark = primaryDark ?? _primaryDark;
    
    _secondary = secondary ?? _secondary;
    _secondaryLight = secondaryLight ?? _secondaryLight;
    _secondaryDark = secondaryDark ?? _secondaryDark;
    
    _accent = accent ?? _accent;
    
    _background = background ?? _background;
    _surface = surface ?? _surface;
    _error = error ?? _error;
    
    _textPrimary = textPrimary ?? _textPrimary;
    _textSecondary = textSecondary ?? _textSecondary;
    _textDisabled = textDisabled ?? _textDisabled;
  }
  
  // Reset ke nilai default
  void reset() {
    _primary = const Color(0xFF1A73E8);
    _primaryLight = const Color(0xFF5EA1EF);
    _primaryDark = const Color(0xFF0049B5);
    
    _secondary = const Color(0xFF34A853);
    _secondaryLight = const Color(0xFF66D880);
    _secondaryDark = const Color(0xFF007926);
    
    _accent = const Color(0xFFEA4335);
    
    _background = const Color(0xFFF8F9FA);
    _surface = Colors.white;
    _error = const Color(0xFFDC3545);
    
    _textPrimary = const Color(0xFF202124);
    _textSecondary = const Color(0xFF5F6368);
    _textDisabled = const Color(0xFF9AA0A6);
  }
}