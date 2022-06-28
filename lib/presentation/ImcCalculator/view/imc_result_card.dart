import 'package:flutter/material.dart';
import 'package:imc_calculator/presentation/ImcCalculator/viewModel/imc_calculator_viewmodel.dart';
import 'package:provider/provider.dart';

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
