import 'package:flutter/material.dart';
import './pages/auth_page.dart';
import './pages/calculator.dart';
import './pages/bmi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.blueAccent,
        // Anda dapat menyesuaikan warna latar belakang, teks, dll. sesuai keinginan Anda.
      ),
      home: LoginPage(),
      routes: {
        CalculatorPage.route: (ctx) => CalculatorPage(),
        BmiPage.route: (ctx) => BmiPage(),
        LoginPage.route: (ctx) => LoginPage(),
      },
    );
  }
}
