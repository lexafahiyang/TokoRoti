import 'package:flutter/material.dart';
import 'login_form.dart'; // Impor file login_form.dart
import 'package:simple_shadow/simple_shadow.dart'; // Impor paket simple_shadow
import '../../size_config.dart'; // Impor file size_config.dart
import '../../utils/color_font.dart';

class LoginComponent extends StatelessWidget {
  const LoginComponent({super.key});

  @override
  Widget build(BuildContext context) {
    // Inisialisasi SizeConfig
    SizeConfig().init(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Menambahkan gambar dengan efek bayangan dan mengatur jarak responsif
              SimpleShadow(
                child: Image.asset(
                  'assets/images/roti/roti.png',
                  height: getProportionateScreenHeight(100),
                  width: getProportionateScreenWidth(152),
                ),
              ),
              const SizedBox(height: 20), // Jarak antara gambar dan teks
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Login !', style: mTitleStyle16),
                  ],
                ),
              ),
              const SizedBox(
                  height: 20), // Jarak antara teks dan formulir login
              const LoginForm(), // Menggunakan komponen LoginForm dari login_form.dart
            ],
          ),
        ),
      ),
    );
  }
}
