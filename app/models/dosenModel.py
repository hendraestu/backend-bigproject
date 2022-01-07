from app import db
from werkzeug.security import generate_password_hash, check_password_hash

class Dosen(db.Model):
    id_dosen = db.Column(db.Integer, primary_key=True)
    nama_dosen = db.Column(db.String(100))
    mata_kuliah = db.Column(db.String(200))
    username = db.Column(db.String(100), unique=True)
    password = db.Column(db.Text(100))

    def __init__(self, nama_dosen, mata_kuliah, username):
        self.nama_dosen = nama_dosen
        self.mata_kuliah = mata_kuliah
        self.username = username

    def setPassword(self, password):
        self.password = generate_password_hash(password)

    def checkPassword(self, password):
        return check_password_hash(self.password, password)