from datetime import datetime

from sqlalchemy import or_
from sqlalchemy.orm import Session

from dao import (
    BackgroundDao,
    ContactDao,
    ProfileDao,
    ProjectDao,
    SkillDao,
    WorkDao,
)
from models.contact import Contact
from services.base_service import BaseService


class PortfolioService(BaseService):
    def __init__(self, session: Session):
        super().__init__(session)
        self.profile_dao = ProfileDao(session)
        self.background_dao = BackgroundDao(session)
        self.skill_dao = SkillDao(session)
        self.work_dao = WorkDao(session)
        self.project_dao = ProjectDao(session)
        self.contact_dao = ContactDao(session)

    def _format_skill_chart_data(self, skills: list) -> dict:
        """スキルチャートのデータを整形"""
        if not skills:
            return {}

        return {
            "labels": [skill.technology.name for skill in skills],
            "values": [int(skill.level.level) for skill in skills],
            "category_name": skills[0].category.name if skills else "",
            "backgroundColor": (
                skills[0].category.background_color
                if skills
                else "rgba(200, 200, 200, 0.7)"
            ),
        }

    def get_portfolio_items(self) -> dict:
        """ポートフォリオの表示に必要なデータを取得"""
        front_skills = self.skill_dao.get_skills("front")
        back_skills = self.skill_dao.get_skills("back")
        db_skills = self.skill_dao.get_skills("db")

        return {
            "profile": self.profile_dao.get_profile(),
            "backgrounds": self.background_dao.get_backgrounds(),
            "levels": self.skill_dao.get_levels(),
            "skill_charts": {
                "front": self._format_skill_chart_data(front_skills),
                "back": self._format_skill_chart_data(back_skills),
                "db": self._format_skill_chart_data(db_skills),
            },
            "works": self.work_dao.get_works(),
            "projects": self.project_dao.get_projects(),
            "contacts": self.contact_dao.get_active_contacts(),
        }
