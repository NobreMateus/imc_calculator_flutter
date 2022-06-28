import 'package:flutter_test/flutter_test.dart';
import 'package:imc_calculator/domain/entities/imc_category.dart';
import 'package:imc_calculator/domain/useCases/imc_calculate_category.dart';

void main() {
  final sut = ImcCalculateCategoryUseCase();

  group('Calculate Category Use Case Tests', () {
    test('execute when imc is 18.0 should return thin', () {
      final result = sut.execute(18.0);

      expect(result, ImcCategory.thin);
    });

    test('execute when imc is 20 should return healthly', () {
      final result = sut.execute(20.0);

      expect(result, ImcCategory.healthy);
    });

    test('execute when imc is 26 should return overweight', () {
      final result = sut.execute(26.0);

      expect(result, ImcCategory.overweight);
    });

    test('execute when imc is 30 should return obese', () {
      final result = sut.execute(30.0);

      expect(result, ImcCategory.obese);
    });
  });
}
