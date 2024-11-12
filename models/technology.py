from sqlalchemy import Column, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from database import Base

from .mixins import FixedColumns


class Technology(Base, FixedColumns):
    """使用技術を管理するモデル"""

    __tablename__ = "technologies"

    id = Column(Integer, primary_key=True, autoincrement=True, comment="ID")
    name = Column(String(50), nullable=False, comment="技術名")
    category_id = Column(
        Integer,
        ForeignKey("technology_categories.id"),
        nullable=False,
        comment="カテゴリID",
    )
    description = Column(String(200), comment="説明")

    category = relationship("TechnologyCategory")
