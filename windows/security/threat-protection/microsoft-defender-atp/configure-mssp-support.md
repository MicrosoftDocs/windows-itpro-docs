---
title: Configure managed security service provider support

description: Take the necessary steps to configure the MSSP integration with Windows Defender ATP 
 
keywords: managed security service provider, mssp, configure, integration
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
ms.date: 09/03/2018
---

# Configure managed security service provider integration

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-mssp-support-abovefoldlink)
 

[!include[Prerelease information](prerelease.md)]

You'll need to take the following configuration steps to enable the managed security service provider (MSSP) integration.

>[!NOTE]
>The following terms are used in this article to distinguish between the service provider and service consumer:
> - MSSPs: Security organizations that offer to monitor and manage security devices for an organization.
> - MSSP customers: Organizations that engage the services of MSSPs.

The integration will allow MSSPs to take the following actions:

- Get access to MSSP customer's Windows Defender Security Center portal
- Get email notifications, and 
- Fetch alerts through security information and event management (SIEM) tools

Before MSSPs can take these actions, the MSSP customer will need to grant access to their Windows Defender ATP tenant so that the MSSP can access the portal. 
 

Typically, MSSP customers take the initial configuration steps to grant MSSPs access to their Windows Defender Security Central tenant. After access is granted, other configuration steps can be done by either the MSSP customer or the MSSP.


In general, the following configuration steps need to be taken:


- **Grant the MSSP access to Windows Defender Security Center** <br>
This action needs to be done by the MSSP customer. It grants the MSSP access to the MSSP customer's Windows Defender ATP tenant.
 

- **Configure alert notifications sent to MSSPs** <br>
This action can be taken by either the MSSP customer or MSSP. This lets the MSSPs know what alerts they need to address for the MSSP customer.

- **Fetch alerts from MSSP customer's tenant into SIEM system** <br> 
This action is taken by the MSSP. It allows MSSPs to fetch alerts in SIEM tools.

- **Fetch alerts from MSSP customer's tenant using APIs** <br>
This action is taken by the MSSP. It allows MSSPs to fetch alerts using APIs.


## Grant the MSSP access to the portal


>[!NOTE] 
> These set of steps are directed towards the MSSP customer. <br>
> Access to the portal can only be done by the MSSP customer.

As a MSSP customer, you'll need to take the following configuration steps to grant the MSSP access to Windows Defender Security Center. 
 

Authentication and authorization of the MSSP user is built on top of Azure Active Directory (Azure AD) B2B functionality. 

You'll need to take the following 2 steps:
- Add MSSP user to your tenant as a guest user

- Grant MSSP user access to Windows Defender Security Center
 

### Add MSSP user to your tenant as a guest user
Add a user who is a member of the MSSP tenant to your tenant as a guest user.

