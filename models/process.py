from sqlalchemy import Column, Integer, String

from database import Base

from .mixins import FixedColumns


class Process(Base, FixedColumns):
    """参加工程を管理するモデル"""

    __tablename__ = "processes"

    id = Column(Integer, primary_key=True, autoincrement=True, comment="ID")
    name = Column(String(50), nullable=False, comment="工程名")
    description = Column(String(200), comment="説明")
    order = Column(Integer, nullable=False, comment="表示順")
