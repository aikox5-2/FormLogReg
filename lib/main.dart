import 'package:flutter/material.dart';
import 'logform.dart';

void main() {
  runApp(const MyApp());
}

// Widget StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget MaterialApp
    return MaterialApp(
      title: 'Form RegLog Flutter',
      debugShowCheckedModeBanner: false,
      // Widget ThemeData
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E4D2B), // Tema Hijau Tua (Absen Ganjil 3)
          primary: const Color(0xFF1E4D2B),
        ),
        useMaterial3: true,
      ),
      home: const LoginForm(),
    );
  }
}
