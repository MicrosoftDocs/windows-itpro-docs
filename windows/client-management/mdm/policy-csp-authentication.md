---
title: Policy CSP - Authentication
description: The Policy CSP - Authentication setting allows the Azure AD tenant administrators to enable self service password reset feature on the Windows sign-in screen.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.localizationpriority: medium
ms.reviewer: bobgil
manager: dansimp
---

# Policy CSP - Authentication



<hr/>

<!--Policies-->
## Authentication policies  

<dl>
  <dd>
    <a href="#authentication-allowaadpasswordreset">Authentication/AllowAadPasswordReset</a>
  </dd>
  <dd>
    <a href="#authentication-alloweapcertsso">Authentication/AllowEAPCertSSO</a>
  </dd>
  <dd>
    <a href="#authentication-allowfastreconnect">Authentication/AllowFastReconnect</a>
  </dd>
  <dd>
    <a href="#authentication-allowfidodevicesignon">Authentication/AllowFidoDeviceSignon</a>
  </dd>
  <dd>
    <a href="#authentication-allowsecondaryauthenticationdevice">Authentication/AllowSecondaryAuthenticationDevice</a>
  </dd>
  <dd>
    <a href="#authentication-configurewebsigninallowedurls">Authentication/ConfigureWebSignInAllowedUrls</a>
  </dd>
  <dd>
    <a href="#authentication-configurewebcamaccessdomainnames">Authentication/ConfigureWebcamAccessDomainNames</a>
  </dd>
  <dd>
    <a href="#authentication-enablefastfirstsignin">Authentication/EnableFastFirstSignIn</a>
  </dd>
  <dd>
    <a href="#authentication-enablewebsignin">Authentication/EnableWebSignIn</a>
  </dd>
  <dd>
    <a href="#authentication-preferredaadtenantdomainname">Authentication/PreferredAadTenantDomainName</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="authentication-allowaadpasswordreset"></a>**Authentication/AllowAadPasswordReset**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether password reset is enabled for Azure Active Directory accounts. This policy allows the Azure AD tenant administrators to enable self service password reset feature on the Windows logon screen.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="authentication-alloweapcertsso"></a>**Authentication/AllowEAPCertSSO**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Allows an EAP cert-based authentication for a single sign on (SSO) to access internal resources.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="authentication-allowfastreconnect"></a>**Authentication/AllowFastReconnect**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows EAP Fast Reconnect from being attempted for EAP Method TLS.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="authentication-allowfidodevicesignon"></a>**Authentication/AllowFidoDeviceSignon**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Supported in the next release. Specifies whether Fast Identity Online (FIDO) device can be used to sign on. This policy enables the Windows logon credential provider for FIDO 2.0

Value type is integer.

Here's an example scenario: At Contoso, there are many shared devices and kiosks that employees use throughout the day, for example, employees use as many as 20 different devices. To minimize the loss in productivity when employees have to sign in with username and password every time they pick up a device, the IT admin deploys SharePC CSP and Authentication/AllowFidoDeviceSignon policy to shared devices. The IT admin provisions and distributes FIDO 2.0 devices to employees, which allows them to authenticate to various shared devices and PCs.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Don't allow. The FIDO device credential provider disabled.
-   1 - Allow. The FIDO device credential provider is enabled and allows usage of FIDO devices to sign in to Windows.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="authentication-allowsecondaryauthenticationdevice"></a>**Authentication/AllowSecondaryAuthenticationDevice**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows secondary authentication devices to work with Windows.

The default for this policy must be on for consumer devices (defined as local or Microsoft account connected device) and off for enterprise devices (such as cloud domain-joined, cloud domain-joined in an on-premises only environment, cloud domain-joined in a hybrid environment, and BYOD).

In the next major release of Windows 10, the default for this policy for consumer devices will be changed to off. This change will only affect users that have not already set up a secondary authentication device.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Allow companion device for secondary authentication*
-   GP name: *MSSecondaryAuthFactor_AllowSecondaryAuthenticationDevice*
-   GP path: *Windows Components/Microsoft Secondary Authentication Factor*
-   GP ADMX file name: *DeviceCredential.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="authentication-configurewebsigninallowedurls"></a>**Authentication/ConfigureWebSignInAllowedUrls**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the list of domains that are allowed to be navigated to in AAD PIN reset and Web Sign-in Windows device scenarios where authentication is handled by AD FS or a third-party federated identity provider. Note this policy is required in federated environments as a mitigation to the vulnerability described in [CVE-2021-27092](https://msrc.microsoft.com/update-guide/vulnerability/CVE-2021-27092).

**Example**: If your organization's PIN reset or Web Sign-in authentication flow is expected to navigate to two domains, accounts.contoso.com and signin.contoso.com, the policy value should be "accounts.contoso.com;signin.contoso.com".

<!--/Description-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="authentication-configurewebcamaccessdomainnames"></a>**Authentication/ConfigureWebcamAccessDomainNames**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

Specifies the list of domain names that are allowed to access the webcam in Web Sign-in Windows device sign-in scenarios.

Web Sign-in is only supported on Azure AD Joined PCs.

**Example**: If your organization federates to "Contoso IDP" and your Web Sign-in portal at "signinportal.contoso.com" requires webcam access, the policy value should be "contoso.com".


<!--/Description-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="authentication-enablefastfirstsignin"></a>**Authentication/EnableFastFirstSignIn**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!Warning]
> The Web Sign-in feature is in private preview mode only and not meant or recommended for production purposes. This setting is not currently supported at this time. 

This policy is intended for use on Shared PCs to enable a quick first sign-in experience for a user. It works by automatically connecting new non-admin Azure Active Directory (Azure AD) accounts to the pre-configured candidate local accounts.

> [!Important]
> Pre-configured candidate local accounts are any local accounts (pre-configured or added) in your device.

Value type is integer. Supported values:

- 0 - (default) The feature defaults to the existing SKU and device capabilities.
- 1 - Enabled. Auto connect new non-admin Azure AD accounts to pre-configured candidate local accounts
- 2 - Disabled. Don't auto connect new non-admin Azure AD accounts to pre-configured local accounts

<!--/Description-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="authentication-enablewebsignin"></a>**Authentication/EnableWebSignIn**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!Warning]
> The Web Sign-in feature is in private preview mode only and not meant or recommended for production purposes. This setting is not currently supported at this time. 

"Web Sign-in" is a new way of signing into a Windows PC. It enables Windows logon support for new Azure AD credentials, like Temporary Access Pass.

> [!Note]
> Web Sign-in is only supported on Azure AD Joined PCs.

Value type is integer. Supported values:

- 0 - (default) The feature defaults to the existing SKU and device capabilities.
- 1 - Enabled. Web Credential Provider will be enabled for a sign in.
- 2 - Disabled. Web Credential Provider won't be enabled for a sign in.

<!--/Description-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="authentication-preferredaadtenantdomainname"></a>**Authentication/PreferredAadTenantDomainName**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the preferred domain among available domains in the Azure AD tenant.

Example: If your organization is using the "@contoso.com" tenant domain name, the policy value should be "contoso.com". For the user "abby@constoso.com", a sign in is done using "abby" in the username field instead of "abby@contoso.com".


Value type is string.

<!--/Description-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>



<!--/Policies-->
