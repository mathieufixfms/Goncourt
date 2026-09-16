from dataclasses import dataclass
from datetime import date
from typing import Optional


@dataclass
class Book:
    id_book: Optional[int] = None
    title: str = ""
    ISBN: str = ""
    summary: Optional[str] = None
    nbr_de_pages: Optional[str] = None
    language_: Optional[str] = None
    price: Optional[float] = None
    character_: Optional[str] = None
    date_of_publication: Optional[date] = None
    id_editor: int = 0
    id_author: int = 0