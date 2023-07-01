import 'package:flutter/material.dart';
import 'package:shoes_app/pages/detail_page.dart';
import 'package:shoes_app/pages/dashboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

