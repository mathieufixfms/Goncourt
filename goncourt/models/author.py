from dataclasses import dataclass
from typing import Optional


@dataclass
class Author:
    id_author: Optional[int] = None
    biography: Optional[str] = None
    id_user_pro: int = 0