from sqlalchemy import Column, Integer, String, Text
from sqlalchemy.orm import relationship

from database import Base

from .mixins import FixedColumns


class BackgroundEra(Base, FixedColumns):
    """時代区分を管理するモデル（例：小学生時代、中学生時代など）"""

    __tablename__ = "background_eras"

    id = Column(Integer, primary_key=True, autoincrement=True, comment="ID")
    title = Column(String(100), nullable=False, comment="時代区分名")
    start_period = Column(Integer, comment="開始期間")
    end_period = Column(Integer, comment="終了期間")
    description = Column(Text, comment="説明")
    order = Column(Integer, nullable=False, comment="表示順")

    events = relationship(
        "BackgroundEvent",
        back_populates="era",
        order_by="BackgroundEvent.start_period",
        cascade="all, delete-orphan",
    )
