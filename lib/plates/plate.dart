import 'package:platesvalidator/plates/plate_brazil_old.dart';
import 'package:platesvalidator/plates/plates_mercosul_brazil.dart';

 class Plate {
  String id;
  Plate(this.id);
  dynamic getTypePlate(){
    if(PlateMercosulBrazil(id).validate()){
        return PlateMercosulBrazil(id);
    }
    if(PlateBrazilOld(id).validate()){
      return PlateBrazilOld(id);
    }
    return null;
  }
}