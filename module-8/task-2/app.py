from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return """
    <html>
        <head><title>Basic Details</title></head>
        <body>
            <h1>Basic Details</h1>
            <p>Name: Shuvadeep</p>
            <p>Role: Assistant</p>
            <p>Language: Python & Docker</p>
            <p>Technologies: Flask, Docker</p>
        </body>
    </html>
    """

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
