from sqlalchemy.orm import Session, joinedload

from dao.base_dao import BaseDao
from models import BackgroundEra, BackgroundEvent


class BackgroundDao(BaseDao):
    def __init__(self, session: Session):
        super().__init__(session)
        self.model = BackgroundEra

    def get_backgrounds(self) -> list[BackgroundEra]:
        """生い立ち情報を取得"""
        query = (
            self.session.query(BackgroundEra)
            .options(joinedload(BackgroundEra.events))
            .join(BackgroundEra.events)
            .filter(self._get_common_filters(BackgroundEvent))
        )
        query = self._add_common_filters(query)
        return query.order_by(BackgroundEra.order).all()
