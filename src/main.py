from flask import Flask, render_template
from dotenv import load_dotenv
import os

load_dotenv()

# Get environment variables (default values can be used if they aren't set)
TOOL_NAME = os.getenv("TOOL_NAME", "My Tool")
DEADLINE = os.getenv("DEADLINE", "June 30, 2025")
LOGO_NAME = os.getenv("LOGO_NAME", "logo.svg")
EXTERN_DOMAIN = os.getenv("EXTERN_DOMAIN", "false").lower() in ("true", "1", "yes")
PORT = int(os.getenv("PORT", 8080))  # Default to port 8080 if not specified

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("coming-soon.html", TOOL_NAME=TOOL_NAME, DEADLINE=DEADLINE, LOGO_NAME=LOGO_NAME, EXTERN_DOMAIN=EXTERN_DOMAIN)

@app.errorhandler(404)
def page_not_found(e):
    return render_template('404.html'), 404

if __name__ == "__main__":
    # Run the app with the dynamic port from the environment variable
    app.run(host="0.0.0.0", port=PORT)
