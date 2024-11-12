import json
import os

os.chdir(os.path.dirname(os.path.abspath(__file__)))

CONFIG_FILE_PATH = "./config/config.json"


class Config:
    def __init__(self):
        with open(CONFIG_FILE_PATH, "r", encoding="utf-8") as file:
            self.config_data = json.load(
                file,
            )

    @property
    def database_url(self):
        """
        Returns:
            str: database_url
        """
        return self.config_data.get("database_url", "")
