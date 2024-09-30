import 'package:flutter/material.dart';
import '/ui/produk_page.dart';
import '/ui/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Kita Lucky',
      debugShowCheckedModeBanner: false,
      home: const LoginPage (),
    );
  }
}
