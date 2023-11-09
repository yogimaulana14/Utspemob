import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static const route = '/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Selamat datang di Aplikasi Kalkulator dan BMI!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Aplikasi ini dirancang untuk membantu Anda melakukan perhitungan kalkulator sederhana dan menghitung Indeks Massa Tubuh (BMI). Dengan aplikasi ini, Anda dapat dengan mudah melakukan perhitungan yang Anda butuhkan.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Aplikasi ini dikembangkan sebagai proyek pembelajaran untuk menggabungkan berbagai konsep dalam pengembangan aplikasi Flutter.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
