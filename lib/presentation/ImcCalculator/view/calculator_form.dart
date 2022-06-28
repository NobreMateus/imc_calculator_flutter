import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewModel/imc_calculator_viewmodel.dart';
import 'custom_textfield.dart';

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
