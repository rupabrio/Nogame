import 'armas/cuchillo.dart';
import 'soldados/soldado.dart';
import 'armas/armas.dart';

void main() {
  Soldado soldado_1 = Soldado("pepito", 75, Cuchillo());
  Soldado soldado_2 = Soldado("roberto", 75, Revolver());
  Soldado soldado_3 = Soldado("juanito", 75, Ak());

  soldado_1.atacar(soldado_2);
  soldado_2.atacar(soldado_3);
  soldado_3.atacar(soldado_1);
  soldado_3.atacar(soldado_2);
}
