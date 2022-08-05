import 'package:flutter_test/flutter_test.dart';
import 'package:imc_calculator/domain/entities/imc_category.dart';
import 'package:imc_calculator/domain/interfaces/imc_calculate_category_abstract.dart';
import 'package:imc_calculator/domain/interfaces/imc_calculate_usecase_abstract.dart';
import 'package:imc_calculator/presentation/ImcCalculator/bloc/imc_calculator_bloc.dart';
import 'package:imc_calculator/presentation/ImcCalculator/bloc/imc_calculator_event.dart';
import 'package:imc_calculator/presentation/ImcCalculator/bloc/imc_calculator_state.dart';

class MockImcCalculateUsecase implements ImcCalculateUsecaseAbstract {
  @override
  double execute(double weight, double height) {
    return 20;
  }
}

class MockImcCalculateCategoryAbstract implements ImcCalculateCategoryAbstract {
  @override
  ImcCategory execute(double imc) {
    return ImcCategory.healthy;
  }
}

void main() {
  group("bloc tests", () {
    test("initial state of bloc should be empty", () async {
      final sut = ImcCalculatorBloc(
        imcCalculateUseCase: MockImcCalculateUsecase(),
        imcCategoryUseCase: MockImcCalculateCategoryAbstract(),
      );

      await expectLater(sut.state, isA<ImcEmptyFormState>());
    });

    test("second state should loading and then result", () async {
      final sut = ImcCalculatorBloc(
        imcCalculateUseCase: MockImcCalculateUsecase(),
        imcCategoryUseCase: MockImcCalculateCategoryAbstract(),
      );

      sut.add(ImcCalculateEvent(
        height: 1.7,
        weight: 70,
      ));

      await expectLater(
        sut.stream,
        emitsInOrder([
          isA<ImcLoadingState>(),
          isA<ImcResultState>(),
        ]),
      );
    });
  });
}
