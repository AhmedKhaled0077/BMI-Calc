import 'package:flutter/material.dart';
import 'package:bmi/BMI_Calculator.dart';
import 'package:bmi/BMI_Result_Screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: BmiCalculator());
  }
}
