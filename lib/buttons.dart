import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final color;
  final textColor;
  final buttonText;
  final buttonTapped;

  MyButton({this.color, this.textColor, this.buttonText, this.buttonTapped});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: buttonTapped,
        child: Container(
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(color: textColor, fontSize: 20),
            ),
          ),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  offset: Offset(3, 3),
                  blurRadius: 12,
                  spreadRadius: 1),
              BoxShadow(
                  color: Colors.grey.shade800,
                  offset: Offset(-3, -3),
                  blurRadius: 10,
                  spreadRadius: 1),
            ],
          ),
        ),
      ),
    );
  }
}
