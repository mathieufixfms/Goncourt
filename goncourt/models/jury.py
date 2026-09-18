from dataclasses import dataclass
from typing import Optional


@dataclass
class Jury:
    id_jury: Optional[int] = None
    description: Optional[str] = None
    president: bool = False
    password: Optional[str] = None
    id_user_pro: int = 0
    name: Optional[str] = None
    surname: Optional[str] = None

    def __str__(self) -> str:
        return (
            f"Jury(id_jury={self.id_jury}, "
            f"description='{self.description}', "
            f"president={self.president}," 
            f"password='{self.password}', "
            f"id_user_pro={self.id_user_pro}, "
            f"name='{self.name}',"
            f"surname='{self.surname}')"
        )