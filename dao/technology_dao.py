from sqlalchemy import and_
from sqlalchemy.orm import Session, joinedload

from dao.base_dao import BaseDao
from models.technology import Technology
from models.technology_category import TechnologyCategory


class TechnologyDao(BaseDao):
    def __init__(self, session: Session):
        super().__init__(session)
        self.model = Technology

    def get_technologies(self, category_code: str = None) -> list[Technology]:
        """技術情報を取得"""
        query = (
            self.session.query(Technology)
            .options(joinedload(Technology.category))
            .join(Technology.category)
            .filter(
                self._get_common_filters(TechnologyCategory),
                (
                    TechnologyCategory.code == category_code
                    if category_code
                    else True
                ),
            )
        )
        query = self._add_common_filters(query)
        return query.order_by(Technology.name).all()
