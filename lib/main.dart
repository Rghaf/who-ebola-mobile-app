import 'package:flutter/material.dart';
import 'package:who_ebola/widgets/who.dart';

final lightColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 72, 202, 228));
final darkColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 2, 62, 138));

void main() {
  runApp(MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: lightColorScheme,
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: lightColorScheme.primary,
              ),
            ),
        appBarTheme: AppBarTheme(
            backgroundColor: lightColorScheme.primary,
            foregroundColor: lightColorScheme.onPrimary,
            titleTextStyle: const TextStyle(fontWeight: FontWeight.bold)),
        scaffoldBackgroundColor: const Color.fromARGB(255, 202, 240, 248),
        bottomAppBarTheme: BottomAppBarTheme(
          color: lightColorScheme.primary,
          surfaceTintColor: lightColorScheme.onPrimary,
        ),
        iconTheme: IconThemeData(
          color: lightColorScheme
              .onPrimary, // Default icon color (applies to all icons)
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(colorScheme: darkColorScheme),
      home: const Who()));
}
