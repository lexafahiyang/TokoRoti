import 'package:flutter/material.dart';
import 'Screens/Login/login_screen.dart';
import './theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Toko Roti',
      theme: theme(),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: const Scaffold(
        resizeToAvoidBottomInset: true, // Tambahkan properti ini
        body: LoginScreen(),
      ),
    );
  }
}
