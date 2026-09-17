from dataclasses import dataclass, field
from datetime import date
from typing import Optional


@dataclass
class Book:
    id: Optional[int] = field(default=None, init=False)
    title: str 
    ISBN: str 
    summary: Optional[str] = field(default=None, init=False)
    nbr_de_pages: Optional[str] = field(default=None, init=False)
    language_: Optional[str] = field(default=None, init=False)
    price: Optional[float] = field(default=None, init=False)
    character_: Optional[str] = field(default=None, init=False)
    date_of_publication: Optional[date] = field(default=None, init=False)
    id_editor: int = 0
    id_author: int = 0

    def set_book(self, book: "Book") -> None:
        self.title = book.title
        self.ISBN = book.ISBN
        self.summary = book.summary
        self.nbr_de_pages = book.nbr_de_pages
        self.language_ = book.language_
        self.price = book.price
        self.character_ = book.character_
        self.date_of_publication = book.date_of_publication
        self.id_editor = book.id_editor
        self.id_author = book.id_author
        
        
    def __str__(self) -> str:
        
        return f"Book(id={self.id}, title='{self.title}', ISBN='{self.ISBN}', summary='{self.summary}', nbr_de_pages='{self.nbr_de_pages}', language_='{self.language_}', price={self.price}, character_='{self.character_}', date_of_publication={self.date_of_publication}, id_editor={self.id_editor}, id_author={self.id_author})"