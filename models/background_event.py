from sqlalchemy import Boolean, Column, ForeignKey, Integer, String, Text
from sqlalchemy.orm import relationship

from database import Base

from .mixins import FixedColumns


class BackgroundEvent(Base, FixedColumns):
    """各時代における具体的な出来事を管理するモデル"""

    __tablename__ = "background_events"

    id = Column(Integer, primary_key=True, autoincrement=True, comment="ID")
    era_id = Column(
        Integer,
        ForeignKey("background_eras.id"),
        nullable=False,
        comment="時代区分ID",
    )
    start_period = Column(Integer, comment="開始期間")
    end_period = Column(Integer, comment="終了期間")
    is_single = Column(
        Boolean,
        default=False,
        comment="単一期間フラグ（期間の範囲表示に~を使用するか）",
    )
    description = Column(Text, nullable=False, comment="説明")

    era = relationship("BackgroundEra", back_populates="events")
