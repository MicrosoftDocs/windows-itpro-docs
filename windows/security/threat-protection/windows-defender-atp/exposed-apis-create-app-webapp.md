---
title: Create an app to access Windows Defender ATP without a user
description: Use the exposed data and actions using a set of progammatic APIs that are part of the Microsoft Intelligence Security Graph.
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
ms.date: 09/03/2018
---

# Create an app to access Windows Defender ATP without a user

**Applies to:**
- Windows Defender Advanced Threat Protection (Windows Defender ATP)


>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Prerelease information](prerelease.md)]

This page describes how to create an application to get programmatical access to Windows Defender ATP without a user.

If you need programmatical access Windows Defender ATP on behalf of a user, see [Access Windows Defender ATP on behalf of a user](exposed-apis-create-app-nativeapp.md)

If you are not sure which access you need, see [Use Windows Defender ATP APIs](apis-intro.md).

Windows Defender ATP exposes much of its data and actions through a set of programmatic APIs. Those APIs will help you automate workflows and innovate based on Windows Defender ATP capabilities. The API access requires OAuth2.0 authentication. For more information, see [OAuth 2.0 Authorization Code Flow](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-v2-protocols-oauth-code).

In general, you’ll need to take the following steps to use the APIs:
- Create an app
- Get an access token
- Use the token to access Windows Defender ATP API

This page explains how to create an app, get an access token to Windows Defender ATP and validate the token includes the required permission.

## Create an app

1.	Log on to [Azure](https://portal.azure.com).

2.	Navigate to **Azure Active Directory** > **App registrations** > **New application registration**. 

    ![Image of Microsoft Azure and navigation to application registration](images/atp-azure-new-app.png)

3.	In the Create window, enter the following information then click **Create**.

    ![Image of Create application window](images/webapp-create.png)

    - **Name:** WdatpEcosystemPartner
    - **Application type:** Web app / API
    - **Redirect URI:** `https://WdatpEcosystemPartner.com` (The URL where user can sign in and use your app. You can change this URL later.)


4.	Click **Settings** > **Required permissions** > **Add**.

    ![Image of new app in Azure](images/webapp-add-permission.png)

5.	Click **Select an API** > **WindowsDefenderATP**, then click **Select**.
	
	**Note**: WindowsDefenderATP does not appear in the original list. You need to start writing its name in the text box to see it appear.

    ![Image of API access and API selection](images/webapp-add-permission-2.png)

6. Click **Select permissions** > **Run advanced queries** > **Select**.
	
	**Important note**: You need to select the relevant permission. 'Run advanced queries' is only an example!

    ![Image of select permissions](images/webapp-select-permission.png)

	For instance,

	- To [run advanced queries](run-advanced-query-api.md), select 'Run advanced queries' permission
	- To [isolate a machine](isolate-machine-windows-defender-advanced-threat-protection-new.md), select 'Isolate machine' permission

	To determine which permission you need, please look at the **Permissions** section in the API you are interested to call.

7. Click **Done**

    ![Image of add permissions completion](images/webapp-add-permission-end.png)

8. Click **Grant permissions**

	In order to add the new selected permissions to the app, the Admin's tenant must press on the **Grant permissions** button.

	If in the future you will want to add more permission to the app, you will need to press on the **Grant permissions** button again so the changes will take effect.

	![Image of Grant permissions](images/webapp-grant-permissions.png)

9. Click **Keys**, type a key name and click **Save**.

	**Important**: After you save, **copy the key value**. You won't be able to retrieve after you leave!

    ![Image of create app key](images/webapp-create-key.png)

10. Write down your application ID.
    
	![Image of app ID](images/webapp-get-appid.png)

11. Set your application to be multi-tenanted
	
	This is **required** for 3rd party apps (for example, if you create an application that is intended to run in multiple customers tenant).

	This is **not required** if you create a service that you want to run in your tenant only (for example, if you create an application for your own usage that will only interact with your own data)​

	Click **Properties** > **Yes** > **Save**.

	![Image of multi tenant](images/webapp-edit-multitenant.png)


## Application consent
You need your application to be approved in each tenant where you intend to use it. This is because your application interacts with WDATP application on behalf of your customer.

You (or your customer if you are writing a 3rd party application) need to click the consent link and approve your application. The consent should be done with a user who has admin privileges in the active directory.

Consent link is of the form: 

```
https://login.microsoftonline.com/common/oauth2/authorize?prompt=consent&client_id=00000000-0000-0000-0000-000000000000&response_type=code&sso_reload=true​
```

where 00000000-0000-0000-0000-000000000000​ should be replaced with your Azure application ID


## Get an access token

For more details on AAD token, refer to [AAD tutorial](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-v2-protocols-oauth-client-creds)

### Using C#

>The below code was tested with nuget Microsoft.IdentityModel.Clients.ActiveDirectory 3.19.8

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

### Using PowerShell 

Refer to [Get token using PowerShell](run-advanced-query-sample-powershell.md#get-token)

### Using Python

Refer to [Get token using Python](run-advanced-query-sample-python.md#get-token)

### Using Curl

> [!NOTE]
> The below procedure supposed Curl for Windows is already installed on your computer

- Open a command window
- ​Set CLIENT_ID to your Azure application ID
- Set CLIENT_SECRET to your Azure application secret
- Set TENANT_ID to the Azure tenant ID of the customer that wants to use your application to access WDATP application
- Run the below command:

```
curl -i -X POST -H "Content-Type:application/x-www-form-urlencoded" -d "grant_type=client_credentials" -d "client_id=%CLIENT_ID%" -d "scope=https://securitycenter.onmicrosoft.com/windowsatpservice​/.default" -d "client_secret=%CLIENT_SECRET%" "https://login.microsoftonline.com/%TENANT_ID​%/oauth2/v2.0/token" -k​
```

You will get an answer of the form:

```
{"token_type":"Bearer","expires_in":3599,"ext_expires_in":0,"access_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIn <truncated> aWReH7P0s0tjTBX8wGWqJUdDA"}
```

## Validate the token

Sanity check to make sure you got a correct token:
- Copy/paste into [JWT](https://jwt.ms) the token you get in the previous step in order to decode it
- Validate you get a 'roles' claim with the desired permissions
- In the screenshot below you can see a decoded token acquired from an app with permissions to all of Wdatp's roles:

![Image of token validation](images/webapp-decoded-token.png)

## Use the token to access Windows Defender ATP API

- Choose the API you want to use, for more information, see [Supported Windows Defender ATP APIs](exposed-apis-list.md)
- Set the Authorization header in the Http request you send to "Bearer {token}" (Bearer is the Authorization scheme)
- The Expiration time of the token is 1 hour (you can send more then one request with the same token)

- Example of sending a request to get a list of alerts **using C#** 
	```
	var httpClient = new HttpClient();

	var request = new HttpRequestMessage(HttpMethod.Get, "https://api.securitycenter.windows.com/api/alerts");

	request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);

	var response = await httpClient.SendAsync(request).ConfigureAwait(false);

	// Do something useful with the response
	```

## Related topics
- [Windows Defender ATP APIs](apis-intro.md)
- [Supported Windows Defender ATP APIs](exposed-apis-list.md)
- [Access Windows Defender ATP on behalf of a user](exposed-apis-create-app-nativeapp.md)