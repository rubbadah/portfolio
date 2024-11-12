from sqlalchemy import Boolean, Column, Integer, String, Text
from sqlalchemy.orm import relationship

from database import Base

from .mixins import FixedColumns


class Project(Base, FixedColumns):
    """個人プロジェクトを管理するモデル"""

    __tablename__ = "projects"

    id = Column(Integer, primary_key=True, autoincrement=True, comment="ID")
    title = Column(String(200), nullable=False, comment="タイトル")
    description = Column(Text, comment="説明")
    image_path = Column(String(200), comment="画像パス")
    detail_url = Column(String(200), comment="詳細ページURL")
    demo_url = Column(String(200), comment="デモURL")
    github_url = Column(String(200), comment="GitHubリポジトリURL")
    start_period = Column(
        String(10), nullable=False, comment="開始日 (YYYY/MM/DD)"
    )
    end_period = Column(
        String(10), nullable=False, comment="終了日 (YYYY/MM/DD)"
    )
    order = Column(Integer, nullable=False, default=0, comment="表示順")
    is_pickup = Column(
        Boolean, default=False, nullable=False, comment="ピックアップフラグ"
    )

    technologies = relationship(
        "Technology", secondary="project_technologies", backref="projects"
    )
