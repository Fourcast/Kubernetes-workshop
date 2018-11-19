#!/usr/bin/env python

import os
import datetime

from flask import Flask, jsonify

app = Flask(__name__)
buggy_code = False


@app.route("/", methods=["GET"])
def hello():
    return "Hello from Kubernetes!", 200


@app.route("/create_bug", methods=["GET"])
def create_bug():
    global buggy_code
    buggy_code = True
    return "Bug was introduced!", 200


@app.route("/health", methods=["GET", "HEAD"])
def health():
    global buggy_code
    print(buggy_code);
    if not buggy_code:
        return "", 200;
    else:
        return "", 500


def main():
    app.run(debug=False, host="0.0.0.0")


if __name__ == "__main__":
    main()
