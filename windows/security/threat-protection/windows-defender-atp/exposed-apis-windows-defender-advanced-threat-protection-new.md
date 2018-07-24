---
title: Use the Windows Defender Advanced Threat Protection APIs  
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
ms.date: 10/23/2017
---

# Use the Windows Defender ATP APIs 

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)



>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

Windows Defender ATP exposes much of the available data and actions using a set of programmatic APIs. Those APIs will enable you to automate workflows and innovate based on Windows Defender ATP capabilities. The API access requires OAuth2.0 authentication. For more information, see [OAuth 2.0 Authorization Code Flow](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-v2-protocols-oauth-code).

In general, you’ll need to take the following steps to use the APIs:
-	Create an app
-	Get an access token
-	Use Windows Defender ATP API

### Before you begin
Before using the APIs, you’ll need to create an app that you’ll use to authenticate against the graph. You’ll need to create a web app to use for the adhoc queries. 

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

	- In order to send telemetry events to WDATP, check 'Write timeline events' permission
	- In order to send TI events to WDATP, check 'Read and write IOCs belonging to the app' permission
	- In order to run advanced queries in WDATP, check 'Run advanced queries' permission

7. Click **Done**

    ![Image of add permissions completion](images/webapp-add-permission-end.png)

8. Click **Keys** and type a key name and click **Save**.

	**Important**: After you save, **copy the key value**. You won't be able to retrieve after you leave!

    ![Image of create app key](images/webapp-create-key.png)

9. Write down your application ID.
    
	![Image of app ID](images/webapp-get-appid.png)

9. Set your application to be multi-tenanted
	
	This is **required** for 3rd party apps (i.e., if you create an application that is intended to run in multiple customers tenant).
	This is **not required** if you create a service that you want to run in your tenant only (i.e., if you create an application for your own usage that will only interact with your own data)​

	Click **Properties** > **Yes** > **Save**.

	![Image of multi tenant](images/webapp-edit-multitenant.png)
