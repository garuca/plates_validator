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

  correctReadingError(String id) {
    String idFormatted = '';
    List ids = id.codeUnits.map((unit) {
      return String.fromCharCode(unit);
    }).toList();
    ids.asMap().forEach((index, value) {
      var item = value;
      if ((index == 0 || index == 1 || index == 2 || index == 4) && value == "0")
        item = "O";

      if ((index == 3 || index == 5 || index == 6) && value == "O")
        item = "0";

      idFormatted = idFormatted + item;
    });
    this.id = idFormatted;
  }
}
