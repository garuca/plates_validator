import 'package:platesvalidator/plates/plate_mercosul.dart';

class PlateMercosulBrazil extends PlateMercosul {
  PlateMercosulBrazil(String id) : super(id);
  @override
  bool validate() {
    if (super.validate()) {
      RegExp regExp = new RegExp(
        r"[A-Z]{3}[0-9]{1}[A-Z]{1}[0-9]{2}",
      );
      return regExp.hasMatch(id);
    }
    return false;
  }
}