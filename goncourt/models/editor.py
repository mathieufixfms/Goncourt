from dataclasses import dataclass
from typing import Optional


@dataclass
class Editor:
    id_editor: Optional[int] = None
    nationality: Optional[str] = None
    id_user_pro: int = 0