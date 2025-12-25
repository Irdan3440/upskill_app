import 'package:flutter/material.dart';

class SellerHomeScreen extends StatelessWidget {
  const SellerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard Bisnis")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.analytics, size: 80, color: Colors.blue),
            const SizedBox(height: 20),
            const Text("Area Pelaku Usaha", style: TextStyle(fontSize: 20)),
            const Text(
              "Analisis Usaha, Pajak & Ekspor",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
