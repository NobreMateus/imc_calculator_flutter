import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imc_calculator/presentation/ImcCalculator/bloc/imc_calculator_bloc.dart';
import '../bloc/imc_calculator_event.dart';
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
      onTap: () {
        BlocProvider.of<ImcCalculatorBloc>(context).add(ImcCalculateEvent(
          height: 1.73,
          weight: 73,
        ));
      },
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
