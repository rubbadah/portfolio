"""add column SkillCategory(background_color)

Revision ID: bd6bcd76b6d4
Revises: 9aab506e7e31
Create Date: 2024-11-10 13:24:53.141930

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision: str = 'bd6bcd76b6d4'
down_revision: Union[str, None] = '9aab506e7e31'
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('skill_categories', sa.Column('background_color', sa.String(length=50), nullable=False, comment='背景色'))
    # ### end Alembic commands ###


def downgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('skill_categories', 'background_color')
    # ### end Alembic commands ###
