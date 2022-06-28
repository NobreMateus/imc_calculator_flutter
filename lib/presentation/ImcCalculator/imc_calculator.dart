import 'package:flutter/material.dart';

class ImcCalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora IMC"),
      ),
      body: ImgCalculatorBody(),
    );
  }
}

class ImgCalculatorBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CalculatorForm(),
    );
  }
}

class CalculatorForm extends StatefulWidget {
  @override
  _CalculatorFormState createState() => _CalculatorFormState();
}

class _CalculatorFormState extends State<CalculatorForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextField(),
          CustomTextField(),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Calcular"),
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String _text = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Label"),
        TextField(
          onChanged: (value) => setState(() {
            _text = value;
          }),
        ),
      ],
    );
  }
}
