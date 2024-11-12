# import logging

from flask import Flask, render_template

from database import session_scope
from filters.json_filters import embed_as_json_filter
from services import PortfolioService

# logging.basicConfig()
# logging.getLogger("sqlalchemy.engine").setLevel(logging.INFO)

app = Flask(__name__)
app.jinja_env.filters["embed_as_json"] = embed_as_json_filter


@app.route("/")
def index():
    with session_scope() as session:
        service = PortfolioService(session)
        items = service.get_portfolio_items()
        return render_template("portfolio_top.html", items=items)


if __name__ == "__main__":
    app.run()
