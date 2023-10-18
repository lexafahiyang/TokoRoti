import 'package:flutter/material.dart';
import '../../Components/Login/login_component.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Login'),
      ),
      body: const LoginComponent(),
    );
  }
}
