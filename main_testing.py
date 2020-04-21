from flask import Flask, jsonify
app = Flask(__name__)

@app.route("/")
def tester():
    return jsonify({"test": "Oh hey, it works!"})


if __name__ == '__main__':
    app.run(debug=True)