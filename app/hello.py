#!/usr/bin/env python

import os
import datetime


from flask import Flask, jsonify, render_template
import math

app = Flask(__name__)
buggy_code = False


@app.route("/", methods=["GET"])
def hello():
    return "Hello from " + os.getenv('MY_POD_NAME', "Kubernetes!"), 200


@app.route("/health", methods=["GET", "HEAD"])
def health():
    global buggy_code
    print(buggy_code);
    if not buggy_code:
        return "", 200;
    else:
        return "", 500

@app.route("/create_bug", methods=["GET"])
def create_bug():
    global buggy_code
    buggy_code = True
    return "Bug was introduced!", 200

@app.route('/ui', methods=["GET"])
def root():
    return render_template('index.html')

@app.route("/load", methods=["GET"])
def load():
    i = 0
    while i < 100000:
        num = math.sqrt(
            34567876543234563456787654323456345678765432345634567876543234563456787654323456345678765432345634567876543234563456787654323456 * i)
        i += 1
    return "Load generated by from Kubernetes!", 200



def main():
    port = int(os.environ.get("PORT", 5000))
    app.run(debug=False, host="0.0.0.0",port=port)


if __name__ == "__main__":
    main()
