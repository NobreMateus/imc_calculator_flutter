import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imc_calculator/domain/entities/imc_category.dart';
import 'package:imc_calculator/presentation/ImcCalculator/bloc/imc_calculator_event.dart';

import '../../../domain/interfaces/imc_calculate_category_abstract.dart';
import '../../../domain/interfaces/imc_calculate_usecase_abstract.dart';
import 'imc_calculator_state.dart';

class ImcCalculatorBloc extends Bloc<ImcCalculatorEvent, ImcState> {
  final ImcCalculateUsecaseAbstract imcCalculateUseCase;
  final ImcCalculateCategoryAbstract imcCategoryUseCase;

  ImcCalculatorBloc(
      {required this.imcCalculateUseCase, required this.imcCategoryUseCase})
      : super(ImcEmptyFormState()) {
    on<ImcCalculateEvent>(_update);
  }

  _update(ImcCalculateEvent event, Emitter<ImcState> emit) async {
    emit(ImcLoadingState());
    await Future.delayed(const Duration(seconds: 3));
    _calculateImcValues(event.height, event.weight, emit);
  }

  _calculateImcValues(double height, double weight, Emitter<ImcState> emit) {
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
