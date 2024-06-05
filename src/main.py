from flask import Flask, render_template
from dotenv import load_dotenv
import os

load_dotenv()


TOOL_NAME = os.getenv("TOOL_NAME", "My Tool")
DEADLINE = os.getenv("DEADLINE", "June 30, 2025")
LOGO_NAME = os.getenv("LOGO_NAME", "logo.svg")

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("coming-soon.html", TOOL_NAME=TOOL_NAME, DEADLINE=DEADLINE, LOGO_NAME=LOGO_NAME)

@app.errorhandler(404)
def page_not_found(e):
    # note that we set the 404 status explicitly
    return render_template('404.html'), 404


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
