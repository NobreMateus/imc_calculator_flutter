import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imc_calculator/presentation/ImcCalculator/bloc/imc_calculator_event.dart';

import 'imc_calculator_state.dart';

class ImcCalculatorBloc extends Bloc<ImcCalculatorEvent, ImcState> {
  ImcCalculatorBloc() : super(ImcEmptyFormState()) {
    on<ImcCalculateEvent>(_update);
  }

  _update(ImcCalculateEvent event, Emitter<ImcState> emit) async {
    emit(ImcLoadingState());
    await Future.delayed(const Duration(seconds: 3));
    emit(ImcResultState());
  }
}
