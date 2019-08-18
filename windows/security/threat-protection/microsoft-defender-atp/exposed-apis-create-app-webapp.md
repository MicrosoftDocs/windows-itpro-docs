---
title: Create an Application to access Microsoft Defender ATP without a user
ms.reviewer: 
description: Use the exposed data and actions using a set of programmatic APIs that are part of the Microsoft Intelligence Security Graph.
keywords: apis, graph api, supported apis, actor, alerts, machine, user, domain, ip, file, advanced hunting, query
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

# Create an app to access Microsoft Defender ATP without a user

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

This page describes how to create an application to get programmatic access to Microsoft Defender ATP without a user.

If you need programmatic access Microsoft Defender ATP on behalf of a user, see [Get access with user context](exposed-apis-create-app-nativeapp.md)

If you are not sure which access you need, see [Get started](apis-intro.md).

Microsoft Defender ATP exposes much of its data and actions through a set of programmatic APIs. Those APIs will help you automate work flows and innovate based on Microsoft Defender ATP capabilities. The API access requires OAuth2.0 authentication. For more information, see [OAuth 2.0 Authorization Code Flow](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-protocols-oauth-code).

In general, you’ll need to take the following steps to use the APIs:
- Create an AAD application
- Get an access token using this application
- Use the token to access Microsoft Defender ATP API

This page explains how to create an AAD application, get an access token to Microsoft Defender ATP and validate the token.

## Create an app

