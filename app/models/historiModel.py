from datetime import datetime
from app import db


class Histori(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    ruangan = db.Column(db.String(100))
    mata_kuliah = db.Column(db.String(100))
    kelas = db.Column(db.String(100))
    tanggal = db.Column(db.DateTime, nullable=False, default=datetime.utcnow)
    hasilSenang = db.Column(db.String(100))
    hasilBiasa = db.Column(db.String(100))
    id_dosen = db.Column(db.String(50))

    def __init__(self, kelas,hasilSenang, hasilBiasa, id_user,mata_kuliah,ruangan):
        self.kelas = kelas
        self.hasilSenang = hasilSenang
        self.hasilBiasa = hasilBiasa
        self.id_user = id_user
        self.mata_kuliah = mata_kuliah
        self.ruangan = ruangan