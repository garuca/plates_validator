import 'package:flutter_test/flutter_test.dart';
import 'package:platesvalidator/plates/plate.dart';
import 'package:platesvalidator/plates/plates_mercosul_brazil.dart';

import 'package:platesvalidator/plates_validator.dart';

void main() {
  test('adds one to input values', () {
    const ID = 'ABC1A34';
    const ID_OLD = 'ABC1234';
    var plate = Plate(ID_OLD).getTypePlate();
    print(plate?.runtimeType);
//    final calculator = Calculator();
//    expect(calculator.addOne(2), 3);
//    expect(calculator.addOne(-7), -6);
//    expect(calculator.addOne(0), 1);
//    expect(() => calculator.addOne(null), throwsNoSuchMethodError);
  });
}
