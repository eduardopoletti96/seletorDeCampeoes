from flask import Blueprint, render_template, request, flash, jsonify
from flask_login import login_required, current_user
import json
import tensorflow as tf
import pandas as pd
import numpy as np
import csv

views = Blueprint('views', __name__)

@views.route('/', methods=['GET', 'POST'])
@login_required
def home():
    return render_template("home.html", user=current_user)

@views.route('/predict-champions', methods=['POST'])   
def predict_champions():
    listAllChampions = ['Aatrox', 'Ahri', 'Akali', 'Alistar', 'Amumu', 'Anivia', 'Annie', 'Aphelios',
                        'Ashe', 'AurelionSol', 'Azir', 'Bard', 'Blitzcrank', 'Brand', 'Braum', 'Caitlyn',
                        'Camille', 'Cassiopeia', 'Chogath', 'Corki', 'Darius', 'Diana', 'Draven',
                        'DrMundo', 'Ekko', 'Elise', 'Evelynn', 'Ezreal', 'Fiddlesticks', 'Fiora', 'Fizz',
                        'Galio', 'Gangplank', 'Garen', 'Gnar', 'Gragas', 'Graves', 'Gwen', 'Hecarim',
                        'Heimerdinger', 'Illaoi', 'Irelia', 'Ivern', 'Janna', 'JarvanIV', 'Jax', 'Jayce',
                        'Jhin', 'Jinx', 'Kaisa', 'Kalista', 'Karma', 'Karthus', 'Kassadin', 'Katarina',
                        'Kayle', 'Kayn', 'Kennen', 'Khazix', 'Kindred', 'Kled', 'KogMaw', 'Leblanc',
                        'LeeSin', 'Leona', 'Lillia', 'Lissandra', 'Lucian', 'Lulu', 'Lux', 'Malphite',
                        'Malzahar', 'Maokai', 'MasterYi', 'MissFortune', 'Mordekaiser',
                        'Morgana', 'Nami', 'Nasus', 'Nautilus', 'Neeko', 'Nidalee', 'Nocturne', 'Nunu',
                        'Olaf', 'Orianna', 'Ornn', 'Pantheon', 'Poppy', 'Pyke', 'Qiyana', 'Quinn',
                        'Rakan', 'Rammus', 'RekSai', 'Rell', 'Renekton', 'Rengar', 'Riven', 'Rumble',
                        'Ryze', 'Samira', 'Sejuani', 'Senna', 'Seraphine', 'Sett', 'Shaco', 'Shen',
                        'Shyvana', 'Singed', 'Sion', 'Sivir', 'Skarner', 'Sona', 'Soraka', 'Swain',
                        'Sylas', 'Syndra', 'TahmKench', 'Taliyah', 'Talon', 'Taric', 'Teemo', 'Thresh',
                        'Tristana', 'Trundle', 'Tryndamere', 'TwistedFate', 'Twitch', 'Udyr', 'Urgot',
                        'Varus', 'Vayne', 'Veigar', 'Velkoz', 'Vi', 'Viego', 'Viktor', 'Vladimir',
                        'Volibear', 'Warwick', 'WuKong', 'Xayah', 'Xerath', 'XinZhao', 'Yasuo', 'Yone', 'Yorick',
                        'Yuumi', 'Zac', 'Zed', 'Ziggs', 'Zilean', 'Zoe', 'Zyra']

    listTopoChampions = ['0', '2', '16', '18', '20', '29', '32', '33', '34', '35', '37', '39', '40', '41', '45', '46',
                         '55', '57', '60', '63', '70', '75', '78', '86', '88', '91', '96', '98', '99', '105', '107',
                         '109', '110', '116', '118', '122', '126', '130', '132', '139', '141', '145', '146', '147']

    listSelvaChampions = ['4', '21', '23', '24', '25', '26', '28', '35', '36', '38', '42', '44', '52', '56', '58', '59',
                          '63', '65', '73', '76', '81', '82', '83', '84', '88', '93', '94', '97', '99', '102', '106',
                          '108', '112', '119', '125', '129', '135', '136', '139', '140', '144', '149']

    listMeioChampions = ['1', '2', '5', '6', '9', '10', '17', '19', '21', '24', '30', '31', '39', '41', '53', '54',
                         '62', '66', '67', '69', '71', '80', '85', '87', '90', '100', '116', '117', '120', '127', '133',
                         '136', '137', '138', '143', '145', '146', '150', '151', '153']

    listAtiradorChampions = ['7', '8', '15', '22', '27', '47', '48', '49', '50', '61', '67', '74', '101', '103', '111',
                             '124', '128', '131', '132', '142', '145']

    listSuporteChampions = ['3', '11', '12', '13', '14', '31', '43', '51', '64', '68', '69', '72', '76', '77', '79',
                            '87', '89', '92', '95', '103', '104', '105', '106', '113', '114', '115', '121', '123',
                            '134', '143', '148', '152', '154']      

    line = [1.0]

    data = json.loads(request.data)

    try:
        bannedChampion1 = listAllChampions.index(data['bannedChampion1'])
    except:
        bannedChampion1 = 200    
    try:
        bannedChampion2 = listAllChampions.index(data['bannedChampion2'])
    except:
        bannedChampion2 = 200 
    try:
        bannedChampion3 = listAllChampions.index(data['bannedChampion3'])
    except:
        bannedChampion3 = 200 
    try:
        bannedChampion4 = listAllChampions.index(data['bannedChampion4'])
    except:
        bannedChampion4 = 200 
    try:
        bannedChampion5 = listAllChampions.index(data['bannedChampion5'])
    except:
        bannedChampion5 = 200 
    try:
        bannedChampion6 = listAllChampions.index(data['bannedChampion6'])
    except:
        bannedChampion6 = 200 
    try:
        bannedChampion7 = listAllChampions.index(data['bannedChampion7'])
    except:
        bannedChampion7 = 200 
    try:
        bannedChampion8 = listAllChampions.index(data['bannedChampion8'])
    except:
        bannedChampion8 = 200 
    try:
        bannedChampion9 = listAllChampions.index(data['bannedChampion9'])
    except:
        bannedChampion9 = 200 
    try:
        bannedChampion10 = listAllChampions.index(data['bannedChampion10'])
    except:
        bannedChampion10 = 200             

    selectedLane = data['selectedLane']

    try:
        pickedChampion1 = listAllChampions.index(data['pickedChampion1'])
    except:
        pickedChampion1 = 200
    try:    
        pickedChampion2 = listAllChampions.index(data['pickedChampion2'])
    except:
        pickedChampion2 = 200
    try:    
        pickedChampion3 = listAllChampions.index(data['pickedChampion3'])
    except:
        pickedChampion3 = 200
    try:    
        pickedChampion4 = listAllChampions.index(data['pickedChampion4'])
    except:
        pickedChampion4 = 200
    try:    
        pickedChampion5 = listAllChampions.index(data['pickedChampion5'])
    except:
        pickedChampion5 = 200
    try:    
        pickedChampion6 = listAllChampions.index(data['pickedChampion6'])
    except:
        pickedChampion6 = 200
    try:    
        pickedChampion7 = listAllChampions.index(data['pickedChampion7'])
    except:
        pickedChampion7 = 200
    try:    
        pickedChampion8 = listAllChampions.index(data['pickedChampion8'])
    except:
        pickedChampion8 = 200
    try:    
        pickedChampion9 = listAllChampions.index(data['pickedChampion9'])
    except:
        pickedChampion9 = 200        
    try:    
        pickedChampion10 = listAllChampions.index(data['pickedChampion10'])
    except:
        pickedChampion10 = 200

    if(selectedLane == 'Topo'):
        classesSize = 44
        features = ['AllyTeamWin', 'AllyChampId2', 'AllyChampId3', 'AllyChampId4', 'AllyChampId5', 'EnemyChampId1',
                    'EnemyChampId2', 'EnemyChampId3', 'EnemyChampId4', 'EnemyChampId5']
        modelPath = "website/static/modeloCompletoTopo/1623116845"
        line.append(float(pickedChampion2))
        line.append(float(pickedChampion3))
        line.append(float(pickedChampion4))
        line.append(float(pickedChampion5))
    
    if(selectedLane == 'Selva'):
        classesSize = 42
        features = ['AllyTeamWin', 'AllyChampId1', 'AllyChampId3', 'AllyChampId4', 'AllyChampId5', 'EnemyChampId1',
                    'EnemyChampId2', 'EnemyChampId3', 'EnemyChampId4', 'EnemyChampId5']
        modelPath = "website/static/modeloCompletoSelva/1623174406"
        line.append(float(pickedChampion1))
        line.append(float(pickedChampion3))
        line.append(float(pickedChampion4))
        line.append(float(pickedChampion5))

    if(selectedLane == 'Meio'):
        classesSize = 40
        features = ['AllyTeamWin', 'AllyChampId1', 'AllyChampId2', 'AllyChampId4', 'AllyChampId5', 'EnemyChampId1',
                    'EnemyChampId2', 'EnemyChampId3', 'EnemyChampId4', 'EnemyChampId5']
        modelPath = "website/static/modeloCompletoMeio/1623174948"
        line.append(float(pickedChampion1))
        line.append(float(pickedChampion2))
        line.append(float(pickedChampion4))
        line.append(float(pickedChampion5))    

    if(selectedLane == 'Atirador'):
        classesSize = 21
        features = ['AllyTeamWin', 'AllyChampId1', 'AllyChampId2', 'AllyChampId3', 'AllyChampId5', 'EnemyChampId1',
                    'EnemyChampId2', 'EnemyChampId3', 'EnemyChampId4', 'EnemyChampId5']
        modelPath = "website/static/modeloCompletoAtirador/1623175264"
        line.append(float(pickedChampion1))
        line.append(float(pickedChampion2))
        line.append(float(pickedChampion3))
        line.append(float(pickedChampion5))    

    if(selectedLane == 'Suporte'):
        classesSize = 33
        features = ['AllyTeamWin', 'AllyChampId1', 'AllyChampId2', 'AllyChampId3', 'AllyChampId4', 'EnemyChampId1',
                    'EnemyChampId2', 'EnemyChampId3', 'EnemyChampId4', 'EnemyChampId5']
        modelPath = "website/static/modeloCompletoSuporte/1623175556"
        line.append(float(pickedChampion1))
        line.append(float(pickedChampion2))
        line.append(float(pickedChampion3))
        line.append(float(pickedChampion4))

    line.append(float(pickedChampion6))
    line.append(float(pickedChampion7))
    line.append(float(pickedChampion8))
    line.append(float(pickedChampion9))
    line.append(float(pickedChampion10))     

    importedModel = tf.saved_model.load(modelPath)   

    with open('prediction.csv', 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(features)
        writer.writerow(line)

    predictionDocument = pd.read_csv("prediction.csv")

    def predict(dfeval, importedModel):
        colNames = dfeval.columns
        dtypes = dfeval.dtypes
        predictions = []
        for row in dfeval.iterrows():
            example = tf.train.Example()
            for i in range(len(colNames)):
                dtype = dtypes[i]
                colName = colNames[i]
                value = row[1][colName]
                if dtype == "object":
                    value = bytes(value, "utf-8")
                    example.features.feature[colName].bytes_list.value.extend([value])  
                elif dtype == "float":
                    example.features.feature[colName].float_list.value.extend([value])
                elif dtype == "int":
                    example.features.feature[colName].int64_list.value.extend([value])    

            predictions.append(
                importedModel.signatures["predict"](examples=tf.constant([example.SerializeToString()])))            
        return predictions

    predictions = predict(predictionDocument, importedModel)

    preds = []

    for pred in predictions[0]['probabilities']:
        preds.append(pred)

    lista = np.array(preds)
    lista = lista[0].tolist()

    firstPred = [i * 100 for i in lista]

    bannedChampions = []

    bannedChampions.append(bannedChampion1)
    bannedChampions.append(bannedChampion2)
    bannedChampions.append(bannedChampion3)
    bannedChampions.append(bannedChampion4)
    bannedChampions.append(bannedChampion5)
    bannedChampions.append(bannedChampion6)
    bannedChampions.append(bannedChampion7)
    bannedChampions.append(bannedChampion8)
    bannedChampions.append(bannedChampion9)
    bannedChampions.append(bannedChampion10)

    indexPrediction = []
    probabilityPrediction = []

    for i in range(15):
        max_value = max(firstPred)
        max_index = firstPred.index(max_value)

        if (selectedLane == 'Topo'):
            if listAllChampions[int(listTopoChampions[int(max_index)])] not in bannedChampions:
                indexPrediction.append(max_index)
                probabilityPrediction.append(max_value)
                firstPred[max_index] = 0

        if (selectedLane == 'Selva'):
            if listAllChampions[int(listSelvaChampions[int(max_index)])] not in bannedChampions:
                indexPrediction.append(max_index)
                probabilityPrediction.append(max_value)
                firstPred[max_index] = 0

        if (selectedLane == 'Meio'):
            if listAllChampions[int(listMeioChampions[int(max_index)])] not in bannedChampions:
                indexPrediction.append(max_index)
                probabilityPrediction.append(max_value)
                firstPred[max_index] = 0

        if (selectedLane == 'Atirador'):
            if listAllChampions[int(listAtiradorChampions[int(max_index)])] not in bannedChampions:
                indexPrediction.append(max_index)
                probabilityPrediction.append(max_value)
                firstPred[max_index] = 0

        if (selectedLane == 'Suporte'):
            if listAllChampions[int(listSuporteChampions[int(max_index)])] not in bannedChampions:
                indexPrediction.append(max_index)
                probabilityPrediction.append(max_value)
                firstPred[max_index] = 0

        firstPred[max_index] = 0

    if (selectedLane == 'Topo'):
        namePick1 = listAllChampions[int(listTopoChampions[indexPrediction[0]])]
        namePick2 = listAllChampions[int(listTopoChampions[indexPrediction[1]])]
        namePick3 = listAllChampions[int(listTopoChampions[indexPrediction[2]])]
        namePick4 = listAllChampions[int(listTopoChampions[indexPrediction[3]])]
        namePick5 = listAllChampions[int(listTopoChampions[indexPrediction[4]])]

    if (selectedLane == 'Selva'):
        namePick1 = listAllChampions[int(listSelvaChampions[indexPrediction[0]])]
        namePick2 = listAllChampions[int(listSelvaChampions[indexPrediction[1]])]
        namePick3 = listAllChampions[int(listSelvaChampions[indexPrediction[2]])]
        namePick4 = listAllChampions[int(listSelvaChampions[indexPrediction[3]])]
        namePick5 = listAllChampions[int(listSelvaChampions[indexPrediction[4]])]

    if (selectedLane == 'Meio'):
        namePick1 = listAllChampions[int(listMeioChampions[indexPrediction[0]])]
        namePick2 = listAllChampions[int(listMeioChampions[indexPrediction[1]])]
        namePick3 = listAllChampions[int(listMeioChampions[indexPrediction[2]])]
        namePick4 = listAllChampions[int(listMeioChampions[indexPrediction[3]])]
        namePick5 = listAllChampions[int(listMeioChampions[indexPrediction[4]])]

    if (selectedLane == 'Atirador'):
        namePick1 = listAllChampions[int(listAtiradorChampions[indexPrediction[0]])]
        namePick2 = listAllChampions[int(listAtiradorChampions[indexPrediction[1]])]
        namePick3 = listAllChampions[int(listAtiradorChampions[indexPrediction[2]])]
        namePick4 = listAllChampions[int(listAtiradorChampions[indexPrediction[3]])]
        namePick5 = listAllChampions[int(listAtiradorChampions[indexPrediction[4]])]

    if (selectedLane == 'Suporte'):
        namePick1 = listAllChampions[int(listSuporteChampions[indexPrediction[0]])]
        namePick2 = listAllChampions[int(listSuporteChampions[indexPrediction[1]])]
        namePick3 = listAllChampions[int(listSuporteChampions[indexPrediction[2]])]
        namePick4 = listAllChampions[int(listSuporteChampions[indexPrediction[3]])]
        namePick5 = listAllChampions[int(listSuporteChampions[indexPrediction[4]])]    

    suggestedPicks = [{'champion': namePick1},
                      {'champion': namePick2},
                      {'champion': namePick3},
                      {'champion': namePick4},
                      {'champion': namePick5}]

    print(suggestedPicks)

    return jsonify(suggestedPicks)    
