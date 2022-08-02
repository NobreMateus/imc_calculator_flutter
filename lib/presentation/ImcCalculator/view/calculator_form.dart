import 'package:flutter/material.dart';
import 'custom_textfield.dart';

class CalculatorForm extends StatefulWidget {
  const CalculatorForm({Key? key}) : super(key: key);

  @override
  State<CalculatorForm> createState() => _CalculatorFormState();
}

class _CalculatorFormState extends State<CalculatorForm> {
  double opacity = 0.5;

  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextField(
            label: "Peso",
            unit: "Kg",
            controller: weightController,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            label: "Altura",
            unit: "M",
            controller: heightController,
          ),
          const SizedBox(
            height: 36,
          ),
          CalculateButton(
            weightController: weightController,
            heightController: heightController,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                opacity = 1;
              });
            },
            child: AnimatedOpacity(
              duration: const Duration(seconds: 2),
              opacity: opacity,
              child: Text(
                "SALVAR RESULTADO",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    Key? key,
    required this.weightController,
    required this.heightController,
  }) : super(key: key);

  final TextEditingController weightController;
  final TextEditingController heightController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        "CALCULAR",
        style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
