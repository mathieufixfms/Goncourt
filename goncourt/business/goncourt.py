from dataclasses import dataclass, field
from typing import List

from daos.book_dao import BookDao
from models.book import Book


@dataclass
class Goncourt:
	books: List[Book] = field(default_factory=list, init=False)
	
	
	def add_book(self, book: Book):
		self.books.append(book)
		
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