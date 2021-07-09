---
title: Windows Hello for Business Deployment Known Issues
description: A Troubleshooting Guide for Known Windows Hello for Business Deployment Issues
keywords: identity, PIN, biometric, Hello, passport
params: siblings_only
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: mapalko
ms.author: mapalko
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 05/03/2021
ms.reviewer: 
---
# Windows Hello for Business Known Deployment Issues

The content of this article is to help troubleshoot and workaround known deployment issues for Windows Hello for Business. Each issue below will describe the applicable deployment type Windows versions.

## PIN Reset on Azure AD Join Devices Fails with "We can't open that page right now" error

Applies to:

- Azure AD joined deployments
- Windows 10, version 1803 and later

PIN reset on Azure AD joined devices uses a flow called web sign-in to authenticate the user above lock. Web sign in only allows navigation to specific domains. If it attempts to navigate to a domain that is not allowed it will shows a page with the "We can't open that page right now" error message.

### Identifying Azure AD joined PIN Reset Allowed Domains Issue

The user can launch the PIN reset flow from above lock using the "I forgot my PIN" link in the PIN credential provider. Selecting this link will launch a full screen UI for the PIN experience on Azure AD Join devices. Typically, this UI will display an Azure authentication server page where the user will authenticate using Azure AD credentials and complete multi-factor authentication.

In federated environments authentication may be configured to route to AD FS or a third party identity provider. If the PIN reset flow is launched and attempts to navigate to a federated identity provider server page, it will fail and display the "We can't open that page right now" error if the domain for the server page is not included in an allow list.

If you are a customer of Azure US Government cloud, PIN reset will also attempt to navigate to a domain that is not included in the default allow list. This results in the "We can't open that page right now" being shown.

### Resolving Azure AD joined PIN Reset Allowed Domains Issue

