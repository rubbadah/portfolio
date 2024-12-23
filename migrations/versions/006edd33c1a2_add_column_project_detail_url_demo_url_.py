"""add column project(detail_url, demo_url, github_url), add table Contact

Revision ID: 006edd33c1a2
Revises: b70cb28c1c8c
Create Date: 2024-11-09 21:53:21.926950

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision: str = '006edd33c1a2'
down_revision: Union[str, None] = 'b70cb28c1c8c'
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('projects', sa.Column('detail_url', sa.String(length=200), nullable=True, comment='詳細ページURL'))
    op.add_column('projects', sa.Column('demo_url', sa.String(length=200), nullable=True, comment='デモURL'))
    op.add_column('projects', sa.Column('github_url', sa.String(length=200), nullable=True, comment='GitHubリポジトリURL'))
    op.drop_column('projects', 'url')
    # ### end Alembic commands ###


def downgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('projects', sa.Column('url', sa.VARCHAR(length=200), autoincrement=False, nullable=True, comment='URL'))
    op.drop_column('projects', 'github_url')
    op.drop_column('projects', 'demo_url')
    op.drop_column('projects', 'detail_url')
    # ### end Alembic commands ###
