import tweepy
import os
import time
import json
import boto3
from datetime import date


def main(event, context):

    return {"output": followUser(event["userId"])}


def followUser(userId):
    consumer_key = os.environ["TWITTER_CONSUMER_KEY"]
    consumer_secret = os.environ["TWITTER_CONSUMER_SECRET"]
    access_token = os.environ["TWITTER_ACCESS_TOKEN"]
    access_token_secret = os.environ["TWITTER_ACCESS_TOKEN_SECRET"]

    # Login to Twitter API.
    auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
    auth.set_access_token(access_token, access_token_secret)
    api = tweepy.API(
        auth, wait_on_rate_limit=True, wait_on_rate_limit_notify=True, compression=True
    )

    # Follow user
    user = api.create_friendship(user_id=userId)

    # Mute user.
    api.create_mute(user_id=userId)

    # Store user data in DynamoDB.
    dynamodb = boto3.resource("dynamodb", region_name="eu-central-1")
    table = dynamodb.Table("social-manager")

    # Get current date.
    currentDate = date.today()

    table.put_item(
        Item={
            "UserId": userId,
            "FollowDate": str(currentDate),
            "UserLabel": str(user.name),
            "UserSlug": str(user.screen_name),
        }
    )

    return {"statusCode": 200, "userId": userId}
