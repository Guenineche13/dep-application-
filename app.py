from flask import Flask

app = Flask(__name__)

@app.route('/')
def accueil():
    return "Mon app Flask gratuite sur EC2 ! 🎉"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)
