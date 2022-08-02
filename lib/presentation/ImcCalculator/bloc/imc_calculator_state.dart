import 'package:imc_calculator/domain/entities/imc_category.dart';

class ImcState {}

class ImcEmptyFormState extends ImcState {}

class ImcLoadingState extends ImcState {}

class ImcResultState extends ImcState {
  ImcResultState({
    required this.imcValue,
    required this.imcCategory,
  });

  double imcValue;
  ImcCategory imcCategory;
}
