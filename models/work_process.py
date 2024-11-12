from sqlalchemy import Column, ForeignKey, Integer

from database import Base

from .mixins import FixedColumns


class WorkProcess(Base, FixedColumns):
    """業務と参加工程の関連を管理するモデル"""

    __tablename__ = "work_processes"

    id = Column(Integer, primary_key=True, autoincrement=True, comment="ID")
    work_id = Column(
        Integer, ForeignKey("works.id"), nullable=False, comment="業務ID"
    )
    process_id = Column(
        Integer, ForeignKey("processes.id"), nullable=False, comment="工程ID"
    )
