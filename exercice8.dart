class Livre {
  String titre;
  String auteur;

  int _pages = 200;
  static int totalLivres = 0;

  Livre(this.titre, this.auteur) {
    totalLivres++;
  }

  int get pages => _pages;

  void afficherInfos() {
    print("Titre: $titre, Auteur: $auteur");
  }

  static void afficherTotal() {
    print("Nombre total de livres : $totalLivres");
  }
}

void main() {
  var l1 = Livre("La rebelle ", "matoub lounes ");
  var l2 = Livre("mon pays ", "mouloud mamarie");
  l1.afficherInfos();
  l2.afficherInfos();
  print("Pages de l1 : ${l1.pages}");
  Livre.afficherTotal();
}
