from dataclasses import dataclass
from typing import Optional


@dataclass
class Voter:
    id_voter: Optional[int] = None
    id_jury: Optional[int] = None
    id_selection: Optional[int] = None
    id_book: Optional[int] = None
    nbr_of_yes: int = 0
    nbr_of_no: int = 0