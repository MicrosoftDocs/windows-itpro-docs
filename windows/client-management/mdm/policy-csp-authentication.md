---
title: Policy CSP - Authentication
description: Policy CSP - Authentication
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 05/21/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - Authentication


<hr/>

<!--Policies-->
## Authentication policies  



[Authentication/AllowAadPasswordReset](#Authentication-AllowAadPasswordReset)

[Authentication/AllowEAPCertSSO](#Authentication-AllowEAPCertSSO)

[Authentication/AllowFastReconnect](#Authentication-AllowFastReconnect)

[Authentication/AllowFidoDeviceSignon](#Authentication-AllowFidoDeviceSignon)

[Authentication/AllowSecondaryAuthenticationDevice](#Authentication-AllowSecondaryAuthenticationDevice)

[Authentication/EnableFastFirstSignIn](#Authentication-EnableFastFirstSignIn)

[Authentication/EnableWebSignIn](#Authentication-EnableWebSignIn)

[Authentication/PreferredAadTenantDomainName](#Authentication-PreferredAadTenantDomainName)

[Authentication policies supported by Windows Holographic](#Authentication-policies-supported-by-Windows-Holographic)

[Authentication policies supported by Windows Holographic for Business](#Authentication-policies-supported-by-Windows-Holographic-for-Business)
<hr/>

<!--Policy-->
 ###  **Authentication-AllowAadPasswordReset**  

<!--SupportedSKUs-->

| Home | Pro | Business | Enterprise | Education | Mobile | Mobile Enterprise |
| :---:|:---:|   :---:  |    :---:   |   :---:   | :---:  | :---:|
|<img src="images/crossmark.png" alt="cross mark" />|	<img src="images/checkmark.png" alt="check mark" /><sup>3</sup> |<img src="images/checkmark.png" alt="check mark" /><sup>3</sup>| <img src="images/checkmark.png" alt="check mark" /> <sup>3</sup>	|<img src="images/checkmark.png" alt="check mark" /><sup>3</sup>| 	<img src="images/crossmark.png" alt="cross mark" /> | 	<img src="images/crossmark.png" alt="cross mark" />|

<!--/SupportedSKUs-->
<!--Scope-->
### [Scope](./policy-configuration-service-provider.md#policy-scope):

- Device
<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1709. Specifies whether password reset is enabled for Azure Active Directory accounts. This policy allows the Azure AD tenant administrators to enable self service password reset feature on the windows logon screen.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
### **Authentication-AllowEAPCertSSO**  

<!--SupportedSKUs-->

| Home | Pro | Business | Enterprise | Education | Mobile | Mobile Enterprise |
| :---:|:---:|   :---:  |    :---:   |   :---:   | :---:  | :---:|
|<img src="images/crossmark.png" alt="cross mark" />|	<img src="images/checkmark.png" alt="check mark" /> |<img src="images/checkmark.png" alt="check mark" />| <img src="images/checkmark.png" alt="check mark" /> |<img src="images/checkmark.png" alt="check mark" />| 	<img src="images/crossmark.png" alt="cross mark" /> | 	<img src="images/crossmark.png" alt="cross mark" />|

<!--/SupportedSKUs-->
<!--Scope-->
### [Scope](./policy-configuration-service-provider.md#policy-scope):

- User

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
### **Authentication-AllowFastReconnect**  

<!--SupportedSKUs-->

| Home | Pro | Business | Enterprise | Education | Mobile | Mobile Enterprise |
| :---:|:---:|   :---:  |    :---:   |   :---:   | :---:  | :---:|
|<img src="images/checkmark.png" alt="check mark" /> |	<img src="images/checkmark.png" alt="check mark" /> |<img src="images/checkmark.png" alt="check mark" />| <img src="images/checkmark.png" alt="check mark" /> |<img src="images/checkmark.png" alt="check mark" />| <img src="images/checkmark.png" alt="check mark" />  | 	<img src="images/checkmark.png" alt="check mark" /> |

<!--/SupportedSKUs-->
<!--Scope-->
### [Scope](./policy-configuration-service-provider.md#policy-scope):

- Device

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
### **Authentication-AllowFidoDeviceSignon**  

<!--SupportedSKUs-->
| Home | Pro | Business | Enterprise | Education | Mobile | Mobile Enterprise |
| :---:|:---:|   :---:  |    :---:   |   :---:   | :---:  | :---:|
|<img src="images/crossmark.png" alt="cross mark" />|	<img src="images/checkmark.png" alt="check mark" /><sup>3</sup> |<img src="images/checkmark.png" alt="check mark" /><sup>3</sup>| <img src="images/checkmark.png" alt="check mark" /> <sup>3</sup>	|<img src="images/checkmark.png" alt="check mark" /><sup>3</sup>| 	<img src="images/crossmark.png" alt="cross mark" /> | 	<img src="images/crossmark.png" alt="cross mark" />|
<!--/SupportedSKUs-->
<!--Scope-->

###[Scope](./policy-configuration-service-provider.md#policy-scope):

- Device

<hr/>

<!--/Scope-->
<!--Description-->
Preview release in Windows 10, version 1709. Supported in the next release. Specifies whether Fast Identity Online (FIDO) device can be used to sign on. This policy enables the Windows logon credential provider for FIDO 2.0

Value type is integer.

Here is an example scenario: At Contoso, there are a lot of shared devices and kiosks that employees throughout the day using as many as 20 different devices. To minimize the loss in productivity when employees have to login with username and password everytime they pick up a device, the IT admin deploys SharePC CSP and Authentication/AllowFidoDeviceSignon policy to shared devices. The IT admin provisions and distributes FIDO 2.0 devices to employees, which allows them to authenticate to various shared devices and PCs.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Do not allow. The FIDO device credential provider disabled. 
-   1 - Allow. The FIDO device credential provider is enabled and allows usage of FIDO devices to sign into an Windows.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
### **Authentication-AllowSecondaryAuthenticationDevice**  

<!--SupportedSKUs-->
| Home | Pro | Business | Enterprise | Education | Mobile | Mobile Enterprise |
| :---:|:---:|   :---:  |    :---:   |   :---:   | :---:  | :---:|
|<img src="images/checkmark.png" alt="check mark" /><sup>1</sup> |	<img src="images/checkmark.png" alt="check mark" /><sup>1</sup> |<img src="images/checkmark.png" alt="check mark" /><sup>1</sup>| <img src="images/checkmark.png" alt="check mark" /> <sup>1</sup>|<img src="images/checkmark.png" alt="check mark" /><sup>1</sup>| <img src="images/checkmark.png" alt="check mark" /> <sup>1</sup> | 	<img src="images/checkmark.png" alt="check mark" /> <sup>1</sup>|

<!--/SupportedSKUs-->
<!--Scope-->
### [Scope](./policy-configuration-service-provider.md#policy-scope):

- Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1607. Allows secondary authentication devices to work with Windows.

The default for this policy must be on for consumer devices (defined as local or Microsoft account connected device) and off for enterprise devices (such as cloud domain-joined, cloud domain-joined in an on-premises only environment, cloud domain-joined in a hybrid environment, and BYOD).

In the next major release of Windows 10, the default for this policy for consumer devices will be changed to off. This will only affect users that have not already set up a secondary authentication device.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow companion device for secondary authentication*
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
### **Authentication-EnableFastFirstSignIn**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Home</th>
    <th>Pro</th>
    <th>Business</th>
    <th>Enterprise</th>
    <th>Education</th>
    <th>Mobile</th>
    <th>Mobile Enterprise</th>
</tr>
<tr>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
    <td></td>
    <td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!Warning]
> This policy is in preview mode only and therefore not meant or recommended for production purposes.

This policy is intended for use on Shared PCs to enable a quick first sign-in experience for a user. It works by automatically connecting new non-admin Azure Active Directory (Azure AD) accounts to the [pre-configured candidate local accounts](https://docs.microsoft.com/windows/configuration/set-up-shared-or-guest-pc).

Value type is integer. Supported values:

- 0 - (default) The feature defaults to the existing SKU and device capabilities.
- 1 - Enabled. Auto connect new non-admin AZure AD accounts to [pre-configured candidate local accounts](https://docs.microsoft.com/windows/configuration/set-up-shared-or-guest-pc)
- 2 - Disabled. Do not auto connect new non-admin Azure AD accounts to pre-configured local accounts

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
### **Authentication-EnableWebSignIn**  

<!--SupportedSKUs-->
| Home | Pro | Business | Enterprise | Education | Mobile | Mobile Enterprise |
| :---:|:---:|   :---:  |    :---:   |   :---:   | :---:  | :---:|
|<img src="images/crossmark.png" alt="cross mark" />|	<img src="images/checkmark.png" alt="check mark" /><sup>5</sup> |<img src="images/checkmark.png" alt="check mark" /><sup>5</sup>| <img src="images/checkmark.png" alt="check mark" /> <sup>5</sup>	|<img src="images/checkmark.png" alt="check mark" /><sup>5</sup> ||

<!--/SupportedSKUs-->
<!--Scope-->
### [Scope](./policy-configuration-service-provider.md#policy-scope):
- Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!Warning]
> This policy is in preview mode only and therefore not meant or recommended for production purposes.

"Web Sign-in" is a new way of signing into a Windows PC. It enables Windows logon support for non-ADFS federated providers (e.g. SAML). 

> [!Note]
> Web Sign-in is only supported on Azure AD Joined PCs.

Value type is integer. Supported values:

- 0 - (default) The feature defaults to the existing SKU and device capabilities.
- 1 - Enabled. Web Credential Provider will be enabled for Sign In
- 2 - Disabled. Web Credential Provider will not be enabled for Sign In

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
### **Authentication-PreferredAadTenantDomainName**  

<!--SupportedSKUs-->
| Home | Pro | Business | Enterprise | Education | Mobile | Mobile Enterprise |
| :---:|:---:|   :---:  |    :---:   |   :---:   | :---:  | :---:|
|<img src="images/crossmark.png" alt="cross mark" />|	<img src="images/checkmark.png" alt="check mark" /><sup>5</sup> |<img src="images/checkmark.png" alt="check mark" /><sup>5</sup>| <img src="images/checkmark.png" alt="check mark" /> <sup>5</sup>	|<img src="images/checkmark.png" alt="check mark" /><sup>5</sup> ||

<!--/SupportedSKUs-->
<!--Scope-->
### [Scope](./policy-configuration-service-provider.md#policy-scope):

- Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the preferred domain among available domains in the Azure AD tenant.

Example: If your organization is using the "@contoso.com" tenant domain name, the policy value should be "contoso.com". For the user "abby@constoso.com", she would then be able to sign in using "abby" in the username field instead of "abby@contoso.com".


Value type is string.

<!--/Description-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<!--/Policies-->
<!--StartHoloLens-->
### Authentication policies supported by Windows Holographic

- [Authentication/AllowFastReconnect](#authentication-allowfastreconnect)
<!--EndHoloLens-->

<!--StartHoloLensBusiness-->
### Authentication policies supported by Windows Holographic for Business

- [Authentication/AllowFastReconnect](#authentication-allowfastreconnect)
- [Authentication/PreferredAadTenantDomainName](#authentication-preferredaadtenantdomainname)
  <!--EndHoloLensBusiness-->
  <hr/>

Footnotes:

- 1 - Added in Windows 10, version 1607.
- 2 - Added in Windows 10, version 1703.
- 3 - Added in Windows 10, version 1709.
- 4 - Added in Windows 10, version 1803.
- 5 - Added in Windows 10, version 1809.
- 6 - Added in Windows 10, version 1903.
