---
title: Python code examples for the custom threat intelligence API
description: Use Python code to create custom threat intelligence using REST API.
keywords: python, code examples, threat intelligence, custom threat intelligence, rest api, api
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Python code examples for the custom threat intelligence API

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

## Before you begin
You must [install](http://docs.python-requests.org/en/master/user/install/#install) the "[requests](http://docs.python-requests.org/en/master/)" python library.

These code examples demonstrate the following tasks:
- [Obtain an Azure AD access token](#obtain-an-azure-ad-access-token)
- [Create request session object](#create-a-request's-session-object)
- [Create calls to the custom threat intelligence API](#create-calls-to-the-custom-threat-intelligence-api)
- [Create a new alert definition](#create-a-new-alert-definition)
- [Create a new indicator of compromise](#create-a-new-indicator-of-compromise)

## Obtain an Azure AD access token
The following example demonstrates how to obtain an Azure AD access token that you can use to call methods in the custom threat intelligence API. After you obtain a token, you have 60 minutes to use this token in calls to the custom threat intelligence API before the token expires. After the token expires, you can generate a new token.

Replace the *tenant\_id*, *client_id*, and *client_secret* values with the ones you got from **Preferences settings** page in the portal:

```

import json
import requests
from pprint import pprint

tenant_id="{your tenant ID}"
client_id="{your client ID"
client_secret="{your client secret}"

full_auth_url = r"https://login.windows.net/{0}/oauth2/token".format(tenant_id)

payload = {"resource": "https://graph.windows.net",
           "client_id": client_id,
           "client_secret": client_secret,
           "grant_type": "client_credentials"}


response = requests.post(full_auth_url, payload)
token = json.loads(response.text)["access_token"]
```

## Create request session object
Add HTTP headers to the session object, including the Authorization header with the token that was obtained.

```
with requests.Session() as session:
    session.headers = {
        'Authorization': 'Bearer {}'.format(token),
        'Content-Type': 'application/json',
        'Accept': 'application/json'}
```

## Create calls to the custom threat intelligence API
The following example shows how to view all of the alert definition entities by creating a call to the API.

>[!NOTE]
> All code is still within the ```with``` statement with the same indention level.

```json

response = session.get("https://ti.securitycenter.windows.com/V1.0/AlertDefinitions")
pprint(json.loads(response.text))
```

If this is the first time to use the API, the response is empty.

## Create a new alert definition
The following example shows how to create a new alert definition.

```

alert_definition = {"Name": "The Alert's Name",
                    "Severity": "Low",
                    "InternalDescription": "An internal description of the Alert",
                    "Title": "The Title",
                    "UxDescription": "Description of the alerts",
                    "RecommendedAction": "The alert's recommended action",
                    "Category": "Trojan",
                    "Enabled": True}

response = session.post(
    "https://ti.securitycenter.windows.com/V1.0/AlertDefinitions",
    json=alert_definition)
```

## Create a new indicator of compromise
The following example shows how to use the alert ID obtained from creating a new alert definition to create a new indicator of compromise.

```
alert_definition_id = json.loads(response.text)["Id"]
    ioc = {'Type': "Sha1",
           'Value': "dead1111eeaabbccddeeaabbccddee11ffffffff",
           'DetectionFunction': "Equals",
           'Enabled': True,
           "AlertDefinition@odata.bind": "AlertDefinitions({0})".format(alert_definition_id)}

    response = session.post(
        "https://ti.securitycenter.windows.com/V1.0/IndicatorsOfCompromise",
        json=ioc)
```
