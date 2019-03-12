---
title: Advanced Hunting API
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
ms.date: 09/24/2018
---

# Windows Defender ATP API - Hello Word 
**Applies to:**
- Windows Defender Advanced Threat Protection (Windows Defender ATP)


## Get Alerts using a simple PowerShell script

### How long it takes to go through this example?
It only takes 5 minutes done in two steps:
- Application registration
- Use examples: only requires copy/paste of a short PowerShell script

### Do I need a permission to connect?
For the App registration stage, you must have a Global administrator role in your Azure Active Directory (Azure AD) tenant.

### Step 1 - Create an App in Azure Active Directory

1.	Log on to [Azure](https://portal.azure.com) With your Global administrator user.

2.	Navigate to **Azure Active Directory** > **App registrations** > **New application registration**. 

    ![Image of Microsoft Azure and navigation to application registration](images/atp-azure-new-app.png)

3.	In the registration form, enter the following information then click **Create**.

    - **Name:** Choose your own name. 
    - **Application type:** Web app / API
    - **Redirect URI:** `https://127.0.0.1`

	![Image of Create application window](images/webapp-create.png)

4. Allow to App to access Windows Defender ATP and assign it 'Read all alerts' permission:

	- Click **Settings** > **Required permissions** > **Add**.

	![Image of new app in Azure](images/webapp-add-permission.png)

	- Click **Select an API** > **WindowsDefenderATP**, then click **Select**.

	**Note**: WindowsDefenderATP does not appear in the original list. You need to start writing its name in the text box to see it appear.

	![Image of API access and API selection](images/webapp-add-permission-2.png)

	- Click **Select permissions** > **Read all alerts** > **Select**.

	![Image of API access and API selection](images/webapp-add-permission-readalerts.png)

	- Click **Done**

	![Image of add permissions completion](images/webapp-add-permission-end.png)

	- Click **Grant permissions**

	**Note**: Every time you add permission you must click on **Grant permissions**.

	![Image of Grant permissions](images/webapp-grant-permissions.png)

5. Create a key for your App:

	- Click **Keys**, type a key name and click **Save**.

	![Image of create app key](images/webapp-create-key.png)

6. Write down your App ID and your Tenant ID:

	- App ID: 

	![Image of create app key](images/webapp-app-id1.png)

	- Tenant ID: Navigate to **Azure Active Directory** > **Properties**

	![Image of create app key](images/api-tenant-id.png)


Done! You have successfully registered an application! 

### Step 2 - Get a token using the App and use this token to access the API.

-	Copy the script below to PowerShell ISE or to a text editor, and save as "**Get-Token.ps1**"
-	Running this script will generate a token and will save it in the working folder under the name "**Latest-token.txt**".

```
# That code gets the App Context Token and save it to a file named "Latest-token.txt" under the current directory
# Paste below your Tenant ID, App ID and App Secret (App key).
 
$tenantId = '' ### Paste your tenant ID here
$appId = '' ### Paste your app ID here
$appSecret = '' ### Paste your app key here
 
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

- Sanity Check:
In your browser go to: https://jwt.ms/
Copy the token (the content of the Latest-token.txt file).
Paste in the top box.
Look for the "roles" section. Find the Alert.Read.All role.

![Image jwt.ms](images/api-jwt-ms.png)

## Related topic
- [Windows Defender ATP APIs](exposed-apis-list.md)
- [Access Windows Defender ATP with application context](exposed-apis-create-app-webapp.md)
- [Access Windows Defender ATP with user context](exposed-apis-create-app-nativeapp.md)