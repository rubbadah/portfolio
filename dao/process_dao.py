from sqlalchemy.orm import Session

from dao.base_dao import BaseDao
from models.process import Process


class ProcessDao(BaseDao):
    def __init__(self, session: Session):
        super().__init__(session)
        self.model = Process

    def get_processes(self) -> list[Process]:
        """工程情報を取得"""
        query = self.session.query(Process)
        query = self._add_common_filters(query)
        return query.order_by(Process.order).all()
