from sqlalchemy import Column, Integer, String

from database import Base

from .mixins import FixedColumns


class TechnologyCategory(Base, FixedColumns):
    """技術カテゴリを管理するモデル"""

    __tablename__ = "technology_categories"

    id = Column(Integer, primary_key=True, autoincrement=True, comment="ID")
    name = Column(String(50), nullable=False, comment="カテゴリ名")
    description = Column(String(200), comment="説明")
    order = Column(Integer, nullable=False, comment="表示順")
