import json
import requests
from pprint import pprint

auth_url="Your Authorization URL"
client_id="Your Client ID"
client_secret="Your Client Secret"

payload = {"resource": "https://graph.windows.net",
           "client_id": client_id,
           "client_secret": client_secret,
           "grant_type": "client_credentials"}

response = requests.post(auth_url, payload)
token = json.loads(response.text)["access_token"]

with requests.Session() as session:
    session.headers = {
        'Authorization': 'Bearer {}'.format(token),
        'Content-Type': 'application/json',
        'Accept': 'application/json'}

    response = session.get("https://ti.securitycenter.windows.com/V1.0/AlertDefinitions")
    pprint(json.loads(response.text))

    alert_definition = {"Name": "The alert's name",
                        "Severity": "Low",
                        "InternalDescription": "An internal description of the alert",
                        "Title": "The Title",
                        "UxDescription": "Description of the alerts",
                        "RecommendedAction": "The alert's recommended action",
                        "Category": "Trojan",
                        "Enabled": True}

    response = session.post(
        "https://ti.securitycenter.windows.com/V1.0/AlertDefinitions",
        json=alert_definition)

    alert_definition_id = json.loads(response.text)["Id"]

    ioc = {'Type': "Sha1",
           'Value': "dead1111eeaabbccddeeaabbccddee11ffffffff",
           'DetectionFunction': "Equals",
           'Enabled': True,
           "AlertDefinition@odata.bind": "AlertDefinitions({0})".format(alert_definition_id)}

    response = session.post(
        "https://ti.securitycenter.windows.com/V1.0/IndicatorsOfCompromise",
        json=ioc)

    pprint(json.loads(response.text))
