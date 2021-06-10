from . import db
from flask_login import UserMixin
from sqlalchemy.sql import func


class Prediction(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    banned_champion1 = db.Column(db.Integer)
    banned_champion2 = db.Column(db.Integer)
    banned_champion3 = db.Column(db.Integer)
    banned_champion4 = db.Column(db.Integer)
    banned_champion5 = db.Column(db.Integer)
    banned_champion6 = db.Column(db.Integer)
    banned_champion7 = db.Column(db.Integer)
    banned_champion8 = db.Column(db.Integer)
    banned_champion9 = db.Column(db.Integer)
    banned_champion10 = db.Column(db.Integer)
    selected_lane = db.Column(db.Integer)
    ally_champion1 = db.Column(db.Integer)
    ally_champion2 = db.Column(db.Integer)
    ally_champion3 = db.Column(db.Integer)
    ally_champion4 = db.Column(db.Integer)
    ally_champion5 = db.Column(db.Integer)
    enemy_champion1 = db.Column(db.Integer)
    enemy_champion2 = db.Column(db.Integer)
    enemy_champion3 = db.Column(db.Integer)
    enemy_champion4 = db.Column(db.Integer)
    enemy_champion5 = db.Column(db.Integer)
    champion_prediction1 = db.Column(db.Integer)
    champion_prediction2 = db.Column(db.Integer)
    champion_prediction3 = db.Column(db.Integer)
    champion_prediction4 = db.Column(db.Integer)
    champion_prediction5 = db.Column(db.Integer)
    date = db.Column(db.DateTime(timezone=True), default=func.now())
    user_id = db.Column(db.Integer, db.ForeignKey('user.id'))
    

class User(db.Model, UserMixin):
    id = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String(150), unique=True)
    password = db.Column(db.String(150))
    summoner_name = db.Column(db.String(150))
    predictions = db.relationship('Prediction')