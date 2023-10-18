import 'package:flutter/material.dart';

class AdminHalaman extends StatelessWidget {
  const AdminHalaman({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Admin'),
      ),
      body: const Center(
        child: Text('Selamat datang di Halaman ADMIN!'),
      ),
    );
  }
}
