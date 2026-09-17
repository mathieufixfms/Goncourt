from typing import List, Optional


from models.book import Book
from daos.dao import Dao


class BookDao(Dao[Book]):

	def read(self, id_book= int) -> Optional[Book]:
		book: Optional[Book]

		with Dao.connection.cursor() as cursor:
			sql = """
                SELECT
                    id_book,
                    title,
                    ISBN,
                    summary,
                    nbr_de_pages,
                    language_,
                    price,
                    character_,
                    date_of_publication,
                    id_editor,
                    id_author
                FROM book
				WHERE id_book = %s
            """
			cursor.execute(sql, (id_book,))
			record = cursor.fetchone()

		if record is not None:
			book = Book(record['title'], record['ISBN'], record['id_editor'], record['id_author'])
			book.id = record['id_book']
			book.summary = record['summary']
			book.nbr_de_pages = record['nbr_de_pages']
			book.language_ = record['language_']
			book.price = record['price']
			book.character_ = record['character_']
			book.date_of_publication = record['date_of_publication']
		else:
			book = None
		return book

	def read_all(self) -> List[Book]:
		books: List[Book] = []

		with Dao.connection.cursor() as cursor:
			cursor.execute("SELECT id_book, title FROM book ORDER BY id_book")
			for record in cursor.fetchall():
				book = Book(record['title'], "")
				book.id = record['id_book']
				books.append(book)

		return books

	def create(self, book: Book) -> int:
		try:
			with Dao.connection.cursor() as cursor:
				sql = """
                    INSERT INTO book (
						title,
                        ISBN,
                        summary,
                        nbr_de_pages,
                        language_,
                        price,
                        character_,
                        date_of_publication,
                        id_editor,
                        id_author
                    )
					VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                """
				cursor.execute(sql, (
					book.title,
					book.ISBN,
					book.summary,
					book.nbr_de_pages,
					book.language_,
					book.price,
					book.character_,
					book.date_of_publication,
					book.id_editor,
					book.id_author
				))

			book.id = cursor.lastrowid
			Dao.connection.commit()
			return book.id
		except Exception:
			Dao.connection.rollback()
			raise

	def update(self, book: Book) -> bool:
		try:
			with Dao.connection.cursor() as cursor:
				sql = """
					UPDATE book
					SET title = %s,
						ISBN = %s,
						summary = %s,
						nbr_de_pages = %s,
						language_ = %s,
						price = %s,
						character_ = %s,
						date_of_publication = %s,
						id_editor = %s,
						id_author = %s
					WHERE id_book = %s
				"""
				cursor.execute(sql, (
					book.title,
					book.ISBN,
					book.summary,
					book.nbr_de_pages,
					book.language_,
					book.price,
					book.character_,
					book.date_of_publication,
					book.id_editor,
					book.id_author,
					book.id_book
				))

			Dao.connection.commit()
			return cursor.rowcount > 0
		except Exception:
			Dao.connection.rollback()
			raise

	def delete(self, book: Book) -> bool:
		try:
			with Dao.connection.cursor() as cursor:
				sql = "DELETE FROM book WHERE id_book = %s"
				cursor.execute(sql, (book.id,))

			Dao.connection.commit()
			return cursor.rowcount > 0
		except Exception:
			Dao.connection.rollback()
			raise	
       

	