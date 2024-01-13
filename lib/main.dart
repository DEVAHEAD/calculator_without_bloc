import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {

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

class CalculatorButton extends StatelessWidget {
  CalculatorButton({
    required this.label,
    required this.onTap,
    required this.size,
    this.backgroundColor = Colors.white,
    this.labelColor = Colors.black
  });

  final String label;
  final VoidCallback onTap;
  final double size;
  final Color? backgroundColor;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey, 
              offset: Offset(1, 1), 
              blurRadius: 2
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(size / 2)
          ),
          color: backgroundColor
        ),
        child:SizedBox(
          child : ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child:Container(color:Color(0xFF0D47A1))
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('Gradient'),
                ),
              ]
            )
          ),
        )
      )
    );
  }

}