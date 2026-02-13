import json
import asyncio
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad
import binascii

def handler(event, context):
    try:
        # Get query parameters
        query = event.get('queryStringParameters', {})
        uid = query.get('uid', '')
        server_name = query.get('server_name', '')
        random_mode = query.get('random', 'false')
        
        # Process request (simplified version)
        result = {
            "LikesGivenByAPI": 5,
            "LikesbeforeCommand": 100,
            "LikesafterCommand": 105,
            "PlayerNickname": "TEST_PLAYER",
            "UID": uid,
            "status": 1,
            "Note": "Netlify Function - Demo Mode"
        }
        
        return {
            'statusCode': 200,
            'headers': {
                'Content-Type': 'application/json',
                'Access-Control-Allow-Origin': '*'
            },
            'body': json.dumps(result)
        }
    except Exception as e:
        return {
            'statusCode': 500,
            'body': json.dumps({'error': str(e)})
      }
