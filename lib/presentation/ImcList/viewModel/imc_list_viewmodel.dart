import 'package:flutter/foundation.dart';

class ImcListViewModel extends ChangeNotifier {
  List<double> imcList = [];

  void addImc(double? imc) {
    if (imc == null) {
      return;
    }
    imcList.add(imc);
    notifyListeners();
  }
}