To resolve this error, a list of allowed domains for PIN reset can be configured using the [ConfigureWebSignInAllowedUrls](/windows/client-management/mdm/policy-csp-authentication#authentication-configurewebsigninallowedurls) policy. For information on how to configure this policy, see [PIN Reset - Configure Web Sign-in Allowed URLs for Third Party Identity Providers on Azure AD Joined Devices](hello-feature-pin-reset.md#configure-web-sign-in-allowed-urls-for-third-party-identity-providers-on-azure-ad-joined-devices).

## Hybrid Key Trust Logon Broken Due to User Public Key Deletion

Applies to:

- Hybrid key trust deployments
- Windows Server 2016, builds 14393.3930 to 14393.4048
- Windows Server 2019, builds 17763.1457 to 17763.1613

In Hybrid key trust deployments with domain controllers running certain builds of Windows Server 2016 and Windows Server 2019, the user's Windows Hello for Business key is deleted after they sign-in. Subsequent sign-ins will fail until the user's key is synced during the next Azure AD Connect delta sync cycle.

### Identifying User Public Key Deletion Issue

After the user provisions a Windows Hello for Business credential in a hybrid key trust environment, the key must sync from Azure AD to AD during an Azure AD Connect sync cycle. The user's public key will be written to the msDS-KeyCredentialLink attribute of the user object.

Before the user's Windows Hello for Business key is synced, sign-in's with Windows Hello for Business will fail with the error message, *"That option is temporarily unavailable. For now, please use a different method to sign in."* After the sync is successful, the user should be able to login and unlock with their PIN or enrolled biometrics.

In environments impacted with this issue, after the first sign-in with Windows Hello for Business after provisioning is completed, the next sign-in attempt will fail. In environments where domain controllers are running a mix of builds, only some may be impacted by this issue and subsequent logon attempts may be sent different domain controllers. This may result in the sign-in failures appearing to be intermittent.

After the initial logon attempt, the user's Windows Hello for Business public key is being deleted from the msDS-KeyCredentialLink attribute. This can be verified by querying a user's msDS-KeyCredentialLink attribute before and after sign-in. The msDS-KeyCredentialLink can be queried in AD using [Get-ADUser](/powershell/module/addsadministration/get-aduser) and specifying *msds-keycredentiallink* for the *-Properties* parameter.

### Resolving User Public Key Deletion Issue

To resolve this behavior, upgrade Windows Server 2016 and 2019 domain controllers to with the latest patches. For Windows Server 2016, this behavior is fixed in build 14393.4104 ([KB4593226](https://support.microsoft.com/help/4593226)) and later. For Windows Server 2019, this behavior is fixed in build 17763.1637 ([KB4592440](https://support.microsoft.com/help/4592440)).

## Azure AD Joined Device Access to On-Premises Resources Using Key Trust and Third-Party Certificate Authority (CA)

Applies to:

- Azure AD joined key trust deployments
- Third-party certificate authority (CA) issuing domain controller certificates

Windows Hello for Business uses smart card based authentication for many operations. Smart card has special guidelines when using a third-party CA for certificate issuance, some of which apply to the domain controllers. Not all Windows Hello for Business deployment types require these configurations. Accessing on-premises resources from an Azure AD Joined device does require special configuration when using a third-party CA to issue domain controller certificates.

For more information, read [Guidelines for enabling smart card logon with third-party certification authorities](
/troubleshoot/windows-server/windows-security/enabling-smart-card-logon-third-party-certification-authorities).

### Identifying On-premises Resource Access Issues with Third-Party CAs

This issue can be identified using network traces or Kerberos logging from the client. In the network trace, the client will fail to place a TGS_REQ request when a user attempts to access a resource. On the client, this can be observed in the Kerberos operation event log under **Application and Services/Microsoft/Windows/Security-Kerberos/Operational**. These logs are default disabled. The failure event for this case will include the following information:

    Log Name:      Microsoft-Windows-Kerberos/Operational
    Source:        Microsoft-Windows-Security-Kerberos
    Event ID:      107
    GUID:          {98e6cfcb-ee0a-41e0-a57b-622d4e1b30b1} 
    Task Category: None
    Level:         Error
    Keywords:      
    User:          SYSTEM
    Description:

    The Kerberos client received a KDC certificate that does not have a matched domain name.
    
    Expected Domain Name: ad.contoso.com
    Error Code: 0xC000006D

### Resolving On-premises Resource Access Issue with Third-Party CAs

To resolve this issue, domain controller certificates need to be updated so the certificate subject contains directory path of the server object (distinguished name).
Example Subject: CN=DC1 OU=Domain Controller, DC=ad, DC=contoso, DC=com

Alternatively, you can set the subject alternative name (SAN) of the domain controller certificate to contain the server object's fully qualified domain name and the NETBIOS name of the domain.
Example Subject Alternative Name:
dns=dc1.ad.contoso.com
dns=ad.contoso.com
dns=ad

## Key Trust Authentication Broken for Windows Server 2019

Applies to:

- Windows Server 2019
- Hybrid key trust deployments
- On-premises key trust deployments

Domain controllers running early versions of Windows Server 2019 have an issue that prevents key trust authentication from working properly. Networks traces report KDC_ERR_CLIENT_NAME_MISMATCH.

### Identifying Server 2019 Key Trust Authentication Issue

On the client, authentication with Windows Hello for Business will fail with the error message, *"That option is temporarily unavailable. For now, please use a different method to sign in."*

This error is usually presented on hybrid Azure AD joined devices in key trust deployments after Windows Hello for Business has been provisioned but before a user's key has synced from Azure AD to AD. If a user's key has been synced from Azure AD and the msDS-keycredentiallink attribute on the user object in AD has been populated for NGC, then it is possible that this error case is occurring.

The other indicator of this failure case can be identified using network traces. If network traces are captured for a key trust sign-in event, the traces will show kerberos failing with the error KDC_ERR_CLIENT_NAME_MISMATCH.

### Resolving Server 2019 Key Trust Authentication Issue

This issue was fixed in Windows Server 2019, build 17763.316 ([KB4487044](https://support.microsoft.com/help/4487044/windows-10-update-kb4487044)). Upgrade all Windows Server 2019 domain controllers to Windows Server 2019, build 17763.316 or newer to resolve this behavior.

## Certificate Trust Provisioning with AD FS Broken on Windows Server 2019

Applies to:

- Windows Server 2019
- Hybrid certificate trust deployments
- On-premises certificate trust deployments

AD FS running on Windows Server 2019 fails to complete device authentication properly due to an invalid check of incoming scopes in the request. Device authentication to AD FS is a requirement for Windows Hello for Business to enroll a certificate using AD FS. The client will block Windows Hello for Business provisioning until this authentication is successful.

### Identifying Certificate Trust with AD FS 2019 Enrollment Issue

The provisioning experience for Windows Hello for Business will launch if a set of prerequisite checks done by the client are successful. The result of the provisioningAdmin checks is available in event logs under Microsoft-Windows-User Device Registration. If provisioning is blocked because device authentication has not successfully occurred, there will be an event ID 362 in the logs that states that *User has successfully authenticated to the enterprise STS: No*.

    Log Name:      Microsoft-Windows-User Device Registration/Admin
    Source:        Microsoft-Windows-User Device Registration
    Date:          <Date and time>
    Event ID:      362
    Task Category: None
    Level:         Warning
    Keywords:     
    User:          <User SID>
    Computer:      <Computer name>
    Description:
    Windows Hello for Business provisioning will not be launched.
    Device is AAD joined ( AADJ or DJ++ ): Yes
    User has logged on with AAD credentials: Yes
    Windows Hello for Business policy is enabled: Yes
    Windows Hello for Business post-logon provisioning is enabled: Yes
    Local computer meets Windows hello for business hardware requirements: Yes
    User is not connected to the machine via Remote Desktop: Yes
    User certificate for on premise auth policy is enabled: Yes
    Enterprise user logon certificate enrollment endpoint is ready: Not Tested
    Enterprise user logon certificate template is : No ( 1 : StateNoPolicy ) 
    User has successfully authenticated to the enterprise STS: No
    Certificate enrollment method: enrollment authority
    See https://go.microsoft.com/fwlink/?linkid=832647 for more details.

If a device has recently been joined to a domain, then there may be a delay before the device authentication occurs. If the failing state of this prerequisite check persists, then it can indicate an issue with the AD FS configuration.

If this AD FS scope issue is present, event logs on the AD FS server will indicate an authentication failure from the client. This error will be logged in event logs under AD FS/Admin as event ID 1021 and the event will specify that the client is forbidden access to resource 'http<span>://schemas.microsoft.com/ws/2009/12/identityserver/selfscope</span>' with scope 'ugs':

    Log Name:      AD FS/Admin
    Source:        AD FS
    Date:          <Date and time>
    Event ID:      1021
    Task Category: None
    Level:         Error
    Keywords:      AD FS
    User:          <ADFS service Account>
    Computer:      <Date and time>
    Description:
    Encountered error during OAuth token request.
    Additional Data
    Exception details:
    Microsoft.IdentityServer.Web.Protocols.OAuth.Exceptions.OAuthUnauthorizedClientException: MSIS9368: Received invalid OAuth request. The client '38aa3b87-a06d-4817-b275-7a316988d93b' is forbidden to access the resource 'http://schemas.microsoft.com/ws/2009/12/identityserver/selfscope' with scope 'ugs'.
       at Microsoft.IdentityServer.Web.Protocols.OAuth.OAuthProtocolContext.ValidateScopes(String scopeParameter, String clientId, String relyingPartyId)
       at Microsoft.IdentityServer.Web.Protocols.OAuth.OAuthToken.OAuthJWTBearerRequestContext.ValidateCore()

### Resolving Certificate Trust with AD FS 2019 Enrollment Issue

This issue is fixed in Windows Server, version 1903 and later. For Windows Server 2019, this issue can be remediated by adding the ugs scope manually.

1. Launch AD FS management console. Browse to "Services > Scope Descriptions".
2. Right click "Scope Descriptions" and select "Add Scope Description".
3. Under name type "ugs" and Click Apply > OK.
4. Launch PowerShell as an administrator.
5. Get the ObjectIdentifier of the application permission with the ClientRoleIdentifier parameter equal to "38aa3b87-a06d-4817-b275-7a316988d93b":

``` PowerShell
(Get-AdfsApplicationPermission -ServerRoleIdentifiers 'http://schemas.microsoft.com/ws/2009/12/identityserver/selfscope' | ?{ $_.ClientRoleIdentifier -eq '38aa3b87-a06d-4817-b275-7a316988d93b' }).ObjectIdentifier
```

6. Execute the command `Set-AdfsApplicationPermission -TargetIdentifier <ObjectIdentifier from step 5> -AddScope 'ugs'`.
7. Restart the AD FS service.
8. On the client: Restart the client. User should be prompted to provision Windows Hello for Business.