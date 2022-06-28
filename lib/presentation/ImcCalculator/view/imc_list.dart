import 'package:flutter/material.dart';
import 'package:imc_calculator/presentation/ImcList/viewModel/imc_list_viewmodel.dart';
import 'package:provider/provider.dart';

class ImcListView extends StatelessWidget {
  const ImcListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ImcListViewModel>(builder: (context, value, child) {
      return Column(
        children: value.imcList.map((imc) => Text(imc.toString())).toList(),
      );
    });
  }
}
