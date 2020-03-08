import 'package:platesvalidator/plates/plate.dart';

abstract class PlateMercosul extends Plate {
  PlateMercosul(String id) : super(id);
  bool validade() {
    if (id.length == 7) {
      return true;
    }
    return false;
  }
}