from sqlalchemy import Column, Integer, String, Text

from database import Base

from .mixins import FixedColumns


class Profile(Base, FixedColumns):
    """プロフィール情報を管理するモデル"""

    __tablename__ = "profiles"

    id = Column(Integer, primary_key=True, autoincrement=True, comment="ID")
    name = Column(String(100), nullable=False, comment="名前")
    image_path = Column(String(200), comment="プロフィール画像パス")
    description = Column(Text, comment="自己紹介")
