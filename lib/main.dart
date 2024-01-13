import 'package:flutter/material.dart';
import 'package:calculator_without_bloc/main.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter basic calculator',
      home: Scaffold(
        body: Calculation()
      ),
    );
  }
}

class Calculation extends StatefulWidget {
  @override
  _CalculationState createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  late int result; //HY[240113] added late

  @override
  Widget build(BuildContext context) {
    return ResultDisplay(text: '0');
  }
}


class ResultDisplay extends StatelessWidget {
  ResultDisplay({
    required this.text
  });

  //final int result;//HY[240113] quoted final int result
  late String text; //HY[240113] added late String text

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: Colors.black,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 34
        ),
      )
    );
  }
}
