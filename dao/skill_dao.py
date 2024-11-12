from sqlalchemy import desc
from sqlalchemy.orm import Session, joinedload

from dao.base_dao import BaseDao
from models import Level, Skill, SkillCategory, Technology


class SkillDao(BaseDao):
    def __init__(self, session: Session):
        super().__init__(session)
        self.model = Skill

    def get_skills(self, category_code: str) -> list[Skill]:
        """スキル情報を取得"""
        query = (
            self.session.query(Skill)
            .options(
                joinedload(Skill.technology),
                joinedload(Skill.level),
                joinedload(Skill.category),
            )
            .join(Skill.technology)
            .join(Skill.level)
            .join(Skill.category)
            .filter(
                self._get_common_filters(Technology),
                self._get_common_filters(Level),
                self._get_common_filters(SkillCategory),
                SkillCategory.code == category_code,
            )
        )
        query = self._add_common_filters(query)
        return query.order_by(Skill.category_id, Skill.order).all()

    def get_levels(self) -> list[Level]:
        """スキルレベル情報を取得"""
        query = self.session.query(Level)
        query = self._add_common_filters(query)
        return query.order_by(desc(Level.order)).all()
