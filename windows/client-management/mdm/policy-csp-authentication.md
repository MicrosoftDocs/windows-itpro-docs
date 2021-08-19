---
title: Policy CSP - Authentication
description: The Policy CSP - Authentication setting allows the Azure AD tenant administrators to enable self service password reset feature on the Windows sign in screen.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
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
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

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
<a href="" id="authentication-alloweapcertsso"></a>**Authentication/AllowEAPCertSSO**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

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
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

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
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Preview release in Windows 10, version 1709. Supported in the next release. Specifies whether Fast Identity Online (FIDO) device can be used to sign on. This policy enables the Windows logon credential provider for FIDO 2.0

Value type is integer.

Here is an example scenario: At Contoso, there are a lot of shared devices and kiosks that employees throughout the day using as many as 20 different devices. To minimize the loss in productivity when employees have to login with username and password every time they pick up a device, the IT admin deploys SharePC CSP and Authentication/AllowFidoDeviceSignon policy to shared devices. The IT admin provisions and distributes FIDO 2.0 devices to employees, which allows them to authenticate to various shared devices and PCs.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Do not allow. The FIDO device credential provider disabled. 
-   1 - Allow. The FIDO device credential provider is enabled and allows usage of FIDO devices to sign into an Windows.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="authentication-allowsecondaryauthenticationdevice"></a>**Authentication/AllowSecondaryAuthenticationDevice**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1607. Allows secondary authentication devices to work with Windows.

The default for this policy must be on for consumer devices (defined as local or Microsoft account connected device) and off for enterprise devices (such as cloud domain-joined, cloud domain-joined in an on-premises only environment, cloud domain-joined in a hybrid environment, and BYOD).

In the next major release of Windows 10, the default for this policy for consumer devices will be changed to off. This will only affect users that have not already set up a secondary authentication device.

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
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in Windows 10, version 1803. Specifies the list of domains that are allowed to be navigated to in AAD PIN reset and Web Sign-in Windows device scenarios where authentication is handled by AD FS or a third-party federated identity provider. Note this policy is required in federated environments as a mitigation to the vulnerability described in [CVE-2021-27092](https://msrc.microsoft.com/update-guide/vulnerability/CVE-2021-27092).

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
<a href="" id="authentication-enablefastfirstsignin"></a>**Authentication/EnableFastFirstSignIn**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
</table>

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
> This policy is in preview mode only and therefore not meant or recommended for production purposes.

This policy is intended for use on Shared PCs to enable a quick first sign-in experience for a user. It works by automatically connecting new non-admin Azure Active Directory (Azure AD) accounts to the pre-configured candidate local accounts.

> [!Important]
> Pre-configured candidate local accounts are any local accounts (pre-configured or added) in your device.

Value type is integer. Supported values:

- 0 - (default) The feature defaults to the existing SKU and device capabilities.
- 1 - Enabled. Auto connect new non-admin Azure AD accounts to pre-configured candidate local accounts
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
<a href="" id="authentication-enablewebsignin"></a>**Authentication/EnableWebSignIn**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
</table>

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
> This policy is in preview mode only and therefore not meant or recommended for production purposes.

"Web Sign-in" is a new way of signing into a Windows PC. It enables Windows logon support for new Azure AD credentials, like Temporary Access Pass.

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
<a href="" id="authentication-preferredaadtenantdomainname"></a>**Authentication/PreferredAadTenantDomainName**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
</table>

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
<hr/>

Footnotes:

- 1 - Available in Windows 10, version 1607.
- 2 - Available in Windows 10, version 1703.
- 3 - Available in Windows 10, version 1709.
- 4 - Available in Windows 10, version 1803.
- 5 - Available in Windows 10, version 1809.
- 6 - Available in Windows 10, version 1903.
- 7 - Available in Windows 10, version 1909.
- 8 - Available in Windows 10, version 2004.

<!--/Policies-->
