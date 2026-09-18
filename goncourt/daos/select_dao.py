from dataclasses import dataclass
from typing import Optional

from daos.dao import Dao
from models.select import Select
from models.book import Book
from models.selection import Selection


@dataclass
class SelectDao(Dao[Select]):

    def read_all_by_selection_id(self, id_selection: int) -> list[Select]:
        selects: list[Select] = []

        with Dao.connection.cursor() as cursor:
            sql = """
                SELECT
                    s.id_book,
                    s.id_selection,
                    b.title,
                    se.name_selection,
                    se.date_selection
                FROM `select_` AS s
                INNER JOIN book AS b ON b.id_book = s.id_book
                INNER JOIN selection AS se
                    ON se.id_selection = s.id_selection
                WHERE s.id_selection = %s
                ORDER BY s.id_book
            """
            cursor.execute(sql, (id_selection,))

            for record in cursor.fetchall():
                selects.append(Select(
                    record['id_book'],
                    record['id_selection'],
                    record['title'],
                    record['name_selection'],
                    record['date_selection'],
                ))

        return selects
    def read(self, id_selection: int) -> Optional[Select]:
        raise NotImplementedError

    def create(self, obj: Select) -> int:
        raise NotImplementedError

    def update(self, obj: Select) -> bool:
        raise NotImplementedError

    def delete(self, obj: Select) -> bool:
        raise NotImplementedError
