from flask import Flask, render_template
import random

app = Flask(__name__)

words = [
        "big",
        "far",
        "incognito",
        "fuzzyfelt",
        ]

@app.route("/")
def index():
    word = random.choice(words)
    return render_template('index.html', word=word)

if __name__ == "app":
    app.run(host="0.0.0.0")
