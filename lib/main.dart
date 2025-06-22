// main.dart
import 'package:flutter/material.dart';
import 'package:who_ebola/widgets/who.dart';

// ← your first screen

/* ─────────────────────────  SHARED COLOURS  ───────────────────────── */

const _kBlue = Color(0xFF2971F4); // primary accent
const _kGreen = Color(0xFF3D9943); // success / secondary
const _kRed = Color(0xFFE25353); // error
const _kGrey = Color(0xFF6C757D); // muted text

/* ────────────────────────── LIGHT PALETTE ─────────────────────────── */

const _kBgLight = Color(0xFFF5F7FA); // page background
const _kSurfaceLight = Color(0xFFFFFFFF); // cards & tiles

final lightColorScheme = ColorScheme.fromSeed(
  seedColor: _kBlue,
  brightness: Brightness.light,
).copyWith(
  primary: _kBlue,
  onPrimary: Colors.white,
  secondary: _kGreen,
  onSecondary: Colors.white,
  error: _kRed,
  background: _kBgLight,
  onBackground: Colors.black87,
  surface: _kSurfaceLight,
  onSurface: Colors.black87,
);

/* ─────────────────────────── DARK PALETTE ─────────────────────────── */

const _kBgDark = Color(0xFF0D111A); // deep navy background
const _kSurfaceDark = Color(0xFF1A212E); // input / card background
const _kBorderDark = Color(0xFF293141); // subtle borders

final darkColorScheme = ColorScheme.fromSeed(
  seedColor: _kBlue,
  brightness: Brightness.dark,
).copyWith(
  primary: _kBlue,
  onPrimary: Colors.white,
  secondary: _kGreen,
  onSecondary: Colors.white,
  error: _kRed,
  background: _kBgDark,
  onBackground: Colors.white,
  surface: _kSurfaceDark,
  onSurface: Colors.white,
);

/* ───────────────────────────── APP ──────────────────────────────── */

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* ── LIGHT THEME ─────────────────────────────────────────────── */
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        scaffoldBackgroundColor: lightColorScheme.surface,
        cardColor: lightColorScheme.surface,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: _kBlue,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(vertical: 14),
            textStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: lightColorScheme.primary,
          foregroundColor: lightColorScheme.onPrimary,
          elevation: 0,
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: lightColorScheme.primary,
          selectedItemColor: _kBlue,
          unselectedItemColor: _kGrey,
          elevation: 0,
        ),
        iconTheme: const IconThemeData(color: _kGrey),
        dividerColor: Colors.grey.shade200,
        textTheme: ThemeData.light().textTheme.copyWith(
            headlineSmall: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            headlineMedium:
                const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
      ),

      /* ── DARK THEME ──────────────────────────────────────────────── */
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        scaffoldBackgroundColor: darkColorScheme.background,
        cardColor: darkColorScheme.surface,
        appBarTheme: AppBarTheme(
          backgroundColor: darkColorScheme.background,
          foregroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: _kSurfaceDark,
          selectedItemColor: _kBlue,
          unselectedItemColor: Colors.white60,
          elevation: 0,
        ),

        /* ---- Input fields like in the login mock-up ---- */
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: _kSurfaceDark,
          hintStyle: const TextStyle(color: Colors.white54),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: _kBorderDark),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: _kBorderDark),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: _kBlue),
          ),
        ),

        /* ---- Blue rounded button ---- */
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: _kBlue,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(vertical: 14),
            textStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      home: const Who(),
    );
  }
}
