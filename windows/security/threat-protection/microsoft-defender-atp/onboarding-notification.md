---
title: Create an onboarding or offboarding notification rule
description: Get a notification when a local onboarding or offboarding script is used.
keywords: onboarding, offboarding, local, script, notification, rule
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
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
ms.technology: mde
---

# Create a notification rule when a local onboarding or offboarding script is used

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


Create a notification rule so that when a local onboarding or offboarding script is used, you'll be notified. 

## Before you begin
You'll need to have access to:
 - Microsoft Flow (Flow Plan 1 at a minimum). For more information, see [Flow pricing page](https://flow.microsoft.com/pricing/).
 - Azure Table or SharePoint List or Library / SQL DB

## Create the notification flow

1. In [flow.microsoft.com](https://flow.microsoft.com/).

2. Navigate to **My flows > New > Scheduled - from blank**. 

    ![Image of flow](images/new-flow.png)


3. Build a scheduled flow.
   1. Enter a flow name.
   2. Specify the start and time.
   3. Specify the frequency. For example, every 5 minutes.

    ![Image of the notification flow](images/build-flow.png)

4. Select the + button to add a new action. The new action will be an HTTP request to the Defender for Endpoint security center device(s) API. You can also replace it with the out-of-the-box "WDATP Connector" (action: "Machines - Get list of machines"). 

    ![Image of recurrence and add action](images/recurrence-add.png)


5. Enter the following HTTP fields:

   - Method: "GET" as a value to get the list of devices.
   - URI: Enter `https://api.securitycenter.microsoft.com/api/machines`.
   - Authentication: Select "Active Directory OAuth".
   - Tenant: Sign-in to https://portal.azure.com and navigate to **Azure Active Directory > App Registrations** and get the Tenant ID value.
   - Audience: `https://securitycenter.onmicrosoft.com/windowsatpservice\`
   - Client ID: Sign-in to https://portal.azure.com and navigate to **Azure Active Directory > App Registrations** and  get the Client ID value.
   - Credential Type: Select "Secret".
   - Secret: Sign-in to https://portal.azure.com and navigate to **Azure Active Directory > App Registrations** and get the Tenant ID value.

    ![Image of the HTTP conditions](images/http-conditions.png)


6. Add a new step by selecting **Add new action** then search for **Data Operations** and select 
**Parse JSON**.

    ![Image of data operations](images/data-operations.png)

7. Add Body in the **Content** field.

    ![Image of parse JSON](images/parse-json.png)

8. Select the **Use sample payload to generate schema** link.

    ![Image of parse json with payload](images/parse-json-schema.png)

9. Copy and paste the following JSON snippet:

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

10.  Extract the values from the JSON call and check if the onboarded device(s) is / are already registered at the SharePoint list as an example:
- If yes, no notification will be triggered
- If no, will register the new onboarded device(s) in the SharePoint list and a notification will be sent to the Defender for Endpoint admin

    ![Image of apply to each](images/flow-apply.png)

    ![Image of apply to each  with get items](images/apply-to-each.png)

11. Under **Condition**, add the following expression: "length(body('Get_items')?['value'])" and set the condition to equal to 0.

    ![Image of apply to each condition](images/apply-to-each-value.png)  
    ![Image of condition1](images/conditions-2.png) 
    ![Image of condition2](images/condition3.png)  
    ![Image of send email](images/send-email.png)

## Alert notification
The following image is an example of an email notification.

![Image of email notification](images/alert-notification.png)


## Tips

- You can filter here using lastSeen only:
    - Every 60 min:
      - Take all devices last seen in the past 7 days. 

- For each device: 
    - If last seen property is on the one hour interval of [-7 days, -7days + 60 minutes ] -> Alert for offboarding possibility.
    - If first seen is on the past hour -> Alert for onboarding.

In this solution you will not have duplicate alerts:
There are tenants that have numerous devices. Getting all those devices might be very expensive and might require paging.

You can split it to two queries: 
1.	For offboarding take only this interval using the OData $filter and only notify if the conditions are met.
2.	Take all devices last seen in the past hour and check first seen property for them (if the first seen property is on the past hour, the last seen must be there too). 

