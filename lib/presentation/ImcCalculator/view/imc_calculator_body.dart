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
    return Container(
      color: Theme.of(context).backgroundColor,
      child: BlocBuilder<ImcCalculatorBloc, ImcState>(
          bloc: BlocProvider.of<ImcCalculatorBloc>(context),
          builder: (context, state) {
            if (state is ImcEmptyFormState) {
              return const Center(child: CircularProgressIndicator());
            }
            return Text("Resultado Aqui");
            // return Column(
            //   children: [
            //     const SizedBox(
            //       height: 36,
            //     ),
            //     CalculatorForm(),
            //     const SizedBox(
            //       height: 48,
            //     ),
            //     const ImcResultCard(),
            //   ],
            // );
          }),
    );
  }
}
