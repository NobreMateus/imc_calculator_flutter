import 'package:flutter/material.dart';
import 'package:imc_calculator/presentation/ImcList/viewModel/imc_list_viewmodel.dart';
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
          GestureDetector(
            onTap: () {
              Provider.of<ImcCalculatorViewModel>(context, listen: false)
                  .parseAndUpdate(weightController.text, heightController.text);
              double? imc =
                  Provider.of<ImcCalculatorViewModel>(context, listen: false)
                      .imc;
              Provider.of<ImcListViewModel>(context, listen: false).addImc(imc);
            },
            child: Text(
              "CALCULAR",
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
