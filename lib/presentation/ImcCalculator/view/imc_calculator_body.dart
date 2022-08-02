import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imc_calculator/presentation/ImcCalculator/bloc/imc_calculator_bloc.dart';
import '../bloc/imc_calculator_state.dart';
import 'calculator_form.dart';
import 'imc_result_card.dart';

class ImcCalculatorBody extends StatelessWidget {
  const ImcCalculatorBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImcCalculatorBloc, ImcState>(
        bloc: BlocProvider.of<ImcCalculatorBloc>(context),
        builder: (context, state) {
          return Container(
              color: Theme.of(context).backgroundColor,
              child: Column(
                children: [
                  const SizedBox(
                    height: 36,
                  ),
                  const CalculatorForm(),
                  const SizedBox(
                    height: 48,
                  ),
                  (state is ImcResultState)
                      ? const ImcResultCard()
                      : Container(),
                  (state is ImcLoadingState)
                      ? const CircularProgressIndicator()
                      : Container(),
                ],
              ));
        });
  }
}
