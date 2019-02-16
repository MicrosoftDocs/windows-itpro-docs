---
title: Use the Windows Defender Advanced Threat Protection exposed APIs  
description: Use the exposed data and actions using a set of progammatic APIs that are part of the Microsoft Intelligence Security Graph.
keywords: apis, graph api, supported apis, actor, alerts, machine, user, domain, ip, file
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
ms.date: 10/23/2017
---

# Use the Windows Defender ATP exposed APIs (deprecated)

**Applies to:**


- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)



>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

Windows Defender ATP exposes much of the available data and actions using a set of programmatic APIs that are part of the Microsoft Intelligence Security Graph. Those APIs will enable you to automate workflows and innovate based on Windows Defender ATP capabilities. The API access requires OAuth2.0 authentication. For more information, see [OAuth 2.0 Authorization Code Flow](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-protocols-oauth-code).

In general, you’ll need to take the following steps to use the APIs:
-	Create an app
-	Get an access token
-	Run queries on the graph API

### Before you begin
Before using the APIs, you’ll need to create an app that you’ll use to authenticate against the graph. You’ll need to create a native app to use for the adhoc queries. 

## Create an app

1.	Log on to [Azure](https://portal.azure.com).

2.	Navigate to **Azure Active Directory** > **App registrations** > **New application registration**. 

    ![Image of Microsoft Azure and navigation to application registration](images/atp-azure-new-app.png)

3.	In the Create window, enter the following information then click **Create**.

    ![Image of Create application window](images/atp-azure-create.png)

    - **Name:** WinATPGraph
    - **Application type:** Native
    - **Redirect URI:** `https://localhost`


4.	Navigate and select the newly created application.
    ![Image of new app in Azure](images/atp-azure-atp-app.png)

5.	Click **All settings** > **Required permissions** > **Add**.

    ![Image of All settings, then required permissions](images/atp-azure-required-permissions.png)

6.	Click **Select an API** > **Microsoft Graph**, then click **Select**.

    ![Image of API access and API selection](images/atp-azure-api-access.png)


7. Click **Select permissions** and select **Sign in and read user profile** then click **Select**.

    ![Image of select permissions](images/atp-azure-select-permissions.png)

You can now use the code snippets in the following sections to query the API using the created app ID.

## Get an access token
1.	Get the Client ID from the application you created.

2. Use the **Client ID**. For example:
    ```
    private const string authority = "https://login.microsoftonline.com/common/oauth2/v2.0/authorize";
    private const string resourceId = "https://graph.microsoft.com";
    private const string clientId = "{YOUR CLIENT ID/APP ID HERE}";
    private const string redirect = "https://localhost"; 
    HttpClient client = new HttpClient();
    AuthenticationContext auth = new AuthenticationContext(authority);
    var token = auth.AcquireTokenAsync(resourceId, clientId, new Uri(redirect), new PlatformParameters(PromptBehavior.Auto)).Result;
    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue(token.AccessTokenType, token.AccessToken);
    ```

## Query the graph
Once the bearer token is retrieved, you can easily invoke the graph APIs. For example:

```
client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json")); 
// sample endpoint
string ep = @"https://graph.microsoft.com/{VERSION}/alerts?$top=5";
HttpResponseMessage response = client.GetAsync(ep).Result;
string resp = response.Content.ReadAsStringAsync().Result;
Console.WriteLine($"response for: {ep} \r\n {resp}");
```


## Related topics
- [Supported Windows Defender ATP APIs](supported-apis-windows-defender-advanced-threat-protection.md)
