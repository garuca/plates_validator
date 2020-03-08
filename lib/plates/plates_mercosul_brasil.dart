import 'package:platesvalidator/plates/plate_mercosul.dart';

class PlateMercosulBrasil extends PlateMercosul {
  PlateMercosulBrasil(String id) : super(id);
  @override
  bool validade() {
    if (super.validade()) {
      RegExp regExp = new RegExp(
        r"[A-Z]{3}[0-9]{1}[A-Z]{1}[0-9]{2}",
      );
      return regExp.hasMatch(id);
    }
    return false;
  }
}