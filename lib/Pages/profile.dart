import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const new({super.key, required this.email, required this.password});

  final String email;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HALAMAN UTAMA KASIR'), centerTitle: true),
      body: Center(
        child: Column(
          spacing: 12,
          children: [
            Text('SELAMAT DATANG'),
            Text('Email: $email'),
            Text('Password: $password'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
