---
title: Windows Hello for Business known deployment issues
description: This article is a troubleshooting guide for known Windows Hello for Business deployment issues.
ms.date: 03/12/2024
ms.topic: troubleshooting
---

# Windows Hello for Business known deployment issues

The content of this article is to help troubleshoot known deployment issues for Windows Hello for Business.

## PIN reset on Microsoft Entra join devices fails with *We can't open that page right now* error

PIN reset on Microsoft Entra joined devices uses a flow called *web sign-in* to authenticate the user above lock. Web sign in only allows navigation to specific domains. If web sign-in attempts to navigate to a domain that isn't allowed, it displays a page with the error message *We can't open that page right now*.

### Identify PIN Reset allowed domains issue

The user can launch the PIN reset flow from the lock screen using the *I forgot my PIN* link in the PIN credential provider. Selecting the link launches a full screen UI for the PIN experience on Microsoft Entra join devices. Typically, the UI displays an authentication page, where the user authenticates using Microsoft Entra credentials and completes MFA.

In federated environments, authentication may be configured to route to AD FS or a non-Microsoft identity provider. If the PIN reset flow is launched and attempts to navigate to a federated identity provider server page, it fails and displays the *We can't open that page right now* error, if the domain for the server page isn't included in an allowlist.

If you're a customer of *Azure US Government* cloud, PIN reset also attempts to navigate to a domain that isn't included in the default allowlist. The result is the message *We can't open that page right now*.

### Resolve PIN Reset allowed domains issue

