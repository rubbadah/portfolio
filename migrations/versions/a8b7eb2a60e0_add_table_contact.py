"""add table Contact

Revision ID: a8b7eb2a60e0
Revises: 006edd33c1a2
Create Date: 2024-11-09 21:57:58.245701

"""

from typing import Sequence, Union

import sqlalchemy as sa
from alembic import op

import models

# revision identifiers, used by Alembic.
revision: str = "a8b7eb2a60e0"
down_revision: Union[str, None] = "006edd33c1a2"
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table(
        "contacts",
        sa.Column(
            "id",
            sa.Integer(),
            autoincrement=True,
            nullable=False,
            comment="ID",
        ),
        sa.Column(
            "type",
            sa.String(length=50),
            nullable=False,
            comment="連絡先タイプ（email, githubなど）",
        ),
        sa.Column(
            "value",
            sa.Text(),
            nullable=False,
            comment="連絡先の値（メールアドレスやURL）",
        ),
        sa.Column(
            "apply_start_datetime",
            models.mixins.UTCToJSTType(),
            nullable=True,
            comment="適用開始日時",
        ),
        sa.Column(
            "apply_end_datetime",
            models.mixins.UTCToJSTType(),
            nullable=True,
            comment="適用終了日時",
        ),
        sa.Column(
            "is_deleted", sa.Boolean(), nullable=False, comment="削除済"
        ),
        sa.Column(
            "created_at",
            models.mixins.UTCToJSTType(),
            nullable=False,
            comment="作成日時",
        ),
        sa.Column(
            "updated_at",
            models.mixins.UTCToJSTType(),
            nullable=False,
            comment="更新日時",
        ),
        sa.PrimaryKeyConstraint("id"),
    )
    # ### end Alembic commands ###


def downgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table("contacts")
    # ### end Alembic commands ###
