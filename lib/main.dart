import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      )
    );

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter basic calculator',
      home: Scaffold(
        body: SafeArea(
          child: Calculation()
        )
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
    return Column(
      children: [
        ResultDisplay(text: '0'),
        Row(
          children: [
            // Here we want to place the buttons of the first Row
          ],
        )
      ]
    );
  }
}


class ResultDisplay extends StatelessWidget {
  ResultDisplay({
    required this.text
  });

  //final int result;//HY[240113] quoted final int result
  final String text; //HY[240113] added final String text

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: Colors.black,
      child: Container(        
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 24, bottom: 24),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 34
          ),
        )
      )

    );
  }
}
