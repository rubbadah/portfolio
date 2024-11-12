from sqlalchemy import Column, ForeignKey, Integer
from sqlalchemy.orm import relationship

from database import Base

from .mixins import FixedColumns


class Skill(Base, FixedColumns):
    """スキルを管理するモデル"""

    __tablename__ = "skills"

    id = Column(Integer, primary_key=True, autoincrement=True, comment="ID")
    technology_id = Column(
        Integer,
        ForeignKey("technologies.id"),
        nullable=False,
        comment="技術ID",
    )
    level_id = Column(
        Integer, ForeignKey("levels.id"), nullable=False, comment="レベルID"
    )
    category_id = Column(
        Integer,
        ForeignKey("skill_categories.id"),
        nullable=False,
        comment="カテゴリID",
    )
    order = Column(Integer, nullable=False, comment="表示順")

    # リレーションの設定
    technology = relationship("Technology")
    level = relationship("Level")
    category = relationship("SkillCategory")
