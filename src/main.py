from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("coming-soon.html")


@app.errorhandler(404)
def page_not_found(e):
    # note that we set the 404 status explicitly
    return render_template('404.html'), 404


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
