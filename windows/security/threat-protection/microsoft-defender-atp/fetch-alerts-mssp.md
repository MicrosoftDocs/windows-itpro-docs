---
title: Fetch alerts from MSSP customer tenant
description: Learn how to fetch alerts from a customer tenant
keywords: managed security service provider, mssp, configure, integration
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

# Fetch alerts from MSSP customer tenant

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)

>Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-mssp-support-abovefoldlink)

>[!NOTE]
>This action is taken by the MSSP.


There are two ways you can fetch alerts:
- Using the SIEM method
- Using APIs

## Fetch alerts into your SIEM

To fetch alerts into your SIEM system, you'll need to take the following steps:

Step 1: Create a third-party application

Step 2: Get access and refresh tokens from your customer's tenant
 
Step 3: allow your application on Microsoft Defender Security Center
 
### Step 1: Create an application in Azure Active Directory (Azure AD)
 
You'll need to create an application and grant it permissions to fetch alerts from your customer's Microsoft Defender for Endpoint tenant.

1. Sign in to the [Azure AD portal](https://aad.portal.azure.com/).

2. Select **Azure Active Directory** > **App registrations**.
 
3. Click **New registration**.

4. Specify the following values:

    - Name: \<Tenant_name\> SIEM MSSP Connector (replace Tenant_name with the tenant display name)
 
    - Supported account types: Account in this organizational directory only 
    - Redirect URI: Select Web and type `https://<domain_name>/SiemMsspConnector`(replace <domain_name> with the tenant name)

5. Click **Register**. The application is displayed in the list of applications you own.

6. Select the application, then click **Overview**.

7. Copy the value from the **Application (client) ID** field to a safe place, you will need this in the next step.

8. Select **Certificate & secrets** in the new application panel.

9. Click **New client secret**.

    - Description: Enter a description for the key.
    - Expires: Select **In 1 year**

 
10. Click **Add**, copy the value of the client secret to a safe place, you will need this in the next step.
 

### Step 2: Get access and refresh tokens from your customer's tenant
This section guides you on how to use a PowerShell script to get the tokens from your customer's tenant. This script uses the application from the previous step to get the access and refresh tokens using the OAuth Authorization Code Flow.

After providing your credentials, you'll need to grant consent to the application so that the application is provisioned in the customer's tenant.


1. Create a new folder and name it: `MsspTokensAcquisition`.

2. Download the [LoginBrowser.psm1 module](https://github.com/shawntabrizi/Microsoft-Authentication-with-PowerShell-and-MSAL/blob/master/Authorization%20Code%20Grant%20Flow/LoginBrowser.psm1) and save it in the `MsspTokensAcquisition` folder.

    >[!NOTE]
    >In line 30, replace `authorzationUrl` with `authorizationUrl`.

3. Create a file with the following content and save it with the name `MsspTokensAcquisition.ps1` in the folder:
    ```
    param (
        [Parameter(Mandatory=$true)][string]$clientId,
        [Parameter(Mandatory=$true)][string]$secret,
        [Parameter(Mandatory=$true)][string]$tenantId
    )
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

    # Load our Login Browser Function
    Import-Module .\LoginBrowser.psm1

    # Configuration parameters
    $login = "https://login.microsoftonline.com"
    $redirectUri = "https://SiemMsspConnector"
    $resourceId = "https://graph.windows.net"

    Write-Host 'Prompt the user for his credentials, to get an authorization code'
    $authorizationUrl = ("{0}/{1}/oauth2/authorize?prompt=select_account&response_type=code&client_id={2}&redirect_uri={3}&resource={4}" -f
                        $login, $tenantId, $clientId, $redirectUri, $resourceId)
    Write-Host "authorzationUrl: $authorizationUrl"

    # Fake a proper endpoint for the Redirect URI
    $code = LoginBrowser $authorizationUrl $redirectUri

    # Acquire token using the authorization code

    $Body = @{
        grant_type = 'authorization_code'
        client_id = $clientId
        code = $code
        redirect_uri = $redirectUri
        resource = $resourceId
        client_secret = $secret
    }

    $tokenEndpoint = "$login/$tenantId/oauth2/token?"
    $Response = Invoke-RestMethod -Method Post -Uri $tokenEndpoint -Body $Body
    $token = $Response.access_token
    $refreshToken= $Response.refresh_token

    Write-Host " -----------------------------------  TOKEN ---------------------------------- "
    Write-Host $token

    Write-Host " -----------------------------------  REFRESH TOKEN ---------------------------------- "
    Write-Host $refreshToken 
    ```
4. Open an elevated PowerShell command prompt in the `MsspTokensAcquisition` folder.

5. Run the following command: 
   `Set-ExecutionPolicy -ExecutionPolicy Bypass`

6. Enter the following commands: `.\MsspTokensAcquisition.ps1 -clientId <client_id> -secret <app_key> -tenantId <customer_tenant_id>`
 
    - Replace \<client_id\> with the **Application (client) ID** you got from the previous step.
    - Replace \<app_key\> with the **Client Secret** you created from the previous step.
    - Replace \<customer_tenant_id\> with your customer's **Tenant ID**. 
 

7. You'll be asked to provide your credentials and consent. Ignore the page redirect.

8. In the PowerShell window, you'll receive an access token and a refresh token. Save the refresh token to configure your SIEM connector. 
 
### Step 3: Allow your application on Microsoft Defender Security Center
You'll need to allow the application you created in Microsoft Defender Security Center.
 
You'll need to have **Manage portal system settings** permission to allow the application. Otherwise, you'll need to request your customer to allow the application for you.

1. Go to `https://securitycenter.windows.com?tid=<customer_tenant_id>` (replace \<customer_tenant_id\> with the customer's tenant ID.

2. Click **Settings** > **SIEM**. 

3. Select the **MSSP** tab.

4. Enter the **Application ID** from the first step and your **Tenant ID**.

5. Click **Authorize application**. 

 
You can now download the relevant configuration file for your SIEM and connect to the Defender for Endpoint API. For more information, see, [Pull alerts to your SIEM tools](configure-siem.md).
 

- In the ArcSight configuration file / Splunk Authentication Properties file, write your application key manually by setting the secret value.
- Instead of acquiring a refresh token in the portal, use the script from the previous step to acquire a refresh token (or acquire it by other means).

## Fetch alerts from MSSP customer's tenant using APIs
 
For information on how to fetch alerts using REST API, see [Pull alerts using REST API](pull-alerts-using-rest-api.md).


## See also
- [Grant MSSP access to the portal](grant-mssp-access.md)
- [Access the MSSP customer portal](access-mssp-portal.md)
- [Configure alert notifications](configure-mssp-notifications.md)
