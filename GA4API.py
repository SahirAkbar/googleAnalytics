from google.analytics.data_v1beta import BetaAnalyticsDataClient
from google.analytics.data_v1beta.types import (
    DateRange,
    Dimension,
    Metric,
    RunReportRequest,
)
from google.oauth2 import service_account, credentials
from google.auth import external_account
import pandas as pd
from collections import defaultdict
from google.oauth2 import service_account
#property_id = '267875710'
property_id = '421538880'
credentials_info = {
  "type": "service_account",
  "project_id": "testingbq-410010",
  "private_key_id": "9e5092d32933bbd87e47b15a7152e6cd29812053",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCvcy6IgIs3qJRj\njTaoiU7SVFyPKubcLdVJx86LTUAhiyAIdd7p5jgeLaw3Beg+MpqnwnyZl6xLVd2Z\n7sW+537ETnhDhgL4n14Us8oc3i8H0QNetE9ih1jsUnfWS+3CTMqIvVcL6Vgla/Of\nUlYa1t6IOEfFh7GJlqgcys68tNymw+0fRP/wxVKy67pet2MvE0jdnIWGsWxQvZ1d\nTPiHR61YhN/wlWiIhUwizPynjxx1+pTFEGVNaiDGq5+z3Pwx4zKNDz/dfmhV9n2Q\nyaYn9QLoSRDWG1qGIYZAyS3LJK3gW0ssQFiYNIXEdQtPJ4hqRgkATSHeGwezfTlE\nRqwMh5xJAgMBAAECggEAEeOeZcQnjcYGVU03esE/VHJOGrnu3pncwsBY9rqqdJEd\nM8ei8jnrVGZnRhf32Wmq+7p4nmeI5YiMhw7BwmiTtBvlJsth/6wuOVGopL9hz7v3\nyj77zinLPxNcjTDiPfq69uzJVJlXB7/FUCQiy+tHNt/4L3OZvlPqcb8bC8IsMmOh\nue9jwmRAmR6MQD8PIXbbrUSr8DbopP9dkIWA+EXkSpezFzR8gFTQC0dQUU4iNNZg\nhKCXVYwt/0a/0GsUX7zPZm2W3fDeH0jsHU8kLqL4RzSmg9Wyvxh0wtj/UDKA8brF\nZ/k4SkPC3sK0J69WG25Pd6CkcwV2OMEuxp1ECoZYgQKBgQDwLzJme/y6vvPcdne4\niv1zfvLmwKBQ/9FhQsBVZ3J2lQU/+TSeMTAoxZJdfMnUE3HpNItJgRH3piDpQCIO\nYVCyEEIrVLpfGJlwl3U9cy6XrazqNxaEWC6maVSFN4r87vyQpstDQ2v4oM1hvd5i\nLmtnQc5oNSfYyEGGddewJsEICQKBgQC7AMCeAR1CktEhXsdnuxnIm4i7e28xZ9np\nEfSkDWa5X8lO2PxBgNIBmX8ss1IN1otWmfMgytv8NbVgo8ty37oBGJwvTXFP1Jef\nI3sGueI51w2s6NDYo6Za0OxmtqRsGYBl9fXzF4D9575/poxh8KJ2iEWe3XemyLMy\neWH7L/CCQQKBgGWkM3n3Qk5s/JnxcFyiRPuZX4WTQsTEXYEBVI9Pxbq0+ZHHDiNb\nwXufkH8LjgW3bN85ozAp9MaOgSL0RvU67YFNLBNWOcCAkn55Od4VXkRF9QTw5xB+\nmM9Hh8MQbDr5j9xPGXmPkKOYuRGB3hhCeKUrzgN/aytsI36ZY/thixKxAoGBAJKy\nJWgNsblu2PWXl0/NW42eTWXdj72vHSeT+VjUVngnJxFecIymFJhCpJwZU84dNpNK\nE4ru+CFitJVKCKhlz1Faz/Lfins4Z3TkbXc6TLhY9pZk0KiRwEdPy5NLxbIzUyEp\nELaRApSrvin/KfMOxTO89PiJ/XntyX1X8UAOPFrBAoGAVRHuReaXXfjwwaPPKpq0\nqZh/e7YTIndiKZeypnFqOJPn2TZ6eqjpmmoExwUcf4fITn/0iN+MrQLxJqCugVDE\nE5bXlL9mU3pKam5FYgjiQGgzDv7q4Y8wTMqTCvjDx+cEdyw5+4HwpjGXew4RdFh5\n4Gjlew6kjJzaLZzNg5RbP1I=\n-----END PRIVATE KEY-----\n",
  "client_email": "google-analytics@testingbq-410010.iam.gserviceaccount.com",
  "client_id": "117357821828963856573",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/google-analytics%40testingbq-410010.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}
dimensions = ['audienceName','signedInWithUserId','eventName','streamId','customUser:ga_session_id']
metrics = ['bounceRate', 'eventValue']
request = {
  "requests": [
    {
      "dateRanges": [
        {
          "startDate": "2024-01-01",
          "endDate": "today"
        }
      ],
      "dimensions": [{'name': name} for name in dimensions],
      "metrics": [{'name': name} for name in metrics],
      "limit": 100000
    }
  ]
}
credentials = service_account.Credentials.from_service_account_info(info=credentials_info, scopes=['https://www.googleapis.com/auth/analytics.readonly'])
#credentials = external_account.Credentials.from_file(credentials_file)
#ga4_credentials = credentials.Credentials.from_authorized_user_file(credentials_file)

client = BetaAnalyticsDataClient(credentials=credentials)
def run_report(dimensions, metrics):
    request = RunReportRequest(
        property=f"properties/{property_id}",
        #dimensions=[Dimension(name= dimension) for dimension in dimensions],
        #metrics=[Metric(name= metric) for metric in metrics],
        dimensions=[Dimension(name="audienceName"),Dimension(name="signedInWithUserId")],
        metrics=[Metric(name="bounceRate"),Metric(name="eventValue")],
        date_ranges=[DateRange(start_date="2024-01-01", end_date="today")],
    )
    response = client.run_report(request)
    return response
response = run_report(dimensions, metrics)
def format_response(response):
    columns=[]
    [columns.append(dimension.name) for dimension in response.dimension_headers]
    [columns.append(metric.name) for metric in response.metric_headers]
    data = []
    for row in response.rows:
        row_data = []
        [row_data.append(dimension_value.value) for dimension_value in row.dimension_values]
        [row_data.append(metric_value.value) for metric_value in row.metric_values]
        data.append(row_data)
        

    df = pd.DataFrame(data, columns=columns)
    return df
df = format_response(response)
from pyspark.sql import SparkSession
spark = SparkSession.builder.appName("YourAppName").getOrCreate()
#display(df)
sparkDf=spark.createDataFrame(df)
print(sparkDf)