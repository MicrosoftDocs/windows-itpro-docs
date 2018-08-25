---
title: Configure managed security service provider support
description: Take the necessary steps to configure the MSSP integration with Windows Defender ATP 
keywords: managed security service provider, mssp, configure, integration
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 09/03/2018
---

# Configure managed security service provider integration

**Applies to:**
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-mssp-support-abovefoldlink)

[!include[Prerelease information](prerelease.md)]

You'll need to take the following configuration steps to enable the managed security service provider (MSSP) integration.

>[!NOTE]
>The following terms are used in this article to distinguish between the service provider and service consumer:
> - MSSPs: Security organizations that offer to monitor and manage security devices for an organization.
> - MSSP customers: Organizations that engage the services of MSSPs.

The integration will allow MSSPs to take the following actions:
- Get access to MSSP customer’s Windows Defender Security Center portal
- Get email notifications, and 
- Fetch alerts through security information and event management (SIEM) tools

## Initial steps
Before MSSPs can take these actions, the MSSP customer will need to grant access to their Windows Defender ATP tenant so that the MSSP can access the portal. 

Typically, MSSP customers take the initial configuration steps to grant MSSPs access to their Windows Defender Security Central tenant. After access is granted, , other configuration steps can be done by either the MSSP customer or the MSSP.



In general, the following configuration steps need to be taken

- **Action**: Configure managed service provider user access to the Windows Defender Security Center portal. <br> **Taken by**:  MSSP customer

- **Action**: Configure alert notifications sent to MSSPs <br> **Taken by**:  MSSP customer or MSSP

- **Action**: Fetch alerts from MSSP customer's tenant into SIEM system <br> **Taken by**:  MSSP

- **Action**: [LZ]Fetch data using WD ATP API's <br> **Taken by**:  MSSP


## Configure managed service provider user access to the portal


>[!NOTE] 
>These set of steps are directed towards the MSSP customer. Access to the portal can can only be done by the MSSP customer.

As a MSSP customer, you'll need to take the following configuration steps to grant the MSSP access to Windows Defender Security Center. 

Authentication and authorization of the MSSP user is built on top of Azure Active Directory (Azure AD) B2B functionality. 

