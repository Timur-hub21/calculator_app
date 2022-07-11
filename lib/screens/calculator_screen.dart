import 'package:flutter/material.dart';
import 'package:flutter_calculator/calculator_state/index.dart';
import 'package:flutter_calculator/custom/index.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Observer(
                builder: (_) => Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        calculator.userInput,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(35),
                      alignment: Alignment.centerRight,
                      child: Text(
                        calculator.answer,
                        style: const TextStyle(fontSize: 40),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: GridView.builder(
                itemCount: calculatorGrid.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return calculatorGrid[index];
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
