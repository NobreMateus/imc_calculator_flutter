import 'package:flutter/material.dart';
import 'calculator_form.dart';
import 'imc_result_card.dart';

class ImcCalculatorBody extends StatelessWidget {
  const ImcCalculatorBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).backgroundColor,
        child: Column(
          children: const [
            SizedBox(
              height: 36,
            ),
            CalculatorForm(),
            SizedBox(
              height: 48,
            ),
            ImcResultCard(),
          ],
        ));
  }
}
