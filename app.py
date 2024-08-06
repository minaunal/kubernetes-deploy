from flask import Flask, jsonify
import requests

app = Flask(__name__)

@app.route('/')
def home():
    return 'Welcome to the Web App!'

@app.route('/api')
def api():
    response = requests.get('https://jsonplaceholder.typicode.com/posts/1')
    data = response.json()
    return jsonify(data)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
