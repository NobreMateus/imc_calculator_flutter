import 'package:flutter/material.dart';
import 'package:imc_calculator/presentation/ImcCalculator/view/imc_list.dart';
import 'calculator_form.dart';
import 'imc_result_card.dart';

class ImcCalculatorBody extends StatelessWidget {
  const ImcCalculatorBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalculatorForm(),
        const ImcResultCard(),
        const ImcListView(),
      ],
    );
  }
}
