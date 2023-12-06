import 'package:flutter/material.dart';
import 'package:gcinema/pages/home.dart';

void main() {
//  runApp(const MyApp());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
