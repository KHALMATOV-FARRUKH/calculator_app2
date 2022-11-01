import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget numberButton(String btnText, Color btnColor, Color txtColor) {
    return ElevatedButton(
      onPressed: () => {},
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
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '0',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 75),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                numberButton("AC", Colors.grey, Colors.black),
                numberButton("+/-", Colors.grey, Colors.black),
                numberButton("%", Colors.grey, Colors.black),
                numberButton("/", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                numberButton("7", (Colors.grey[850])!, Colors.white),
                numberButton("8", (Colors.grey[850])!, Colors.white),
                numberButton("9", (Colors.grey[850])!, Colors.white),
                numberButton("X", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                numberButton("4", (Colors.grey[850])!, Colors.white),
                numberButton("5", (Colors.grey[850])!, Colors.white),
                numberButton("6", (Colors.grey[850])!, Colors.white),
                numberButton("-", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                numberButton("1", (Colors.grey[850])!, Colors.white),
                numberButton("2", (Colors.grey[850])!, Colors.white),
                numberButton("3", (Colors.grey[850])!, Colors.white),
                numberButton("+", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
}
