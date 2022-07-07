import 'package:flutter/material.dart';
import 'imc_calculator_body.dart';

class ImcCalculatorScreen extends StatelessWidget {
  const ImcCalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calculadora IMC",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        foregroundColor: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
      ),
      body: const ImcCalculatorBody(),
    );
  }
}
