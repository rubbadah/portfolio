from sqlalchemy import Column, Integer, String

from database import Base

from .mixins import FixedColumns


class SkillCategory(Base, FixedColumns):
    """スキルカテゴリを管理するモデル"""

    __tablename__ = "skill_categories"

    id = Column(Integer, primary_key=True, autoincrement=True, comment="ID")
    code = Column(
        String(20), nullable=False, unique=True, comment="カテゴリコード"
    )
    name = Column(String(50), nullable=False, comment="カテゴリ名")
    description = Column(String(200), comment="説明")
    order = Column(Integer, nullable=False, comment="表示順")
    background_color = Column(
        String(50),
        nullable=False,
        default="rgba(200, 200, 200, 0.7)",
        comment="背景色",
    )
