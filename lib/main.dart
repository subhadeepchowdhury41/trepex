import 'package:flutter/material.dart';
import 'package:trepex/app_views/pages/auth/log_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trepex',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LogInPage()
    );
  }
}
