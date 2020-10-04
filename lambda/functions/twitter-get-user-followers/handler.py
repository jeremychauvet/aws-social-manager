import tweepy
import os
import time
import boto3


def main(event, context):

    return {"statusCode": 200, "output": get_user_followers(event["userId"])}


def get_user_followers(userId):
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

    # Fetching user followers.
    followers = []
    maxDepth = 1
    sleepTimeBetweenPages = 1
    for page in tweepy.Cursor(api.followers_ids, user_id=userId).pages(maxDepth):
        followers.extend(page)
        time.sleep(sleepTimeBetweenPages)

    # Store user data in DynamoDB.
    dynamodb = boto3.resource("dynamodb", region_name="eu-central-1")
    table = dynamodb.Table("social-manager-user-to-follow")

    for follower in followers:
        table.put_item(Item={"TwitterId": follower})

    return {"statusCode": "200"}
