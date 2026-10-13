class Media {
  final String titre;

  Media(this.titre);

  void afficherType() {
    print('Ceci est un média générique.');
  }
}
class Livre extends Media {
  final String auteur;

  Livre(super.titre, this.auteur);

  @override
  void afficherType() {
    print('Ceci est un Livre : $titre par $auteur.');
  }
}
class Film extends Media {
  final int dureeMinutes;

  Film(super.titre, this.dureeMinutes);

  @override
  void afficherType() {
    print('Ceci est un Film : $titre ($dureeMinutes minutes).');
  }
}
void main() {
  List<Media> catalogue = [
    Livre('Mes beaux réves', 'Mouloud Mammerie'),
    Livre('La Rebelle', 'Matoub Lounes'),
    Film('fast and furious', 139),
    Film('Rambo', 188),
  ];

  for (var m in catalogue) {
    m.afficherType();
  }
}