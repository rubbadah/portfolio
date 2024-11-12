from sqlalchemy import Column, ForeignKey, Integer

from database import Base

from .mixins import FixedColumns


class ProjectTechnology(Base, FixedColumns):
    """プロジェクトと使用技術の関連を管理するモデル"""

    __tablename__ = "project_technologies"

    id = Column(Integer, primary_key=True, autoincrement=True, comment="ID")
    project_id = Column(
        Integer,
        ForeignKey("projects.id"),
        nullable=False,
        comment="プロジェクトID",
    )
    technology_id = Column(
        Integer,
        ForeignKey("technologies.id"),
        nullable=False,
        comment="技術ID",
    )
