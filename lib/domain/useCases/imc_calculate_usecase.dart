import '../interfaces/imc_calculate_usecase_abstract.dart';

class ImcCalculateUseCase extends ImcCalculateUsecaseAbstract {
  @override
  double execute(double weight, double height) {
    final imc = weight / (height * height);
    return imc;
  }
}
