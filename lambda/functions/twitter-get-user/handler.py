import json
import tweepy
import os

def main(event, context):
  
  body = {
      "message": "Go Serverless v1.0! Your function executed successfully!"
  }

  response = {
      "statusCode": 200,
      "body": json.dumps(body)
  }

  return response

def getUser():
  # assign the values accordingly
  consumer_key        = os.environ['TWITTER_CONSUMER_KEY']
  consumer_secret     = os.environ['TWITTER_CONSUMER_SECRET']
  access_token        = os.environ['TWITTER_ACCESS_TOKEN']
  access_token_secret = os.environ['TWITTER_ACCESS_TOKEN_SECRET']

  # authorization of consumer key and consumer secret
  auth = tweepy.OAuthHandler(consumer_key, consumer_secret)

  # set access to user's access key and access secret
  auth.set_access_token(access_token, access_token_secret)

  # calling the api
  api = tweepy.API(auth)

  # fetching the statuses
  statuses = api.home_timeline()

  # printing the screen names of each status
  for status in statuses:
   print(status.user.screen_name)
