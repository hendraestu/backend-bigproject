from flask.templating import render_template
from app import app
from flask import request
from app.controllers import predikController, authController, dosenController

@app.route('/dosen', methods=['GET', 'POST'])
def dosen():
    if request.method == 'GET':
        return dosenController.getAlldosen()
    else:
        return dosenController.createDosen()

@app.route('/dosen/<id>', methods=['GET', 'PUT', 'DELETE'])
def dosenDetail(id):
    if request.method == 'GET':
        return dosenController.getDosenById(id)
    elif request.method == 'PUT':
        return dosenController.updateDosen(id)
    elif request.method == 'DELETE':
        return dosenController.deleteDosen(id)

@app.route('/signup', methods=['POST'])
def signUp():
    if request.method == 'GET':
        print("melihat semua user")
    elif request.method == 'POST':
        return authController.signUp()


@app.route('/signin', methods=['POST'])
def signIn():
    return authController.signIn()

@app.route('/user/<id>', methods=['GET', 'PUT'])
def userDetails(id):
    if(request.method == 'GET'):
        return authController.getUser(id)
    if(request.method == 'PUT'):
        return authController.updateUser(id)

@app.route('/predict', methods=['GET', 'POST'])
def predict():
    if request.method == 'GET':
        return predikController.getAllresult()
    else:
        return predikController.result()

