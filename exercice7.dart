class Tache {
  String description;
  static int nombreTotal = 0;

  Tache(this.description) {
    Tache.nombreTotal++;
  }
}
void main() {
  var t1 = Tache("faire clock in");
  var t2 = Tache("faire ton travail");
  var t3 = Tache("faire clock out");

  print("Nombre total de tâches : ${Tache.nombreTotal}");
}