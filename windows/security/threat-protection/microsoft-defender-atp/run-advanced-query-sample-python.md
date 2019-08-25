---
title: Advanced Hunting API
ms.reviewer: 
description: Use this API to run advanced queries
keywords: apis, supported apis, advanced hunting, query
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Advanced Hunting using Python

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Run advanced queries using Python, see [Advanced Hunting API](run-advanced-query-api.md).

In this section we share Python samples to retrieve a token and use it to run a query.

>**Prerequisite**: You first need to [create an app](apis-intro.md).

## Get token

- Run the following:

```

import json
import urllib.request
import urllib.parse

tenantId = '00000000-0000-0000-0000-000000000000' # Paste your own tenant ID here
appId = '11111111-1111-1111-1111-111111111111' # Paste your own app ID here
appSecret = '22222222-2222-2222-2222-222222222222' # Paste your own app secret here

url = "https://login.windows.net/%s/oauth2/token" % (tenantId)

resourceAppIdUri = 'https://api.securitycenter.windows.com'

body = {
    'resource' : resourceAppIdUri,
    'client_id' : appId,
    'client_secret' : appSecret,
    'grant_type' : 'client_credentials'
}

data = urllib.parse.urlencode(body).encode("utf-8")

req = urllib.request.Request(url, data)
response = urllib.request.urlopen(req)
jsonResponse = json.loads(response.read())
aadToken = jsonResponse["access_token"]

```

where
- tenantId: ID of the tenant on behalf of which you want to run the query (i.e., the query will be run on the data of this tenant)
- appId: ID of your AAD app (the app must have 'Run advanced queries' permission to Microsoft Defender ATP)
- appSecret: Secret of your AAD app

## Run query

 Run the following query:

```
query = 'RegistryEvents | limit 10' # Paste your own query here

url = "https://api.securitycenter.windows.com/api/advancedqueries/run"
headers = { 
	'Content-Type' : 'application/json',
	'Accept' : 'application/json',
	'Authorization' : "Bearer " + aadToken
}

data = json.dumps({ 'Query' : query }).encode("utf-8")

req = urllib.request.Request(url, data, headers)
response = urllib.request.urlopen(req)
jsonResponse = json.loads(response.read())
schema = jsonResponse["Schema"]
results = jsonResponse["Results"]

```

- schema contains the schema of the results of your query
- results contains the results of your query

### Complex queries

If you want to run complex queries (or multilines queries), save your query in a file and, instead of the first line in the above sample, run the below command:

```
queryFile = open("D:\\Temp\\myQuery.txt", 'r') # Replace with the path to your file
query = queryFile.read()
queryFile.close()
```

## Work with query results

You can now use the query results.

To iterate over the results do the below:

```
for result in results:
	print(result) # Prints the whole result
	print(result["EventTime"]) # Prints only the property 'EventTime' from the result


```


To output the results of the query in CSV format in file file1.csv do the below:

```
import csv

outputFile = open("D:\\Temp\\file1.csv", 'w')
output = csv.writer(outputFile)
output.writerow(results[0].keys())
for result in results:
	output.writerow(result.values())

outputFile.close()
```

To output the results of the query in JSON format in file file1.json​ do the below:

```
outputFile = open("D:\\Temp\\file1.json", 'w')
json.dump(results, outputFile)
outputFile.close()
```


## Related topic
- [Microsoft Defender ATP APIs](apis-intro.md)
- [Advanced Hunting API](run-advanced-query-api.md)
- [Advanced Hunting using PowerShell](run-advanced-query-sample-powershell.md)