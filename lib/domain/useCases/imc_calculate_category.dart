import '../entities/imc_category.dart';
import '../interfaces/imc_calculate_category_abstract.dart';

class ImcCalculateCategoryUseCase implements ImcCalculateCategoryAbstract {
  @override
  ImcCategory execute(double imc) {
    if (_isThin(imc)) {
      return ImcCategory.thin;
    }
    if (_isHealthly(imc)) {
      return ImcCategory.healthy;
    }
    if (_isOverweight(imc)) {
      return ImcCategory.overweight;
    }
    if (_isObese(imc)) {
      return ImcCategory.obese;
    }
    return ImcCategory.none;
  }

  bool _isThin(double imc) {
    return imc < 18.5;
  }

  bool _isHealthly(double imc) {
    return imc >= 18.5 && imc < 25.9;
  }

  bool _isOverweight(double imc) {
    return imc >= 25.9 && imc < 29.9;
  }

  bool _isObese(double imc) {
    return imc >= 29.9;
  }
}
