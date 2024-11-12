from sqlalchemy import Column, DateTime, Integer, String, Text

from database import Base

from .mixins import FixedColumns


class Contact(Base, FixedColumns):
    """連絡先情報を管理するモデル"""

    __tablename__ = "contacts"

    id = Column(Integer, primary_key=True, autoincrement=True, comment="ID")
    type = Column(
        String(50), nullable=False, comment="連絡先タイプ（email, githubなど）"
    )
    value = Column(
        Text, nullable=False, comment="連絡先の値（メールアドレスやURL）"
    )
