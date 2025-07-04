import 'package:calculator/view/screens/calculator_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const calculatorApp());
}

class calculatorApp extends StatelessWidget {
  const calculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorScreen(),
    );
  }
}
