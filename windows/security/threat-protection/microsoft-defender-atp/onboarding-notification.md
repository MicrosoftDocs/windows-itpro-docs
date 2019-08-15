---
title: Create an onboarding or offboarding notification rule 
description: Get a notification when a local onboarding or offboarding script is used.
keywords: onboarding, offboarding, local, script, notification, rule
search.product: eADQiWindows 10XVcnh
search.appverid: met150
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

# Create a notification rule when a local onboarding or offboarding script is used

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Create a notification rule so that when a local script is used, you'll be notified. 

## Before you begin
You'll need to have access to:
 - Microsoft Flow (Flow Plan 1 at a minimum). For more information, see [Flow pricing page](https://flow.microsoft.com/pricing/).
 - Azure Table or SharePoint List or Library / SQL DB

## Create the notification flow

1. In [flow.microsoft.com](https://flow.microsoft.com/).

2. Navigate to **My flows > New > Scheduled - from blank**. 

    ![Image of flow](images/new-flow.png)


3. Create the flow:

    ![Image of the notification flow](images/flow2.png)

4. Set the recurrence:

    ![Image of flow recurrence](images/flow-recurrence.png)


5. The example below uses an HTTP call to Microsoft Defender Security Center API. You can also replace it with the out-of-the-box "WDATP Connector" (action: "Machines – Get list of machines").
    
    ![Image of HTTP](images/http-flow.png)

6. Set the JSON file with the following value:


```
{
    "type": "object",
    "properties": {
        "@@odata.context": {
            "type": "string"
        },
        "value": {
            "type": "array",
            "items": {
                "type": "object",
                "properties": {
                    "id": {
                        "type": "string"
                    },
                    "computerDnsName": {
                        "type": "string"
                    },
                    "firstSeen": {
                        "type": "string"
                    },
                    "lastSeen": {
                        "type": "string"
                    },
                    "osPlatform": {
                        "type": "string"
                    },
                    "osVersion": {},
                    "lastIpAddress": {
                        "type": "string"
                    },
                    "lastExternalIpAddress": {
                        "type": "string"
                    },
                    "agentVersion": {
                        "type": "string"
                    },
                    "osBuild": {
                        "type": "integer"
                    },
                    "healthStatus": {
                        "type": "string"
                    },
                    "riskScore": {
                        "type": "string"
                    },
                    "exposureScore": {
                        "type": "string"
                    },
                    "aadDeviceId": {},
                    "machineTags": {
                        "type": "array"
                    }
                },
                "required": [
                    "id",
                    "computerDnsName",
                    "firstSeen",
                    "lastSeen",
                    "osPlatform",
                    "osVersion",
                    "lastIpAddress",
                    "lastExternalIpAddress",
                    "agentVersion",
                    "osBuild",
                    "healthStatus",
                    "rbacGroupId",
                    "rbacGroupName",
                    "riskScore",
                    "exposureScore",
                    "aadDeviceId",
                    "machineTags"
                ]
            }
        }
    }
}
```

   
   ![Image of JSON](images/parse-json-flow.png)

7.  Extract the values from the JSON call and check if the onboarded machine(s) is / are already registered at the SharePoint list as an example:
- If yes, no notification will be triggered
- If no, will register the new onboarded machine(s) in the SharePoint list and a notification will be sent to the Microsoft Defender ATP admin

    ![Image of apply to each](images/flow-apply.png)



    ![Image of apply to each  with get items](imags/apply-to-each.png)

    ![Image of condition](imags/condition1.png)

    ![Image of condition](imags/condition2.png)

    ![Image of send email](imags/send-email.png)

    

## Alert notification
The following image is an example of an email notification.

![Image of email notification](images/alert-notification.png)


## Tips

- You can filter here using lastSeen only:
    - Every 60 min:
      - Take all machines last seen in the past 7 days. 

- For each machine: 
    - If last seen property is on the one hour interval of [-7 days, -7days + 60 minutes ] -> Alert for offboarding possibility 
    - If first seen is on the past hour -> Alert for onboarding.

In this solution you will not have duplicate alerts too:
There are tenants that have numerous machines. Getting all those machines might be very expensive and might require paging.

You can split it to two queries: 
1)	For offboarding take only this interval using the OData $filter and only notify if the conditions are met.
2)	Take all machines last seen in the past hour and check first seen property for them (if the first seen property is on the past hour, the last seen must be there too. ) 

