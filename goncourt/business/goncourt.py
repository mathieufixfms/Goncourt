from dataclasses import dataclass, field
from datetime import datetime
from typing import List

from daos.book_dao import BookDao
from models.book import Book


@dataclass
class Goncourt:
	books: List[Book] = field(default_factory=list, init=False)
	
		
	def display_book_list(self):
		for book in self.books:
			print(f"liste des livres : {book}")
		
	@staticmethod
	def get_book_by_id(id_book : int):
		book_dao = BookDao()
		return book_dao.read(id_book)

	@staticmethod
	def display_book_by_id(id_book: int) -> None:
		book = Goncourt.get_book_by_id(id_book)
		if book is None:
			print(f"Aucun livre trouve avec l'identifiant {id_book}.")
			return
		print(book)

	@staticmethod
	def display_book_titles() -> None:
		book_dao = BookDao()
		for book in book_dao.read_all():
			print(book.title)

	@staticmethod
	def add_book() -> None:
		answer = input("Voulez-vous ajouter un livre ? (o/n) : ").strip().lower()
		if answer not in ("o", "oui"):
			print("Ajout annule.")
			return

		title = input("Titre : ").strip()
		ISBN = input("ISBN : ").strip()
		id_editor = int(input("Identifiant de l'editeur : ").strip())
		id_author = int(input("Identifiant de l'auteur : ").strip())
		book = Book(title, ISBN, id_editor, id_author)
		book.summary = input("Resume (facultatif) : ").strip() or None
		book.nbr_de_pages = input("Nombre de pages (facultatif) : ").strip() or None
		book.language_ = input("Langue (facultatif) : ").strip() or None
		price = input("Prix (facultatif) : ").strip()
		book.price = float(price) if price else None
		book.character_ = input("Personnages (facultatif) : ").strip() or None
		book.date_of_publication = input("Date de publication (facultatif, format AAAA-MM-JJ) : ").strip() or None
		if book.date_of_publication:
			book.date_of_publication = datetime.strptime(book.date_of_publication, "%Y-%m-%d").date()
		book_dao = BookDao()
		book_dao.create(book)
		print(f"Livre ajoute avec l'identifiant {book.id}.")

	@staticmethod
	def delete_book() -> None:
		id_book = int(input("Identifiant du livre a supprimer : ").strip())
		book_dao = BookDao()
		book = book_dao.read(id_book)

		if book is None:
			print(f"Aucun livre trouve avec l'identifiant {id_book}.")
			return

		answer = input(f"Voulez-vous supprimer le livre '{book.title}' ? (o/n) : ")
		if answer.strip().lower() not in ("o", "oui"):
			print("Suppression annulee.")
			return

		if book_dao.delete(book):
			print("Livre supprime.")
		else:
			print("Le livre n'a pas pu etre supprime.")