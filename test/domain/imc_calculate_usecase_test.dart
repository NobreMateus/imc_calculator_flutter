import 'package:flutter_test/flutter_test.dart';
import 'package:imc_calculator/domain/useCases/imc_calculate_usecase.dart';

void main() {
  group('Imc Calculate Use Case', () {
    test(
        'execute when weight is 50.8 and heigth is 1.66 should return 18.435186529249528',
        () {
      final sut = ImcCalculateUseCase();

      final result = sut.execute(50.8, 1.66);

      expect(result, 18.435186529249528);
    });
  });
}
