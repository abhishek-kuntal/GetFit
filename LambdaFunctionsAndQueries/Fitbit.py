import requests
from requests_oauthlib import OAuth2Session
from oauthlib.oauth2 import MobileApplicationClient
import datetime
import boto3

access_token = ""
today = ""
weekBefore = ""
my_dict = {1: "all", 2: "sleep", 3: "heartrate", 4: "activeMinutes", 5: "sleepGoal"}

def getToken(userid):
	#pull user token from the database;
	return token

def getUserId(username):
	
	# pull data from the database; 
	return userId 

def getAllData():
	return x

def getSleepData():
	x = "https://api.fitbit.com/1.2/user/-/sleep/date/" + weekBefore + "/" + today + ".json"
	return x

def getHRData():
	x = "https://api.fitbit.com/1/user/-/activities/heart/date/today/7d.json"
	return x

def getActiveData():
	URL = 'https://api.fitbit.com/1/user/-/activities/list.json?afterDate=' + weekBefore + '&sort=desc&limit=20&offset=0'
	return URL

def getSleepGoal():
	return "https://api.fitbit.com/1/user/-/sleep/goal.json"

def getData(dataType,access_token):
	data = ""
	if(dataType == "all"):
		data = getAllData()
	elif(dataType == "sleep"):
		data = getSleepData()
	elif(dataType == "heartrate"):
		data = getHRData()
	elif(dataType == "activeMinutes"):
		data = getActiveData()
	elif(dataType == "sleepGoal"):
		data = getSleepGoal()
	else:
		data = getAllData()
	return data

def pushData(content, type):
	#Push it to the elastic search. 


def main():
	print("Hello")
	global today, weekBefore
	date_N_days_ago = datetime.datetime.now() - datetime.timedelta(days=7)
	now = datetime.datetime.now();
	today = now.strftime("%Y-%m-%d")
	weekBefore = date_N_days_ago.strftime("%Y-%m-%d")
	fitBitID = getUserId("hello")
	access_token = getToken(fitBitID)
	dataType = my_dict.get(4)
	typeOfHttpRequest = getData(dataType,"access_token")
	headers = {"Authorization" : "Bearer " + access_token}
	print(headers)
	#userId you already have right ? 
	#ET https://api.fitbit.com/1.2/user/-/sleep/date/2017-04-02/2017-04-08.json
	#typeOfHttpRequest = "https://api.fitbit.com/1.2/user/-/sleep/date/2017-12-07/2017-12-14.json"
	r = requests.get(typeOfHttpRequest, headers=headers)

	#add code to add json data complete it. 
	print(r)
	print("Hello World")
	print(r.content)
	pushData(r.content, dataType)

