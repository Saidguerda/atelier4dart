import 'dart:math';
abstract class Forme {
  double calculerAire();

  void afficherMessage() {
    print("Calcul de l'aire...");
  }
}

class Cercle extends Forme {
  final double rayon;
  Cercle(this.rayon);

  @override
  double calculerAire() => pi * rayon * rayon;
}
class Rectangle extends Forme {
  double longueur;
  double largeur;
  Rectangle(this.longueur, this.largeur);

  @override
  double calculerAire() => longueur * largeur;
}
void main() {
  var cercle = Cercle(9);
  var rectangle = Rectangle(5, 3);

  cercle.afficherMessage();
  print("Aire du cercle : ${cercle.calculerAire()}");

  rectangle.afficherMessage();
  print("Aire du rectangle : ${rectangle.calculerAire()}");
}
