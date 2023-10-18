import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../../utils/custom_surffix_icon.dart';
import '../HomeUsers/home_user_screen.dart';
import '../HomeAdmins/home_admin_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController txtUserName = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: txtUserName,
                decoration: const InputDecoration(
                  labelText: "Username",
                  hintText: "Masukkan username anda",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: CustomSurffixIcon(
                    svgIcon: "assets/icons/User.svg",
                    color: Colors.orange,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Username tidak boleh kosong';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                obscureText: true,
                controller: txtPassword,
                decoration: const InputDecoration(
                  labelText: "Password",
                  hintText: "Masukkan password anda",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: CustomSurffixIcon(
                    svgIcon: "assets/icons/Lock.svg",
                    color: Colors.orange,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password tidak boleh kosong';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  String enteredUsername = txtUserName.text;
                  String enteredPassword = txtPassword.text;

                  if (enteredUsername == 'fahiyang' &&
                      enteredPassword == '123') {
                    Alert(
                      context: context,
                      type: AlertType.success,
                      title: 'Sukses',
                      desc: 'Selamat datang, pengguna "USER".',
                      buttons: [
                        DialogButton(
                          child: const Text('OK'),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const UserHalaman(),
                              ),
                            );
                          },
                        ),
                      ],
                    ).show();
                  } else if (enteredUsername == 'admin' &&
                      enteredPassword == '123') {
                    Alert(
                      context: context,
                      type: AlertType.success,
                      title: 'Sukses',
                      desc: 'Selamat datang, pengguna "ADMIN".',
                      buttons: [
                        DialogButton(
                          child: const Text('OK'),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AdminHalaman(),
                              ),
                            );
                          },
                        ),
                      ],
                    ).show();
                  } else {
                    Alert(
                      context: context,
                      type: AlertType.error,
                      title: 'Kesalahan',
                      desc: 'Username atau Password salah.',
                      buttons: [
                        DialogButton(
                          child: const Text('OK'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ).show();
                  }
                } else {
                  if (txtUserName.text.isNotEmpty && txtPassword.text.isEmpty) {
                    Alert(
                      context: context,
                      type: AlertType.error,
                      title: 'Kesalahan',
                      desc: 'Password tidak boleh kosong.',
                      buttons: [
                        DialogButton(
                          child: const Text('OK'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ).show();
                  } else if (txtUserName.text.isEmpty &&
                      txtPassword.text.isNotEmpty) {
                    Alert(
                      context: context,
                      type: AlertType.error,
                      title: 'Kesalahan',
                      desc: 'Username tidak boleh kosong.',
                      buttons: [
                        DialogButton(
                          child: const Text('OK'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ).show();
                  } else {
                    Alert(
                      context: context,
                      type: AlertType.error,
                      title: 'Kesalahan',
                      desc: 'Username dan Password tidak boleh kosong.',
                      buttons: [
                        DialogButton(
                          child: const Text('OK'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ).show();
                  }
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // Warna latar belakang
              ),
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
