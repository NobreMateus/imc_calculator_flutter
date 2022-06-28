import 'package:flutter/material.dart';
import 'imc_calculator_body.dart';

class ImcCalculatorScreen extends StatelessWidget {
  const ImcCalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora IMC"),
      ),
      body: const ImcCalculatorBody(),
    );
  }
}
