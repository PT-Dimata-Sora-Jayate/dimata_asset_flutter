<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.

# Dimata Flutter Package

A Flutter package providing customizable UI components, themes, and styling utilities for consistent and beautiful Flutter applications.

## Features

- Pre-configured theme system with light and dark mode support
- Customizable color palette
- Typography system with Google Fonts integration
- Reusable UI components like AppBar and TabBar
- Consistent styling across your application

## Installation

Add this to your `pubspec.yaml` file:

```yaml
dependencies:
  company_assets:
    git:
      url: https://github.com/nama-perusahaan/company-assets.git
      ref: main  # atau branch/tag spesifik
```

## Components

### DimataColors

A utility class that provides a consistent color palette for your application.
# DimataColors

Kelas helper untuk manajemen warna yang fleksibel dalam aplikasi Flutter. Memungkinkan pengembang untuk menggunakan warna default atau mengkonfigurasi skema warna secara dinamis.

## Fitur

- **Singleton Pattern**: Memastikan hanya ada satu instance warna di seluruh aplikasi
- **Konstanta Statis**: Untuk digunakan dalam constructor `const`
- **Konfigurasi Dinamis**: Memungkinkan perubahan skema warna saat runtime
- **Dukungan Reset**: Kemampuan mengembalikan ke warna default kapan saja

## Penggunaan

### Mengakses Warna Dinamis

```dart
Container(
  color: DimataColors().background,
  child: Text(
    'Teks Contoh',
    style: TextStyle(color: DimataColors().textPrimary),
  ),
)
```

### Mengkonfigurasi Warna

```dart
void main() {
  // Konfigurasi warna kustom
  DimataColors().configure(
    primary: Color(0xFF2196F3),
    secondary: Color(0xFF4CAF50),
    background: Color(0xFFEEEEEE),
    // Warna lain tetap default
  );
  
  runApp(MyApp());
}
```

### Mengatur Ulang Warna ke Default

```dart
void resetTheme() {
  DimataColors().reset();
  // Refresh UI jika diperlukan
}
```

## Warna yang Tersedia

### Warna Primer
- `primary` - Warna utama aplikasi
- `primaryLight` - Variasi terang dari warna primer
- `primaryDark` - Variasi gelap dari warna primer

### Warna Sekunder
- `secondary` - Warna sekunder untuk aksen
- `secondaryLight` - Variasi terang dari warna sekunder
- `secondaryDark` - Variasi gelap dari warna sekunder

### Warna Aksen
- `accent` - Warna untuk penekanan elemen tertentu

### Warna Netral
- `background` - Warna latar belakang umum
- `surface` - Warna untuk permukaan komponen
- `error` - Warna untuk indikasi kesalahan

### Warna Teks
- `textPrimary` - Warna utama untuk teks
- `textSecondary` - Warna sekunder untuk teks (kurang penting)
- `textDisabled` - Warna untuk teks yang dinonaktifkan

## Catatan

Saat menggunakan `DimataColors` dengan widget yang menuntut konstanta (`const` constructor), gunakan versi statis seperti `DimataColors.defaultPrimary` daripada `DimataColors().primary`.

### DimataFonts

A utility class for typography that leverages Google Fonts.

```dart
// Heading styles
DimataFonts.heading1()  // 28px, bold, Montserrat
DimataFonts.heading2()  // 24px, bold, Montserrat
DimataFonts.heading3()  // 20px, semi-bold, Montserrat

// Body text styles
DimataFonts.bodyLarge()  // 16px, normal, Open Sans
DimataFonts.bodyMedium() // 14px, normal, Open Sans
DimataFonts.bodySmall()  // 12px, normal, Open Sans

// Button text style
DimataFonts.button()     // 14px, medium, Montserrat
```

Each method accepts optional parameters:
- `color`: Custom text color
- `fontWeight`: Custom font weight
- `fontFamily`: Custom font family

### DimataThemes

Configure your app's theme with pre-built light and dark themes.

```dart
// Default light theme
Theme(
  data: DimataThemes.light(),
  child: MaterialApp(...)
)

// Custom light theme
DimataThemes.light(
  primaryFontFamily: 'Roboto',
  secondaryFontFamily: 'Lato'
)

// Default dark theme
DimataThemes.dark()

// Custom dark theme
DimataThemes.dark(
  primaryColor: Colors.indigo,
  secondaryColor: Colors.teal
)
```

## Widgets

### DimataAppBarView

A customizable AppBar with gradient option and convenient back button handling.

```dart
DimataAppBarView(
  title: 'Dashboard',
  backgroundColor: Colors.blue,
  titleColor: Colors.white,
  hasGradient: true,
  showBackButton: true,
  onBackPressed: () {
    // Custom back button action
  },
  actions: [
    IconButton(
      icon: Icon(Icons.settings),
      onPressed: () {},
    ),
  ],
)
```

### DimataTabBarView

A customizable TabBar widget with tab change callback.

```dart
DimataTabBarView(
  lengOfTabs: 3,
  name: ['Home', 'Profile', 'Settings'],
  pages: [
    HomeScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ],
  onTabChanged: (index) {
    print('Tab changed to index: $index');
  },
  labelColor: DimataColors().primary,
  indicatorColor: DimataColors().primary,
  unselectedLabelColor: DimataColors().textDisabled,
  backgroundColor: DimataColors().background,
)
```

## Example Usage

```dart
import 'package:flutter/material.dart';
import 'package:dimata_assets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dimata Example',
      theme: DimataThemes.light(),
      darkTheme: DimataThemes.dark(),
      themeMode: ThemeMode.system, // Respects system theme
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DimataAppBarView(
        title: 'Dimata Example',
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_4),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Dimata',
              style: DimataFonts.heading1(),
            ),
            SizedBox(height: 16),
            Text(
              'A beautiful Flutter UI package',
              style: DimataFonts.bodyLarge(),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
```

## License

This package is licensed under the MIT License - see the LICENSE file for details.