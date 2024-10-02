import 'package:flutter/material.dart';
import 'package:kitabat_app/constants.dart';

import 'features/auth/presentation/views/login_view.dart';
import 'features/auth/presentation/views/register_view.dart';
import 'features/home/presentation/views/book_details_view.dart';
import 'features/home/presentation/views/home_view.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const KitabatApp());
}

class KitabatApp extends StatelessWidget {
  const KitabatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: kSplashView,
      routes: {
        kSplashView: (context) => const SplashView(),
        kHomeView: (context) => const HomeView(),
        kBookDetailsView: (context) => const BookDetailsView(),
        kRegisterView: (context) => const RegisterView(),
        kLoginView: (context) => const LoginView()
      },
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Tajawal',
        textTheme: TextTheme(
          headlineLarge: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 1.3),
          headlineMedium: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              height: 1.3),
          headlineSmall: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              height: 1.3),
          titleLarge: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              height: 1.3),
          titleMedium: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              height: 1.3),
          titleSmall: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              height: 1.3),
          bodyLarge: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              height: 1.3),
          bodyMedium: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.black,
              height: 1.3),
          bodySmall: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.5),
              height: 1.3),
          labelLarge: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Colors.black,
              height: 1.3),
          labelMedium: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Colors.black.withOpacity(0.5),
              height: 1.3),
        ),
      ),
    );
  }
}
