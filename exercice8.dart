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

class Roman extends Livre {
  String genre;

  Roman(super.titre, super.auteur, this.genre);

  void afficherGenre() {
    print("Genre: $genre");
  }

  @override
  void afficherInfos() {
    super.afficherInfos();
    afficherGenre();
  }
}

void main() {
  var l1 = Livre("Le Fils du pauvre", "Mouloud Feraoun");
  var l2 = Livre("Les Hirondelles de Kaboul", "Yasmina Khadra");
  l1.afficherInfos();
  l2.afficherInfos();
  print("Pages de l1 : ${l1.pages}");

  var r1 = Roman("Nedjma", "Kateb Yacine", "Drame");
  var r2 = Roman("La Colline oubliée", "Mouloud Mammeri", "Roman social");
  r1.afficherInfos();
  r2.afficherInfos();

  Livre.afficherTotal();
}