from datetime import datetime

from sqlalchemy import desc
from sqlalchemy.orm import Session, joinedload

from dao.base_dao import BaseDao
from models import Process, Technology, Work


class WorkDao(BaseDao):
    def __init__(self, session: Session):
        super().__init__(session)
        self.model = Work

    def get_works(self) -> list[Work]:
        """業務経歴を取得"""
        query = (
            self.session.query(Work)
            .options(joinedload(Work.technologies), joinedload(Work.processes))
            .join(Work.technologies)
            .join(Work.processes)
            .filter(
                self._get_common_filters(Technology),
                self._get_common_filters(Process),
            )
        )
        query = self._add_common_filters(query)
        return query.order_by(desc(Work.start_period)).all()
