from flask import Flask, jsonify
from pymongo import MongoClient
import os

app = Flask(__name__)

# Connect to MongoDB
mongo_uri = os.getenv("MONGO_URI", "mongodb://localhost:27017/mydatabase")
client = MongoClient(mongo_uri)
db = client.mydatabase

@app.route("/")
def home():
    return jsonify({"message": "Hello, Docker + Flask + MongoDB!"})

@app.route("/add")
def add_data():
    db.test.insert_one({"name": "Docker User"})
    return jsonify({"message": "Data added!"})

@app.route("/data")
def get_data():
    data = list(db.test.find({}, {"_id": 0}))
    return jsonify(data)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)