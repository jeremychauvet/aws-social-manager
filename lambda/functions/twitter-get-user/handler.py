import json
import tweepy
import os


def main(event, context):

  users = getUser()

  body = {
      "message": "Go Serverless v1.0! Your function executed successfully!",
      "input": event,
      "getUser": users
  }

  response = {
      "statusCode": 200,
      "body": json.dumps(body)
  }

  return response


def getUser():
  # assign the values accordingly
  consumer_key = os.environ['TWITTER_CONSUMER_KEY']
  consumer_secret = os.environ['TWITTER_CONSUMER_SECRET_KEY']
  #access_token = ""
  #access_token_secret = ""

  # authorization of consumer key and consumer secret
  auth = tweepy.OAuthHandler(consumer_key, consumer_secret)

  # set access to user's access key and access secret
  #auth.set_access_token(access_token, access_token_secret)

  # calling the api
  api = tweepy.API(auth)

  # fetching the statuses
  statuses = api.home_timeline()

  return statuses

  # printing the screen names of each status
  #for status in statuses:
  #  print(status.user.screen_name)
