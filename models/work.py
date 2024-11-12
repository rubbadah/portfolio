from sqlalchemy import Boolean, Column, Integer, String, Text
from sqlalchemy.orm import relationship

from database import Base

from .mixins import FixedColumns


class Work(Base, FixedColumns):
    """業務経歴を管理するモデル"""

    __tablename__ = "works"

    id = Column(Integer, primary_key=True, autoincrement=True, comment="ID")
    title = Column(String(200), nullable=False, comment="タイトル")
    start_period = Column(
        String(7), nullable=False, comment="開始日 (YYYY/MM)"
    )
    end_period = Column(String(7), nullable=False, comment="終了日 (YYYY/MM)")
    description = Column(Text, comment="説明")
    is_pickup = Column(
        Boolean, default=False, nullable=False, comment="ピックアップフラグ"
    )

    # リレーションの追加
    processes = relationship(
        "Process",
        secondary="work_processes",
        backref="works",
        order_by="Process.order",
    )
    technologies = relationship(
        "Technology", secondary="work_technologies", backref="works"
    )
