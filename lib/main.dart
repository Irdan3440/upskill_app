import 'package:flutter/material.dart';
import 'screens/role_selection_screen.dart'; // Import halaman yang baru kita buat

void main() {
  runApp(const UpskillApp());
}

class UpskillApp extends StatelessWidget {
  const UpskillApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UpSkill Uplokal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Tema Biru Profesional sesuai nuansa bisnis
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0D47A1)),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      // Halaman pertama yang muncul adalah pemilihan peran
      home: const RoleSelectionScreen(),
    );
  }
}
