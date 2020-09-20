import json
import tweepy
import os


def main(event, context):

    return {
        "statusCode": 200,
        "output": getUser(event.screenName)
    }


def getUser(screenName):
    try:
        # assign the values accordingly
        consumer_key = os.environ["TWITTER_CONSUMER_KEY"]
        consumer_secret = os.environ["TWITTER_CONSUMER_SECRET"]
        access_token = os.environ["TWITTER_ACCESS_TOKEN"]
        access_token_secret = os.environ["TWITTER_ACCESS_TOKEN_SECRET"]

        # authorization of consumer key and consumer secret
        auth = tweepy.OAuthHandler(consumer_key, consumer_secret)

        # set access to user's access key and access secret
        auth.set_access_token(access_token, access_token_secret)

        # calling the api
        api = tweepy.API(auth, wait_on_rate_limit=True, wait_on_rate_limit_notify=True, compression=True)

        # fetching user data
        user = api.get_user(screen_name=screenName)
        return user.id

        # c = tweepy.Cursor(api.followers_ids, id='McDonalds')
        # print "type(c)=", type(c)
        # ids = []
        # for page in c.pages():
        #     ids.append(page)
        # print "ids=", ids
        # print "ids[0]=", ids[0]
        # print "len(ids[0])=", len(ids[0])
        # print 5/0

    except:
        e = sys.exc_info()[0]
        print("Error: %s" % e)
