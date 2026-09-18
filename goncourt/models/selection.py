from dataclasses import dataclass
from datetime import date
from typing import Optional


@dataclass
class Selection:
    id_selection: Optional[int] = None
    name_selection: str = ""
    date_selection: Optional[date] = None
    
    
    def __str__(self) -> str:
        return (
            f"Selection(id_selection={self.id_selection}, "
            f"name_selection='{self.name_selection}', "
            f"date_selection={self.date_selection})"
        )