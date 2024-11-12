from sqlalchemy import desc
from sqlalchemy.orm import Session, joinedload

from dao.base_dao import BaseDao
from models import Project, Technology


class ProjectDao(BaseDao):
    def __init__(self, session: Session):
        super().__init__(session)
        self.model = Project

    def get_projects(self) -> list[Project]:
        """個人プロジェクト情報を取得"""
        query = (
            self.session.query(Project)
            .options(joinedload(Project.technologies))
            .join(Project.technologies)
            .filter(self._get_common_filters(Technology))
        )
        query = self._add_common_filters(query)
        return query.order_by(desc(Project.start_period)).all()
