import 'package:flutter/material.dart';
import 'views/pages/pages.dart';

void main() async {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UC Showcase',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const LoginPage(),
    );
  }
}
