from dataclasses import dataclass
from datetime import date
from typing import Optional


@dataclass
class Selection:
    id_selection: Optional[int] = None
    name_selection: str = ""
    date_selection: Optional[date] = None