To grant portal access to the MSSP, you must add the MSSP user to your Azure AD as a guest user. For more information, see [Add Azure Active Directory B2B collaboration users in the Azure portal](https://docs.microsoft.com/azure/active-directory/b2b/add-users-administrator).
 
### Grant MSSP user access to Windows Defender Security Center
Grant the guest user access and permissions to your Windows Defender Security Center tenant.

Granting access to guest user is done the same way as granting access to a user who is a member of your tenant. 

If you're using basic permissions to access the portal, the guest user must be assigned a Security Administrator role in **your** tenant. For more information, see [Use basic permissions to access the portal](basic-permissions-windows-defender-advanced-threat-protection.md).

If you're using role-based access control (RBAC), the guest user must be to added to the appropriate group or groups in **your** tenant. Fore more information on RBAC in Windows Defender ATP, see [Manage portal access using RBAC](rbac-windows-defender-advanced-threat-protection.md).
 

>[!NOTE]
>There is no difference between the Member user and Guest user roles from RBAC perspective.

It is recommended that groups are created for MSSPs to make authorization access more manageable.

As a MSSP customer, you can always remove or modify the permissions granted to the MSSP by updating the Azure AD user groups. 

 
##  Access the Windows Defender Security Center MSSP customer portal

>[!NOTE] 
>These set of steps are directed towards the MSSP. 

By default, MSSP customers access their Windows Defender Security Center tenant through the following URL: `https://securitycenter.windows.com`.
 

MSSPs however, will need to use a tenant-specific URL in the following format:  `https://securitycenter.windows.com?tid=customer_tenant_id` to access the MSSP customer portal. 

In general, MSSPs will need to be added to each of the MSSP customer's Azure AD that they intend to manage.


Use the following steps to obtain the MSSP customer tenant ID and then use the ID to access the tenant-specific URL:

1. As an MSSP, login to Azure AD with your credentials. 

2. Switch directory to the MSSP customer's tenant.

3.  Select **Azure Active Directory > Properties**. You'll find the tenant ID in the Directory ID field. 

4. Access the MSSP customer portal by replacing the `customer_tenant_id` value in the following URL: `https://securitycenter.windows.com?tid=customer_tenant_id`.

## Configure alert notifications that are sent to MSSPs 

>[!NOTE]
>This step can be done by either the MSSP customer or MSSP. MSSPs must be granted the appropriate permissions to configure this on behalf of the MSSP customer.

After access the portal is granted, alert notification rules can to be created so that emails are sent to MSSPs when alerts associated with the tenant are created and set conditions are met.

 
For more information, see [Create rules for alert notifications](configure-email-notifications-windows-defender-advanced-threat-protection.md#create-rules-for-alert-notifications).
 

These check boxes must be checked:
   - **Include organization name** - The customer name will be added to email notifications
   - **Include tenant-specific portal link** - Alert link URL will have tenant specific parameter (tid=target_tenant_id) that allows direct access to target tenant portal


## Fetch alerts from MSSP customer's tenant into the SIEM system

>[!NOTE]
>This action is taken by the MSSP.


To fetch alerts into your SIEM system you'll need to take the following steps:

Step 1: Create a third-party application

Step 2: Get access and refresh tokens from your customer's tenant
 
Step 3: Whitelist your application on Windows Defender Security Center
 



### Step 1: Create an application in Azure Active Directory (Azure AD)
 
You'll need to create an application and grant it permissions to fetch alerts from your customer's Windows Defender ATP tenant.
 

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

 
### Step 3: Whitelist your application on Windows Defender Security Center
You'll need to whitelist the application you created in Windows Defender Security Center.
 

You'll need to have **Manage portal system settings** permission to whitelist the application. Otherwise, you'll need to request your customer to whitelist the application for you.

1. Go to `https://securitycenter.windows.com?tid=<customer_tenant_id>` (replace \<customer_tenant_id\> with the customer's tenant ID.

2. Click **Settings** > **SIEM**. 

3. Select the **MSSP** tab.

4. Enter the **Application ID** from the first step and your **Tenant ID**.

5. Click **Authorize application**. 

 
You can now download the relevant configuration file for your SIEM and connect to the Windows Defender ATP API. For more information see, [Pull alerts to your SIEM tools](configure-siem-windows-defender-advanced-threat-protection.md).
 

- In the ArcSight configuration file / Splunk Authentication Properties file  you will have to write your application key manually by settings the secret value.
- Instead of acquiring a refresh token in the portal, use the script from the previous step to acquire a refresh token (or acquire it by other means).

## Fetch alerts from MSSP customer's tenant using APIs
 
For information on how to fetch alerts using REST API, see [Pull alerts using REST API](pull-alerts-using-rest-api-windows-defender-advanced-threat-protection.md).

## Related topics
- [Use basic permissions to access the portal](basic-permissions-windows-defender-advanced-threat-protection.md)
- [Manage portal access using RBAC](rbac-windows-defender-advanced-threat-protection.md) 
- [Pull alerts to your SIEM tools](configure-siem-windows-defender-advanced-threat-protection.md)
- [Pull alerts using REST API](pull-alerts-using-rest-api-windows-defender-advanced-threat-protection.md)
 

