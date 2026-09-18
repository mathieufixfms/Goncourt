from dataclasses import dataclass
from typing import Optional


@dataclass
class Editor:
    id_editor: Optional[int] = None
    nationality: Optional[str] = None
    id_user_pro: int = 0
    
    def __str__(self) -> str:
        return f'{self.id_editor} {self.nationality} {self.id_user_pro}'