from dataclasses import dataclass
from typing import Optional


@dataclass
class Author:
    id_author: Optional[int] = None
    biography: Optional[str] = None
    id_user_pro: int = 0
    
    def __str__(self) -> str:
        return f'{self.id_author} {self.biography} {self.id_user_pro}'