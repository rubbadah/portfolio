from sqlalchemy import Column, ForeignKey, Integer

from database import Base

from .mixins import FixedColumns


class WorkTechnology(Base, FixedColumns):
    """業務と使用技術の関連を管理するモデル"""

    __tablename__ = "work_technologies"

    id = Column(Integer, primary_key=True, autoincrement=True, comment="ID")
    work_id = Column(
        Integer, ForeignKey("works.id"), nullable=False, comment="業務ID"
    )
    technology_id = Column(
        Integer,
        ForeignKey("technologies.id"),
        nullable=False,
        comment="技術ID",
    )
