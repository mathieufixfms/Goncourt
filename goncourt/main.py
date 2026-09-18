from business.goncourt import Goncourt


def main() -> None:
    
	"""Programme principal."""
	print("""\
""")
	while True:
		print("""
+------------------------------------------+
|       Bienvenue dans notre école         |
+------------------------------------------+
|                  MENU                    |
+------------------------------------------+
|1 | afficher les informations d'un livre  |
|2 | affiche la liste des livres           |
|3 | ajouter un livre                      |
|4 | supprimer un livre                    |
|5 |                    |
|6 |        |
|7 |  |
|8 |          |
|9 |        |
|0 | Quitter                               |
+------------------------------------------+
""")

		choice = input("Choisissez une action : ").strip()
		if choice == "1":
			Goncourt.display_book_by_id(18)
		elif choice == "2":
			Goncourt.display_book_titles()
		elif choice == "3":
			Goncourt.add_book()
		elif choice == "4":
			Goncourt.delete_book()
		#elif choice == "5":
			
		#elif choice == "6":
		
		#elif choice == "7":
		
		#elif choice == "8":
		
		#elif choice == "9":
		
		elif choice == "0":
			print("Au revoir merci !")
			break
		else:
			print("Choix invalide. Veuillez sélectionner une option du menu.")





if __name__ == "__main__":
    main()