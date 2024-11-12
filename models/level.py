from sqlalchemy import Column, Integer, String

from database import Base

from .mixins import FixedColumns


class Level(Base, FixedColumns):
    """スキルレベルを管理するモデル"""

    __tablename__ = "levels"

    id = Column(Integer, primary_key=True, autoincrement=True, comment="ID")
    level = Column(String(100), nullable=False, comment="レベル表記")
    description = Column(String(100), nullable=False, comment="レベル感の説明")
    order = Column(Integer, nullable=False, comment="表示順")
