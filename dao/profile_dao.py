from sqlalchemy.orm import Session

from dao.base_dao import BaseDao
from models import Profile


class ProfileDao(BaseDao):
    def __init__(self, session: Session):
        super().__init__(session)
        self.model = Profile

    def get_profile(self) -> Profile:
        """プロフィール情報を取得"""
        query = self.session.query(Profile)
        query = self._add_common_filters(query)
        return query.first()
