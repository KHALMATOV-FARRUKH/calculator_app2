import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget numberButton(String btnText, Color btnColor, Color txtColor) {
    return ElevatedButton(
      onPressed: () => {
        calculate(btnText)
      },
      style: ElevatedButton.styleFrom(
        fixedSize: Size(70, 70),
        shape: CircleBorder(),
        primary: btnColor,
      ),
      child: Text(
        btnText,
        style: TextStyle(fontSize: 25, color: txtColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 25, 15),
                  child: Text(
                    text,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 75),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("AC", Colors.grey, Colors.black),
                numberButton("+/-", Colors.grey, Colors.black),
                numberButton("%", Colors.grey, Colors.black),
                numberButton("/", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("7", (Colors.grey[850])!, Colors.white),
                numberButton("8", (Colors.grey[850])!, Colors.white),
                numberButton("9", (Colors.grey[850])!, Colors.white),
                numberButton("X", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("4", (Colors.grey[850])!, Colors.white),
                numberButton("5", (Colors.grey[850])!, Colors.white),
                numberButton("6", (Colors.grey[850])!, Colors.white),
                numberButton("-", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("1", (Colors.grey[850])!, Colors.white),
                numberButton("2", (Colors.grey[850])!, Colors.white),
                numberButton("3", (Colors.grey[850])!, Colors.white),
                numberButton("+", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: (Colors.grey[850])!,
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(28, 12, 90, 12),
                    child: Text(
                      '0',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),
                ),
                numberButton(",", (Colors.grey[850])!, Colors.white),
                numberButton("=", Colors.orange, Colors.white),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  int firstNumber = 0;
  int secondNumber = 0;
  String result = '';
  String text = '';
  String operation = '';

  void calculate(String btnText) {
    if (btnText == 'AC') {
      result = '';
      text = '';
      firstNumber = 0;
      secondNumber = 0;
    } else if (btnText == '+' ||
        btnText == '-' ||
        btnText == 'X' ||
        btnText == '/') {
      firstNumber = int.parse(text);
      result = '';
      operation = btnText;
    }else if (btnText == '='){
      secondNumber = int.parse(text);
      if(operation == '+') {
        result = (firstNumber + secondNumber).toString();
      }
      if(operation == '-') {
        result = (firstNumber - secondNumber).toString();
      }
      if (operation == 'X'){
        result = (firstNumber * secondNumber).toString();
      }
      if (operation == '/'){
        result = (firstNumber / secondNumber).toString();
      }
    }
    else {
      result = int.parse(text + btnText).toString();
    }

    setState(() {
      text = result;
    });
  }
}
