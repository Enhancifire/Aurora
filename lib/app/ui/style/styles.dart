import 'package:aurora/app/ui/colors/color_provider.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'styles.g.dart';

@riverpod
class CustomAppTheme extends _$CustomAppTheme {
  @override
  ThemeData build() {
    final colors = ref.watch(themeColorsProvider);
    final primary = colors.mauve;
    final secondary = colors.red;
    final accent = colors.lavender;
    final background = colors.base;
    final text = colors.text;
    final theme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: primary,
        primary: primary,
        secondary: secondary,
        tertiary: accent,
        background: background,
        error: colors.red,
        shadow: colors.overlay2,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          color: text,
        ),
        titleMedium: TextStyle(
          color: text,
        ),
        titleSmall: TextStyle(
          color: text,
        ),
        displayLarge: TextStyle(
          color: text,
        ),
        displayMedium: TextStyle(
          color: text,
        ),
        displaySmall: TextStyle(
          color: text,
          fontWeight: FontWeight.w500,
        ),
      ),
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
          color: accent,
          fontSize: 28,
          fontWeight: FontWeight.w500,
        ),
      ),
      scaffoldBackgroundColor: background,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: accent,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: accent),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: TextStyle(
            color: accent,
          ),
        ),
      ),
    );
    return theme;
  }
}
