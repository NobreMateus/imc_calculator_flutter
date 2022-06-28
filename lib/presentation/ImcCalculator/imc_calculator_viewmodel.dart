import 'package:flutter/foundation.dart';
import 'package:imc_calculator/domain/useCases/imc_calculate_usecase.dart';

class ImcCalculatorViewModel extends ChangeNotifier {
  double? weight = 0.0;
  double? height = 0.0;
  double? imc;

  void parseAndUpdate(String weight, String height) {
    this.height = _parseString(height);
    this.weight = _parseString(weight);
    _calculateImc();
    notifyListeners();
  }

  double? _parseString(String value) {
    if (value == "") {
      return null;
    }
    return double.tryParse(value);
  }

  void _calculateImc() {
    if (weight == null || height == null) {
      imc = null;
      return;
    }
    imc = ImcCalculateUseCase().execute(weight!, height!);
  }

  bool shouldShowImcResult() {
    return imc != null;
  }

  String imcToString() {
    if (imc == null) {
      return "";
    }
    return imc.toString();
  }
}
