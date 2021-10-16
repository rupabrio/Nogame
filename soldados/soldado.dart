import '../armas/arma.dart';
import '../armas/cuchillo.dart';

class Soldado {
  String nombre = "sin nombre";
  int vida = 50;
  Arma arma = Cuchillo();
  Soldado(this.nombre, this.vida, this.arma);
  void estatus() {
    print("-" * 10);
    print(nombre);
    print("vida: $vida ");
    print("-" * 10);
  }

  void atacar(Soldado objetivo) {
    if (vida < 1){
      print("$nombre esta muerto");
    }
    estatus();
    print(" $nombre ataca con su " + "a $(objetivo.nombre)");
    arma.disparo();
    print("Haciendo puntos de danio", "$(arma.poder)");
    objetivo.vida = objetivo.vida - arma.poder;  
  }
}
