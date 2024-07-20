import json


def lambda_handler(event, context):
    print(event)
    path = event["path"]
    httpMethod = event["httpMethod"]
    print()
    if path=="/pet" and httpMethod=="POST" :
        body = event["body"]
        # Replace \n with empty string
        cleaned_string = body.replace('\n', '')
        print("New Pet Info")
        print(cleaned_string)
    funtion_name = context.function_name
    # TODO implement
    return {
        'statusCode': 200,
        'body': json.dumps(funtion_name)
    }
