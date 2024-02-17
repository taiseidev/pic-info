import 'package:flutter/material.dart';

import 'extensions/common_button_theme.dart';

ThemeData getLightThemeData() {
  final base = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
  );
  return base.copyWith(
    appBarTheme: const AppBarTheme(
      // Androidだとデフォルトで左寄り
      centerTitle: true,
    ),
    extensions: _getLightThemeExtension(),
  );
}

ThemeData getDarkThemeData() {
  final base = ThemeData(
    useMaterial3: true,
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
