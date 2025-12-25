import 'package:flutter/material.dart';
import 'seller_home.dart';
import 'customer_home.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header Judul
              const Text(
                "Selamat Datang di\nUpSkill",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0D47A1),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text(
                "From Local Up To Global", // Slogan [cite: 27]
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 60),

              // OPSI 1: PELAKU USAHA [cite: 15]
              // Solusi: Strategi bisnis, keuangan, pajak
              _buildRoleCard(
                context,
                title: "Saya Pelaku Usaha",
                subtitle: "Kelola bisnis, pajak, & akses pasar global.",
                icon: Icons.storefront,
                color: Colors.blue,
                destination: const SellerHomeScreen(),
              ),

              const SizedBox(height: 20),

              // OPSI 2: CUSTOMER [cite: 21]
              // Solusi: Mencari kebutuhan jasa/barang
              _buildRoleCard(
                context,
                title: "Saya Customer",
                subtitle: "Cari supplier & jasa lokal terpercaya.",
                icon: Icons.search,
                color: Colors.teal,
                destination: const CustomerHomeScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget Kustom untuk Kartu Pilihan
  Widget _buildRoleCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required Widget destination,
  }) {
    return Card(
      elevation: 4,
      shadowColor: color.withOpacity(0.4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () {
          // Navigasi ke halaman tujuan
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, size: 36, color: color),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
