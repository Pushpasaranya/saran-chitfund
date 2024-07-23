import 'package:saranchitfund/intropage.dart';
import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({ super. key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SARAN',
      home:IntroPage(),
    );
  }
}

void main() {
  runApp(const MyApp());
}
