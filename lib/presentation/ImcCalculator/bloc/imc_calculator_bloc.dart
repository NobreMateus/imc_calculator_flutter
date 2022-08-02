import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imc_calculator/domain/entities/imc_category.dart';
import 'package:imc_calculator/domain/useCases/imc_calculate_category.dart';
import 'package:imc_calculator/presentation/ImcCalculator/bloc/imc_calculator_event.dart';

import '../../../domain/useCases/imc_calculate_usecase.dart';
import 'imc_calculator_state.dart';

class ImcCalculatorBloc extends Bloc<ImcCalculatorEvent, ImcState> {
  ImcCalculatorBloc() : super(ImcEmptyFormState()) {
    on<ImcCalculateEvent>(_update);
  }

  _update(ImcCalculateEvent event, Emitter<ImcState> emit) async {
    emit(ImcLoadingState());
    await Future.delayed(const Duration(seconds: 3));
    _calculateImcValues(event.height, event.weight, emit);
  }

  _calculateImcValues(double height, double weight, Emitter<ImcState> emit) {
    var imcCalculateUseCase = ImcCalculateUseCase();
    var imcCategoryUseCase = ImcCalculateCategoryUseCase();

    double imcValue = imcCalculateUseCase.execute(
      weight,
      height,
    );
    ImcCategory imcCategory = imcCategoryUseCase.execute(imcValue);

    emit(ImcResultState(
      imcValue: imcValue,
      imcCategory: imcCategory,
    ));
  }
}
