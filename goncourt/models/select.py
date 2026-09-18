from dataclasses import dataclass
from datetime import date
from typing import Optional


@dataclass
class Select:
    id_book: int
    id_selection: int
    title: str = ""
    name_selection: str = ""
    date_selection: Optional[date] = None
    
    def __str__(self) -> str:
        return f"Select(id_book={self.id_book}, id_selection={self.id_selection})"