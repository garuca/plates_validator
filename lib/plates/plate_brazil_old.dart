import 'package:platesvalidator/plates/plate_brazil.dart';

 class PlateBrazilOld extends PlateBrazil {
  PlateBrazilOld(String id) : super(id);
  bool validate() {
    if (super.validate()) {
      RegExp regExp =  RegExp(
        r"[A-Z]{3}[0-9]{4}",
      );
      return regExp.hasMatch(id);
    }
    return false;
  }
}