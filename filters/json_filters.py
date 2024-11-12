import json


def embed_as_json_filter(data, name: str) -> str:
    """データをHTMLに埋め込んでJavaScriptから利用できるようにするJinja2フィルタ"""
    json_str = json.dumps(data).replace("<", r"\u003C").replace(">", r"\u003E")
    return f'<script type="application/json" id="{name}">{json_str}</script>'
