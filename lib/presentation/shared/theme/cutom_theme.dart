import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final lightThemeProvider = Provider((ref) => _buildLightTheme());
final darkThemeProvider = Provider((ref) => _buildDarkTheme());

ThemeData _buildLightTheme() {
  return ThemeData(
    colorScheme: flexSchemeLight,
    fontFamily: GoogleFonts.dosis().fontFamily,
    brightness: Brightness.light,
    // primaryColor: flexSchemeLight.primary,
    scaffoldBackgroundColor: flexSchemeLight.background,
    cardColor: flexSchemeLight.tertiary,
    textTheme: TextTheme(
      displayLarge:
          const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      displayMedium: const TextStyle().copyWith(
          fontWeight: FontWeight.bold,
          color: flexSchemeLight.onBackground,
          letterSpacing: 5),
      displaySmall:
          const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      headlineLarge:
          const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      headlineMedium:
          const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      headlineSmall:
          const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      titleLarge:
          const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      titleMedium:
          const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      titleSmall:
          const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      bodyLarge:
          const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      bodyMedium:
          const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      bodySmall:
          const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      labelLarge:
          const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      labelMedium:
          const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      labelSmall:
          const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      // displayLarge: const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      // displayMedium: const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      // displaySmall: const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      // headlineLarge: const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      // headlineMedium: const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      // headlineSmall: const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      // titleLarge: const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      // titleMedium: const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      // titleSmall: const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      // bodyLarge: const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      // bodyMedium: const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      // bodySmall: const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      // labelLarge: const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      // labelMedium: const TextStyle().copyWith(color: flexSchemeLight.onBackground),
      // labelSmall: const TextStyle().copyWith(color: flexSchemeLight.onBackground),
    ),
  );
}

ThemeData _buildDarkTheme() {
  return ThemeData(
    colorScheme: flexSchemeDark,
    fontFamily: GoogleFonts.dosis().fontFamily,
    brightness: Brightness.dark,
    // primaryColor: flexSchemeLight.primary,
    scaffoldBackgroundColor: flexSchemeDark.background,
    cardColor: flexSchemeDark.secondary,

    textTheme: TextTheme(
      displayLarge:
          const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      displayMedium:
          const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      displaySmall:
          const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      headlineLarge:
          const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      headlineMedium:
          const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      headlineSmall:
          const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      titleLarge:
          const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      titleMedium:
          const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      titleSmall:
          const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      bodyLarge: const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      bodyMedium:
          const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      bodySmall: const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      labelLarge:
          const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      labelMedium:
          const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      labelSmall:
          const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      // displayLarge: const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      // displayMedium: const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      // displaySmall: const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      // headlineLarge: const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      // headlineMedium: const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      // headlineSmall: const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      // titleLarge: const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      // titleMedium: const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      // titleSmall: const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      // bodyLarge: const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      // bodyMedium: const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      // bodySmall: const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      // labelLarge: const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      // labelMedium: const TextStyle().copyWith(color: flexSchemeDark.onBackground),
      // labelSmall: const TextStyle().copyWith(color: flexSchemeDark.onBackground),
    ),
  );
}

const ColorScheme flexSchemeLight = ColorScheme(
  brightness: Brightness.light,
  primary: Color.fromARGB(255, 19, 116, 155),
  onPrimary: Color(0xffffffff),
  primaryContainer: Color(0xff71d3ed),
  onPrimaryContainer: Color(0xff0a1214),
  secondary: Color.fromARGB(255, 18, 208, 154),
  onSecondary: Color(0xff000000),
  secondaryContainer: Color(0xff91f4e8),
  onSecondaryContainer: Color(0xff0c1413),
  tertiary: Color(0xff61d4d4),
  onTertiary: Color(0xff000000),
  tertiaryContainer: Color(0xff8ff3f2),
  onTertiaryContainer: Color(0xff0c1414),
  error: Color(0xffb00020),
  onError: Color(0xffffffff),
  errorContainer: Color(0xfffcd8df),
  onErrorContainer: Color(0xff141213),
  background: Color.fromARGB(0, 247, 251, 253),
  onBackground: Color.fromARGB(255, 0, 68, 128),
  surface: Color(0xfff7fbfd),
  onSurface: Color(0xff090909),
  surfaceVariant: Color(0xfff0f8fb),
  onSurfaceVariant: Color(0xff121313),
  outline: Color(0xff565656),
  shadow: Color(0xff000000),
  inverseSurface: Color(0xff121617),
  onInverseSurface: Color(0xfff5f5f5),
  inversePrimary: Color(0xffceffff),
  surfaceTint: Color(0xff35a0cb),
);

const ColorScheme flexSchemeDark = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xff5db3d5),
  onPrimary: Color(0xff0b1214),
  primaryContainer: Color(0xff297ea0),
  onPrimaryContainer: Color(0xffe6f3f8),
  secondary: Color(0xffa1e9df),
  onSecondary: Color(0xff101414),
  secondaryContainer: Color(0xff005049),
  onSecondaryContainer: Color(0xffdfeceb),
  tertiary: Color(0xffa0e5e5),
  onTertiary: Color(0xff101414),
  tertiaryContainer: Color(0xff004f50),
  onTertiaryContainer: Color(0xffdfecec),
  error: Color(0xffcf6679),
  onError: Color(0xff140c0d),
  errorContainer: Color(0xffb1384e),
  onErrorContainer: Color(0xfffbe8ec),
  background: Color.fromARGB(0, 21, 26, 28),
  onBackground: Color(0xff61d4d4),
  surface: Color(0xff151a1c),
  onSurface: Color(0xffeceded),
  surfaceVariant: Color(0xff192428),
  onSurfaceVariant: Color(0xffdadcdd),
  outline: Color(0xff9da3a3),
  shadow: Color(0xff000000),
  inverseSurface: Color(0xfff5fafc),
  onInverseSurface: Color(0xff131313),
  inversePrimary: Color(0xff375c6b),
  surfaceTint: Color(0xff5db3d5),
);

const Color notUsed = Color.fromARGB(255, 115, 255, 0);
