import 'package:flutter/material.dart';

class UserHalaman extends StatelessWidget {
  const UserHalaman({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman User'),
      ),
      body: const Center(
        child: Text('Selamat datang di Halaman USER!'),
      ),
    );
  }
}