1. Log on to [Azure](https://portal.azure.com) with user that has **Global Administrator** role.

2. Navigate to **Azure Active Directory** > **App registrations** > **New registration**. 

   ![Image of Microsoft Azure and navigation to application registration](images/atp-azure-new-app2.png)

3. In the registration form, choose a name for your application and then click **Register**.

4. Allow your Application to access Microsoft Defender ATP and assign it **'Read all alerts'** permission:

   - On your application page, click **API Permissions** > **Add permission** > **APIs my organization uses** > type **WindowsDefenderATP** and click on **WindowsDefenderATP**.

   - **Note**: WindowsDefenderATP does not appear in the original list. You need to start writing its name in the text box to see it appear.

   ![Image of API access and API selection](images/add-permission.png)

   - Choose **Application permissions** > **Alert.Read.All** > Click on **Add permissions**

   ![Image of API access and API selection](images/application-permissions.png)

   **Important note**: You need to select the relevant permissions. 'Read All Alerts' is only an example!

     For instance,

     - To [run advanced queries](run-advanced-query-api.md), select 'Run advanced queries' permission
     - To [isolate a machine](isolate-machine.md), select 'Isolate machine' permission
     - To determine which permission you need, please look at the **Permissions** section in the API you are interested to call.

5. Click **Grant consent**

	- **Note**: Every time you add permission you must click on **Grant consent** for the new permission to take effect.

	![Image of Grant permissions](images/grant-consent.png)

6. Add a secret to the application.

	- Click **Certificates & secrets**, add description to the secret and click **Add**.

    **Important**: After click Add, **copy the generated secret value**. You won't be able to retrieve after you leave!

    ![Image of create app key](images/webapp-create-key2.png)

7. Write down your application ID and your tenant ID:

   - On your application page, go to **Overview** and copy the following:

   ![Image of created app id](images/app-and-tenant-ids.png)

8. **For Microsoft Defender ATP Partners only** - Set your application to be multi-tenanted (available in all tenants after consent)

    This is **required** for 3rd party applications (for example, if you create an application that is intended to run in multiple customers tenant).

    This is **not required** if you create a service that you want to run in your tenant only (i.e. if you create an application for your own usage that will only interact with your own data)

    - Go to **Authentication** > Add https://portal.azure.com as **Redirect URI**.

    - On the bottom of the page, under **Supported account types**, mark **Accounts in any organizational directory**

    - Application consent for your multi-tenant Application:

    You need your application to be approved in each tenant where you intend to use it. This is because your application interacts with Microsoft Defender ATP application on behalf of your customer.

    You (or your customer if you are writing a 3rd party application) need to click the consent link and approve your application. The consent should be done with a user who has admin privileges in the active directory.

    Consent link is of the form: 

    ```
    https://login.microsoftonline.com/common/oauth2/authorize?prompt=consent&client_id=00000000-0000-0000-0000-000000000000&response_type=code&sso_reload=true
    ```

    where 00000000-0000-0000-0000-000000000000 should be replaced with your Application ID


- **Done!** You have successfully registered an application! 
- See examples below for token acquisition and validation.

## Get an access token examples:

For more details on AAD token, refer to [AAD tutorial](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-protocols-oauth-client-creds)

### Using PowerShell

```
# That code gets the App Context Token and save it to a file named "Latest-token.txt" under the current directory
# Paste below your Tenant ID, App ID and App Secret (App key).

$tenantId = '' ### Paste your tenant ID here
$appId = '' ### Paste your Application ID here
$appSecret = '' ### Paste your Application key here

$resourceAppIdUri = 'https://api.securitycenter.windows.com'
$oAuthUri = "https://login.windows.net/$TenantId/oauth2/token"
$authBody = [Ordered] @{
    resource = "$resourceAppIdUri"
    client_id = "$appId"
    client_secret = "$appSecret"
    grant_type = 'client_credentials'
}
$authResponse = Invoke-RestMethod -Method Post -Uri $oAuthUri -Body $authBody -ErrorAction Stop
$token = $authResponse.access_token
Out-File -FilePath "./Latest-token.txt" -InputObject $token
return $token
```

### Using C#:

>The below code was tested with Nuget Microsoft.IdentityModel.Clients.ActiveDirectory 3.19.8

- Create a new Console Application
- Install Nuget [Microsoft.IdentityModel.Clients.ActiveDirectory](https://www.nuget.org/packages/Microsoft.IdentityModel.Clients.ActiveDirectory/)
- Add the below using

    ```
    using Microsoft.IdentityModel.Clients.ActiveDirectory;
    ```

- Copy/Paste the below code in your application (do not forget to update the 3 variables: ```tenantId, appId, appSecret```)

    ```
    string tenantId = "00000000-0000-0000-0000-000000000000"; // Paste your own tenant ID here
    string appId = "11111111-1111-1111-1111-111111111111"; // Paste your own app ID here
    string appSecret = "22222222-2222-2222-2222-222222222222"; // Paste your own app secret here for a test, and then store it in a safe place! 

    const string authority = "https://login.windows.net";
    const string wdatpResourceId = "https://api.securitycenter.windows.com";

    AuthenticationContext auth = new AuthenticationContext($"{authority}/{tenantId}/");
    ClientCredential clientCredential = new ClientCredential(appId, appSecret);
    AuthenticationResult authenticationResult = auth.AcquireTokenAsync(wdatpResourceId, clientCredential).GetAwaiter().GetResult();
    string token = authenticationResult.AccessToken;
    ```


### Using Python

Refer to [Get token using Python](run-advanced-query-sample-python.md#get-token)

### Using Curl

> [!NOTE]
> The below procedure supposed Curl for Windows is already installed on your computer

- Open a command window
- Set CLIENT_ID to your Azure application ID
- Set CLIENT_SECRET to your Azure application secret
- Set TENANT_ID to the Azure tenant ID of the customer that wants to use your application to access Microsoft Defender ATP application
- Run the below command:

```
curl -i -X POST -H "Content-Type:application/x-www-form-urlencoded" -d "grant_type=client_credentials" -d "client_id=%CLIENT_ID%" -d "scope=https://securitycenter.onmicrosoft.com/windowsatpservice/.default" -d "client_secret=%CLIENT_SECRET%" "https://login.microsoftonline.com/%TENANT_ID%/oauth2/v2.0/token" -k
```

You will get an answer of the form:

```
{"token_type":"Bearer","expires_in":3599,"ext_expires_in":0,"access_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIn <truncated> aWReH7P0s0tjTBX8wGWqJUdDA"}
```

## Validate the token

Sanity check to make sure you got a correct token:
- Copy/paste into [JWT](https://jwt.ms) the token you get in the previous step in order to decode it
- Validate you get a 'roles' claim with the desired permissions
- In the screen shot below you can see a decoded token acquired from an Application with permissions to all of Microsoft Defender ATP's roles:

![Image of token validation](images/webapp-decoded-token.png)

## Use the token to access Microsoft Defender ATP API

- Choose the API you want to use, for more information, see [Supported Microsoft Defender ATP APIs](exposed-apis-list.md)
- Set the Authorization header in the Http request you send to "Bearer {token}" (Bearer is the Authorization scheme)
- The Expiration time of the token is 1 hour (you can send more then one request with the same token)

- Example of sending a request to get a list of alerts **using C#** 
    ```
    var httpClient = new HttpClient();

    var request = new HttpRequestMessage(HttpMethod.Get, "https://api.securitycenter.windows.com/api/alerts");

    request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);

    var response = httpClient.SendAsync(request).GetAwaiter().GetResult();

    // Do something useful with the response
    ```

## Related topics
- [Supported Microsoft Defender ATP APIs](exposed-apis-list.md)
- [Access Microsoft Defender ATP on behalf of a user](exposed-apis-create-app-nativeapp.md)
