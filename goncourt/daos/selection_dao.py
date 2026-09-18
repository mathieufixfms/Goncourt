from dataclasses import dataclass
from typing import List ,Optional
from daos.dao import Dao
from models.selection import Selection


@dataclass
class SelectionDao(Dao[Selection]):
    
    def read(self, id_selection: int) -> Optional[Selection]:
        selection: Optional[Selection] 

        with Dao.connection.cursor() as cursor:
            sql = """
                SELECT
                    id_selection,
                    name_selection,
                    date_selection
                FROM selection
                WHERE id_selection = %s
            """
            cursor.execute(sql, (id_selection,))
            record = cursor.fetchone()

        if record is not None:
            selection = Selection(
                record['id_selection'], # type: ignore
                record['name_selection'], # type: ignore
                record['date_selection'], # type: ignore
            )
        else:
            selection = None

        return selection

    def create(self, obj: Selection) -> int:
        raise NotImplementedError

    def update(self, obj: Selection) -> bool:
        raise NotImplementedError

    def delete(self, obj: Selection) -> bool:
        raise NotImplementedError
