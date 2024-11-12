from typing import List, Optional

from dao.base_dao import BaseDao
from models.contact import Contact


class ContactDao(BaseDao):
    def __init__(self, session):
        super().__init__(session)
        self.model = Contact

    def get_active_contacts(self) -> List[Contact]:
        """有効な連絡先情報を取得"""
        query = self.session.query(self.model)
        query = self._add_common_filters(query)
        return query.all()

    def get_contact_by_type(self, type: str) -> Optional[Contact]:
        """指定したタイプの有効な連絡先情報を取得"""
        query = self.session.query(self.model).filter(self.model.type == type)
        query = self._add_common_filters(query)
        return query.first()
