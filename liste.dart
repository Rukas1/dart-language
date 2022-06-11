import 'dart:core';
import 'dart:io';

void main() => liste();

/**
 * Ne t'inquiete pas
 * ce code n'a pas pour but
 * d'etre "propre"
 * il y a d'ailleurs BEAUCOUP
 * de fautes d'orthographes.
 */

void liste() {
  bool running = true;

  String menu = '''
1) Afficher la liste
2) Ajouter un élément à la liste
3) Supprimer un élément de la liste
4) Vider entièrement la liste
5) Verifier la présence d'un element dans la liste
6) La taille de la liste
7) Quitter
>> ''';

  var liste = [];

  do {
    print('-' * 50);
    stdout.write(menu);
    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        {
          if (liste.isEmpty) {
            print("Votre liste est vide");
          } else {
            print("Votre liste : ");
            for (var element in liste) {
              print("<> $element");
            }
            /*
            for (var i = 0; i < liste.length; i++) {
              print("<> ${liste.elementAt(i)}"); // liste[i]
            }
            */
          }
        }
        break;
      case "2":
        {
          while (true) {
            stdout.write("Quel element souhaitez vous ajouter (x: quitter) ? ");
            String? element = stdin.readLineSync();
            if (element?.toLowerCase() == "x") {
              break;
            }
            if (liste.contains(element?.toLowerCase())) {
              stdout.write(
                  "L'element $element est deja dans la liste voulez vous quand meme l'ajouter ? (yes/no) ");
              String? response = stdin.readLineSync();

              if (response?.toLowerCase() == "no") {
                print("L'element $element n'a pas été ajouté");
                continue;
              }
            }
            liste.add(element?.toLowerCase());
            print("L'element ${element?.toLowerCase()} a bien été ajouté");
          }
        }
        break;
      case "3":
        {
          stdout.write("Quel element souhaitez vous supprimer ? ");
          String? element = stdin.readLineSync();

          if (liste.contains(element?.toLowerCase())) {
            liste.remove(element);
            print("L'élément ${element?.toLowerCase()} a bien été supprimé");
          } else {
            print("L'élément $element n'existe pas");
          }
        }
        break;
      case "4":
        {
          if (liste.isNotEmpty) {
            liste.clear();
            print("La liste a été vidé");
          } else {
            print("La liste est déjà vide");
          }
        }
        break;
      case "5":
        {
          stdout.write("Quel element souhaitez vous rechercher ? ");
          String? response = stdin.readLineSync();
          if (liste.contains(response?.toLowerCase())) {
            print("Oui la liste contient l'element ${response?.toLowerCase()}");
          } else {
            print(
                "Non la liste ne contient pas l'element ${response?.toLowerCase()}");
          }
        }
        break;
      case "6":
        {
          if (liste.isNotEmpty) {
            print("La liste contient ${liste.length} elements");
          } else {
            print("La liste est vide");
          }
        }
        break;
      case "7":
        {
          print("Au revoir...");
          running = false;
        }
        break;
      default:
        {
          print('Option indisponnible...');
        }
    }
  } while (running);
}
