// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String counter = '';
  String output = "0";

  String _output = "0";
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";

  buttonPressed(String buttonText) {
    if (buttonText == "CLEAR") {
      _output = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "/" ||
        buttonText == "X") {
      num1 = double.parse(output);

      operand = buttonText;

      _output = "0";
    } else if (buttonText == ".") {
      if (_output.contains(".")) {
        print("Already conatains a decimals");
        return;
      } else {
        _output = _output + buttonText;
      }
    } else if (buttonText == "=") {
      num2 = double.parse(output);

      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
      if (operand == "X") {
        _output = (num1 * num2).toString();
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else {
      _output = _output + buttonText;
    }

    print(_output);

    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

  Widget buildButton(String buttonText, Color color) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.bottomRight,
            width: 400,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Text(
              counter,
              style: const TextStyle(fontSize: 50),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(  
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      buildButton(
                          '%', const Color.fromARGB(255, 116, 116, 116)),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      buildButton(
                          '÷', const Color.fromARGB(255, 116, 116, 116)),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                    width: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildButton('7', const Color.fromARGB(255, 61, 61, 61)),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      buildButton(
                          '8', const Color.fromARGB(255, 116, 116, 116)),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      buildButton(
                          '9', const Color.fromARGB(255, 116, 116, 116)),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                    width: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildButton(
                          '4', const Color.fromARGB(255, 116, 116, 116)),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      buildButton(
                          '5', const Color.fromARGB(255, 116, 116, 116)),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      buildButton(
                          '6', const Color.fromARGB(255, 116, 116, 116)),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                    width: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildButton(
                          '1', const Color.fromARGB(255, 116, 116, 116)),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      buildButton(
                          '2', const Color.fromARGB(255, 116, 116, 116)),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      buildButton(
                          '3', const Color.fromARGB(255, 116, 116, 116)),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                    width: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildButton(
                          'AC', const Color.fromARGB(255, 116, 116, 116)),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      buildButton(
                          '0', const Color.fromARGB(255, 116, 116, 116)),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      buildButton(
                          '.', const Color.fromARGB(255, 116, 116, 116)),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildButton('*', Colors.orange),
                  const SizedBox(
                    height: 30,
                    width: 30,
                  ),
                  buildButton('-', Colors.orange),
                  const SizedBox(
                    height: 30,
                    width: 30,
                  ),
                  buildButton('+', Colors.orange),
                  const SizedBox(
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 80,
                    height: 190,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10000000)),
                          backgroundColor: Colors.orange),
                      onPressed: () {},
                      child: const Text(
                        '=',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