To grant portal access to the MSSP, you must add the MSSP user to your Azure AD as a guest user. For more information, see [Add Azure Active Directory B2B collaboration users in the Azure portal](https://docs.microsoft.com/azure/active-directory/b2b/add-users-administrator).


Adding a guest user is done in a similar way to regular users. They must be added to a corresponding group.

For role-based access control (RBAC) version 1 customers: Guest users must be assigned to directory roles (security administrator or security reader).

For role-based access control (RBAC) version 2 customers: Guest users must be added to corresponding group or groups.

Fore more information on RBAC in Windows Defender ATP, see [Manage portal access using RBAC](rbac-windows-defender-advanced-threat-protection).

>[!NOTE]
> There is no difference between the Member user and Guest user roles from RBAC perspective.


It is recommended that groups are created for MSSPs to make authorization access more manageable.

As a MSSP customer, you can always remove or modify the permissions granted to the MSSP by updating the Azure AD user groups. 

##  Access the Windows Defender Security Center MSSP customer portal

By default, MSSP customers access their Windows Defender Security Center tenant through the following URL: `https://securitycenter.windows.com`.


MSSPs however, will need to use a tenant-specific URL in the following format:  `https://securitycenter.windows.com?tid=target_tenant_id` to access the MSSP customer portal. 

In general, MSSPs will need to be added to each of the MSSP customer's Azure AD that they intend to manage.


Use the following steps to obtain the MSSP customer tenant ID and then use the ID to access the tenant-specific URL:

1. As an MSSP, login to Azure AD with your credentials. 

2. Switch directory to the MSSP customer's tenant.

3.  Select** Azure Active Directory > Properties**. You'll find the tenant ID in the Directory ID field. 

4. Access the MSSP customer portal by replacing the `tenant_id` value in the following URL: `https://securitycenter.windows.com?tid=target_tenant_id`.

## Configure alert notifications that are sent to MSSPs 

>[!NOTE]
>This step can be done by either the MSSP customer or MSSP. MSSPs must be granted the appropriate permissions to configure this on behalf of the MSSP customer.

After access the portal is granted, alert notification rules can to be created so that emails are sent to MSSPs when alerts associated with the tenant are created and set conditions are met.

For more information, see [Create rules for alert notifications](configure-email-notifications-windows-defender-advanced-threat-protection.md#create-rules-for-alert-notifications).

These check boxes must be checked:
    - **Include organization name** - The customer name will be added to email notifications
    - **Include tenant-specific portal link** - Alert link URL will have tenant specific parameter (tid=target_tenant_id) that allows direct access to target tenant portal


## Fetch alerts from customer tenants into mssp SIEM system
To fetch alerts into your SIEM system you'll need to take the following steps:

Step 1: Create a third-party application <br>
Step 2: Get access and refresh tokens from your customer's tenant <br>
Step 3: Whitelist your application on Windows Defender Security Center 


## Customer steps
## Step 1: Create an application in Azure Active Directory (Azure AD)
You'll need to create an application and grant it permissions to fetch alerts from your customer's Windows Defender ATP tenant.

1. Sign in to the [Azure AD portal](https://aad.portal.azure.com/).

2. Select **Azure Active Directory** > **App registrations**.

3. Click **New application registration**.

4. Specify the following values:

    - Name: \<Tenant_name\> SIEM MSSP Connector (replace Tenant_name with the tenant display name)
    - Application type: Web app / API
    - Sign-on URL: `https://SiemMsspConnector`

5. Click **Create**. The application is displayed in the list of applications you own.

6. Select the application, then click **Settings** > **Properties**.

7. Copy the value from the **Application ID** field.

8. Change the value in the **App ID URI** to: `https://<domain_name>/SiemMsspConnector` (replace \<domain_name\> with the tenant name.

9. Ensure that the **Multi-tenanted** field is set to **Yes**.

10. In the **Settings** panel, select **Reply URLs** and add the following URL: `https://localhost:44300/wdatpconnector`. 

11. Click **Save**.

12. Select **Keys** and specify the following values:

    - Description: Enter a description for the key.
    - Expires: Select **In 1 year**

13. Click **Save**. Save the value is a safe place, you'll need this 

## Step 2: Get access and refresh tokens from your customer's tenant
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

    - Replace \<client_id\> with the Application ID you got from the previous step.
    - Replace \<app_key\> with the application key you created from the previous step.
    - Replace \<customer_tenant_id\> with your customer's tenant ID. 

7. You'll be asked to provide your credentials and consent. Ignore the page redirect.

8. In the PowerShell window, you'll receive an access token and a refresh token. Save the refresh token to configure your SIEM connector. 

## Step 3: Whitelist your application on Windows Defender Security Center
You'll need to whitelist the application you created in Windows Defender Security Center.

You'll need to have Manage portal system settings permission to whitelist the application. Otherwise, you'll need to request your customer to whitelist the application for you.

1. Go to `https://securitycenter.windows.com?tid=<customer_tenant_id>` (replace \<customer_tenant_id\> with the customer's tenant ID.

2. Click **Settings** > **SIEM**. 

3. Select the **MSSP** tab.

4. Enter the Application ID from the first step and your Tenant ID.

5. Click **Authorize application**. 

You can now download the relevant configuration file for your SIEM and connect to the Windows Defender ATP API. For more information see, [Pull alerts to your SIEM tools](configure-siem-windows-defender-advanced-threat-protection.md).

- In the ArcSight configuration file / Splunk Authentication Properties file – you will have to write your application key manually by settings the secret value.
- Instead of acquiring a refresh token in the portal, use the script from the previous step to acquire a refresh token (or acquire it by other means).
