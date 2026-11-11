import 'package:flutter/material.dart';
import 'package:tugas4_flutter/Pages/profile.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(hintText: 'Masukan Nama Kasir'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(hintText: 'Masukan Kode Kasir'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProfilePage(
                      email: emailController.text,
                      password: passwordController.text,
                    ),
                  ),
                );
              },
              child: Text('Masuk'),
            ),
          ],
        ),
      ),
    );
  }
}
