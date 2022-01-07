
from flask import Flask  
from config import Config
from flask_sqlalchemy import SQLAlchemy
from flask_assets import Environment
from flask_jwt_extended import JWTManager
from flask_cors import CORS

app = Flask(__name__)

app = Flask(__name__)
cors = CORS(app, resources={r"*": {"origins": "*"}})

app.config.from_object(Config)
db = SQLAlchemy(app)
assets = Environment(app)

jwt = JWTManager(app)

from app.models import historiModel, userModel, dosenModel
from app import routes