To resolve the error, you can configure a list of allowed domains for PIN reset using the [ConfigureWebSignInAllowedUrls](/windows/client-management/mdm/policy-csp-authentication#authentication-configurewebsigninallowedurls) policy. For information on how to configure the policy, see [Configure allowed URLs for federated identity providers on Microsoft Entra joined devices](hello-feature-pin-reset.md#configure-allowed-urls-for-federated-identity-providers-on-microsoft-entra-joined-devices).

## Hybrid key trust sign in broken due to user public key deletion

Applies to:

- Hybrid key trust deployments
- Windows Server 2016, builds 14393.3930 to 14393.4048
- Windows Server 2019, builds 17763.1457 to 17763.1613

In Hybrid key trust deployments with domain controllers running certain builds of Windows Server 2016 and Windows Server 2019, the user's Windows Hello for Business key is deleted after they sign-in. Subsequent sign-ins will fail until the user's key is synced during the next Microsoft Entra Connect delta sync cycle.

### Identify user public key deletion issue

After the user provisions a Windows Hello for Business credential in a hybrid key trust environment, the key must sync from Microsoft Entra ID to Active Directory during a Microsoft Entra Connect Sync cycle. The user's public key is written to the `msDS-KeyCredentialLink` attribute of the user object.

Before the user's Windows Hello for Business key syncs, sign-ins with Windows Hello for Business fail with the error message *That option is temporarily unavailable. For now, please use a different method to sign in.* After the key syncs successfully, the user can sign in and unlock with their PIN or enrolled biometrics.

In environments with the issue, after the first sign-in with Windows Hello for Business and provisioning is complete, the next sign-in attempt fails. In environments where domain controllers are running a mix of builds, some users may be impacted by the issue, and subsequent sign in attempts may be sent to different domain controllers. The result is intermittent sign-in failures.

After the initial sign-in attempt, the user's Windows Hello for Business public key is deleted from the `msDS-KeyCredentialLink attribute`. You can verify the deletion by querying a user's `msDS-KeyCredentialLink` attribute before and after sign-in. You can query the `msDS-KeyCredentialLink` in AD using [Get-ADUser](/powershell/module/activedirectory/get-aduser) and specifying `msds-keycredentiallink` for the `-Properties` parameter.

### Resolve user public key deletion issue

To resolve the issue, update Windows Server 2016 and 2019 domain controllers with the latest patches. For Windows Server 2016, the behavior is fixed in build *14393.4104* ([KB4593226](https://support.microsoft.com/help/4593226)) and later. For Windows Server 2019, the behavior is fixed in build *17763.1637* ([KB4592440](https://support.microsoft.com/help/4592440)).

## Microsoft Entra joined device access to on-premises resources using key trust and non-Microsoft Certificate Authority (CA)

Applies to:

- Microsoft Entra joined key trust deployments
- Non-Microsoft certificate authority (CA) issuing domain controller certificates

Windows Hello for Business uses smart-card based authentication for many operations. This type of authentication has special guidelines when using a non-Microsoft CA for certificate issuance, some of which apply to the domain controllers. Not all Windows Hello for Business deployment types require these configurations. Accessing on-premises resources from a Microsoft Entra joined device does require special configuration when using a non-Microsoft CA to issue domain controller certificates.

For more information, read [Guidelines for enabling smart card sign in with non-Microsoft certification authorities](/troubleshoot/windows-server/windows-security/enabling-smart-card-logon-third-party-certification-authorities).

### Identify on-premises resource access issues with non-Microsoft CAs

The issue can be identified using network traces or Kerberos logging from the client. In the network trace, the client fails to place a `TGS_REQ` request when a user attempts to access a resource. On the client, it can be observed in the Kerberos operation event log under `Application and Services/Microsoft/Windows/Security-Kerberos/Operational`. The logs are disabled by default. The failure event for this case includes the following information:

```Console
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
```

### Resolve on-premises resource access issue with non-Microsoft CAs

To resolve the issue, domain controller certificates must be updated so that the certificate subject contains the directory path of the server object (distinguished name).
Example Subject: `CN=DC1,OU=Domain Controllers,DC=ad,DC=contoso,DC=com`

Alternatively, you can set the subject alternative name (SAN) of the domain controller certificate to contain the server object's fully qualified domain name and the NETBIOS name of the domain.
Example Subject Alternative Name:
  > `dns=dc1.ad.contoso.com`\
  > `dns=ad.contoso.com`\
  > `dns=ad`

## Key trust authentication broken for Windows Server 2019

Applies to:

- Windows Server 2019
- Hybrid key trust deployments
- On-premises key trust deployments

Domain controllers running early versions of Windows Server 2019 have an issue that prevents key trust authentication from working properly. Networks traces report *KDC_ERR_CLIENT_NAME_MISMATCH*.

### Identify Windows Server 2019 key trust authentication issue

On the client, authentication with Windows Hello for Business fails with the error message, *That option is temporarily unavailable. For now, please use a different method to sign in.*

The error is presented on Microsoft Entra hybrid joined devices in key trust deployments after Windows Hello for Business is provisioned, but before a user's key is synced from Microsoft Entra ID to Active Directory. If a user's key isn't synced from Microsoft Entra ID and the `msDS-keycredentiallink` attribute on the user object in AD is populated for NGC, then it's possible that the error occurs.

Another indicator of the failure can be identified using network traces. If you capture network traces for a key trust sign-in event, the traces show Kerberos failing with the error *KDC_ERR_CLIENT_NAME_MISMATCH*.

### Resolve Server 2019 key trust authentication issue

The issue is resolved in Windows Server 2019, build *17763.316* ([KB4487044](https://support.microsoft.com/help/4487044/windows-10-update-kb4487044)). Upgrade all Windows Server 2019 domain controllers to the build *17763.316* or newer to resolve the issue.

## Certificate trust provisioning with AD FS broken on windows server 2019

Applies to:

- Windows Server 2019
- Hybrid certificate trust deployments
- On-premises certificate trust deployments

AD FS running on Windows Server 2019 fails to complete device authentication due to an invalid check of incoming scopes in the request. Device authentication to AD FS is a requirement for Windows Hello for Business to enroll a certificate using AD FS. The client blocks Windows Hello for Business provisioning until the authentication is successful.

### Identify certificate trust with AD FS 2019 enrollment issue

The provisioning experience for Windows Hello for Business launches if the prerequisite checks are successful. The result of the provisioningAdmin checks is available in event logs under **Microsoft-Windows-User Device Registration**. If provisioning is blocked because device authentication doesn't succeed, event ID *362* is logged stating *User has successfully authenticated to the enterprise STS: No*.

```Console
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
Device is Azure Active Directory-joined ( AADJ or DJ++ ): Yes
User has logged on with Azure Active Directory credentials: Yes
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
```

If a device recently joined a domain, there may be a delay before the device authentication occurs. If the failing state of this prerequisite check persists, then it can indicate an issue with the AD FS configuration.

If the AD FS scope issue is present, event logs on the AD FS server indicate an authentication failure from the client. The error is logged in event logs under **AD FS/Admin** as event ID *1021* and the event specifies that the client is forbidden access to resource `http://schemas.microsoft.com/ws/2009/12/identityserver/selfscope` with scope `ugs`:

```Console
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
```

### Resolve certificate trust with AD FS 2019 enrollment issue

This issue is fixed in Windows Server, version 1903 and later. For Windows Server 2019, the issue can be remediated by adding the ugs scope manually.

1. Launch AD FS management console. Browse to **Services > Scope Descriptions**.
1. Right select **Scope Descriptions** and select **Add Scope Description**.
1. Under name type *ugs*, and select **Apply > OK**.
1. Launch PowerShell as an administrator.
1. Get the ObjectIdentifier of the application permission with the ClientRoleIdentifier parameter equal to "38aa3b87-a06d-4817-b275-7a316988d93b":

   ```powershell
   (Get-AdfsApplicationPermission -ServerRoleIdentifiers 'http://schemas.microsoft.com/ws/2009/12/identityserver/selfscope' | ?{ $_.ClientRoleIdentifier -eq '38aa3b87-a06d-4817-b275-7a316988d93b' }).ObjectIdentifier
   ```

1. Execute the command `Set-AdfsApplicationPermission -TargetIdentifier <ObjectIdentifier from step 5> -AddScope 'ugs'`.
1. Restart the AD FS service.
1. On the client: Restart the client. The user should be prompted to provision Windows Hello for Business.
