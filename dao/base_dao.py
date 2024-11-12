from datetime import datetime

from sqlalchemy import and_
from sqlalchemy.orm import Session


class BaseDao:
    def __init__(self, session: Session):
        self.session = session

    def _get_common_filters(self, model):
        """共通のフィルター条件を取得"""
        current_time = datetime.now()
        return and_(
            ~model.is_deleted,
            model.apply_start_datetime <= current_time,
            model.apply_end_datetime > current_time,
        )

    def _add_common_filters(self, query):
        """共通のフィルター条件を追加"""
        return query.filter(self._get_common_filters(self.model))

    def logical_delete(self, model, id) -> None:
        """論理削除

        Args:
            model (Any): 対象とするテーブル
            id (int): 論理削除対象のID
        """

        data = self.session.query(model).filter(model.id == id).first()
        data.is_deleted = True

    def physical_delete(self, model, id) -> None:
        """物理削除

        Args:
            model (Any): 対象とするテーブル
            id (int): 論理削除対象のID
        """

        self.session.query(model).filter(model.id == id).delete()
