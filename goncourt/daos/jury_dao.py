from dataclasses import dataclass
from typing import List, Optional

from daos.dao import Dao
from models.jury import Jury
from models.user_pro import UserPro

@dataclass
class JuryDao(Dao[Jury]):


    def read(self, id_jury: int) -> Optional[Jury]:
        jury: Optional[Jury]

        with Dao.connection.cursor() as cursor:
            sql = """
                SELECT
                    j.id_jury,
                    j.description,
                    j.president,
                    j.password,
                    j.id_user_pro,
                    up.name,
                    up.surname
                FROM jury j
                LEFT JOIN user_pro up ON up.id_user_pro = j.id_user_pro
                WHERE j.id_jury = %s
            """
            cursor.execute(sql, (id_jury,))
            record = cursor.fetchone()

        if record is not None:
            jury = Jury(
                record['id_jury'], # type: ignore
                record['description'], # type: ignore
                record['president'], # type: ignore
                record['password'], # type: ignore
                record['id_user_pro'], # type: ignore
            )
            jury.id = record['id_jury'] # type: ignore
            
            if record['id_user_pro'] is not None: # type: ignore
                user_pro = UserPro(
                    record['name'], # type: ignore
                    record['surname'], # type: ignore
                )
                user_pro.id = record['id_user_pro'] # type: ignore
                jury.user_pro = user_pro # type: ignore
        else:
            jury = None

        return jury

    def read_all(self) -> List[Jury]:
        juries: List[Jury] = []

        with Dao.connection.cursor() as cursor:
            sql = """
                SELECT
                    j.id_jury,
                    j.description,
                    j.president,
                    j.password,
                    j.id_user_pro,
                    up.name,
                    up.surname
                FROM jury j
                LEFT JOIN user_pro up ON up.id_user_pro = j.id_user_pro
                ORDER BY j.id_jury
            """
            cursor.execute(sql)
            for record in cursor.fetchall():
                juries.append(
                    Jury(
                        id_jury=record['id_jury'],
                        description=record['description'],
                        president=record['president'],
                        password=record['password'],
                        id_user_pro=record['id_user_pro'],
                        name=record.get('name'),
                        surname=record.get('surname')
                    )
                )

        return juries

    def create(self, obj: Jury) -> int:
        raise NotImplementedError

    def update(self, obj: Jury) -> bool:
        raise NotImplementedError

    def delete(self, obj: Jury) -> bool:
        raise NotImplementedError
