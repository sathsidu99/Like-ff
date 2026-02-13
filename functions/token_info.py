import json

def handler(event, context):
    servers = ["IND", "BD", "BR", "US", "SAC", "NA"]
    info = {}
    
    for server in servers:
        info[server] = {
            "regular_tokens": 10,
            "visit_tokens": 2
        }
    
    return {
        'statusCode': 200,
        'headers': {
            'Content-Type': 'application/json',
            'Access-Control-Allow-Origin': '*'
        },
        'body': json.dumps(info)
    }
