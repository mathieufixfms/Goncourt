from dataclasses import dataclass
from typing import Optional


@dataclass
class UserPro:
    id_user_pro: Optional[int] = None
    name: Optional[str] = None
    surname: Optional[str] = None