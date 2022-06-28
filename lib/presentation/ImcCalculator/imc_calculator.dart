import 'package:flutter/material.dart';
import 'package:imc_calculator/presentation/ImcCalculator/imc_calculator_viewmodel.dart';
import 'package:provider/provider.dart';

class ImcCalculatorScreen extends StatelessWidget {
  const ImcCalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora IMC"),
      ),
      body: const ImgCalculatorBody(),
    );
  }
}

class ImgCalculatorBody extends StatelessWidget {
  const ImgCalculatorBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalculatorForm(),
        const ImcResultCard(),
      ],
    );
  }
}

class CalculatorForm extends StatelessWidget {
  CalculatorForm({Key? key}) : super(key: key);

  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextField(
            label: "Peso",
            controller: weightController,
          ),
          CustomTextField(
            label: "Altura",
            controller: heightController,
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<ImcCalculatorViewModel>(context, listen: false)
                  .parseAndUpdate(weightController.text, heightController.text);
            },
            child: const Text("Calcular"),
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key, required this.label, this.controller});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();

  final String label;
  final TextEditingController? controller;
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.label),
        TextField(
          controller: widget.controller,
        ),
      ],
    );
  }
}

class ImcResultCard extends StatelessWidget {
  const ImcResultCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ImcCalculatorViewModel>(
        builder: ((context, viewModel, child) {
      return viewModel.shouldShowImcResult()
          ? Text(viewModel.imcToString())
          : Container();
    }));
  }
}
