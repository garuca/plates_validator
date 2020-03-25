import 'package:platesvalidator/plates/plate.dart';

abstract class PlateBrazil extends Plate {
  PlateBrazil(String id) : super(id);

  bool validate() {
    if (id.length == 7) return true;

    return false;
  }
}
