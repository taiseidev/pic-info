import 'package:flutter/material.dart';

import 'extensions/common_button_theme.dart';

ThemeData getLightThemeData() {
  final base = ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,
  );
  return base.copyWith(
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      // Androidだとデフォルトで左寄り
      centerTitle: true,
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.teal,
      labelStyle: TextStyle(
        fontWeight: FontWeight.bold,
      ),
      indicatorColor: Colors.teal,
    ),
    extensions: _getLightThemeExtension(),
  );
}

ThemeData getDarkThemeData() {
  final base = ThemeData(
    useMaterial3: false,
    brightness: Brightness.dark,
  );
  return base.copyWith(
    appBarTheme: const AppBarTheme(
      centerTitle: true,
    ),
    extensions: _getDarkThemeExtension(),
  );
}

Iterable<ThemeExtension<dynamic>>? _getLightThemeExtension() => [
      const CommonButtonTheme(background: Colors.red),
    ];

Iterable<ThemeExtension<dynamic>>? _getDarkThemeExtension() => [
      const CommonButtonTheme(background: Colors.yellow),
    ];
