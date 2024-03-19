import pymysql
from pymysql.constants import CLIENT
import os

def lambda_handler(event, context):
    # Get RDS instance information from environment variables
    rds_endpoint = os.environ['RDS_ENDPOINT']
    db_name = os.environ['DB_NAME']
    username = os.environ['DB_USERNAME']
    password = os.environ['DB_PASSWORD']

    # Connect to the RDS instance using PyMySQL
    conn = {
        "host":rds_endpoint,
        "user":username,
        "port":3306,
        "password":password,
        "cursorclass":pymysql.cursors.DictCursor,
        "client_flag": CLIENT.MULTI_STATEMENTS
    }

    try:
        # Read the MySQL file content
        with open('./database.sql', 'r') as file:
            mysql_file_content = file.read()

        # Execute SQL commands in the MySQL file
        with pymysql.connect(**conn).cursor() as cursor:
            cursor.execute(mysql_file_content)

        return {
            'statusCode': 200,
            'body': 'MySQL file data successfully imported into RDS instance.'
        }

    except Exception as e:
        return {
            'statusCode': 500,
            'body': f'Error: {str(e)}'
        }