from dataclasses import dataclass
from typing import Optional


@dataclass
class Jury:
    id_jury: Optional[int] = None
    description: Optional[str] = None
    president: bool = False
    password: Optional[str] = None
    id_user_pro: int = 0