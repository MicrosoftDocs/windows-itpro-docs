---
title: Policy CSP - ADMX_CredentialProviders
description: Learn about the Policy CSP - ADMX_CredentialProviders.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 11/11/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_CredentialProviders

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_CredentialProviders policies

<dl>
  <dd>
    <a href="#admx-credentialproviders-allowdomaindelaylock">ADMX_CredentialProviders/AllowDomainDelayLock</a>
  </dd>
  <dd>
    <a href="#admx-credentialproviders-defaultcredentialprovider">ADMX_CredentialProviders/DefaultCredentialProvider</a>
  </dd>
  <dd>
    <a href="#admx-credentialproviders-excludedcredentialproviders">ADMX_CredentialProviders/ExcludedCredentialProviders</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-credentialproviders-allowdomaindelaylock"></a>**ADMX_CredentialProviders/AllowDomainDelayLock**

<!--SupportedSKUs-->


|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
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
This policy setting allows you to control whether a user can change the time before a password is required when a Connected Standby device screen turns off.

If you enable this policy setting, a user on a Connected Standby device can change the amount of time after the device's screen turns off before a password is required when waking the device. The time is limited by any EAS settings or Group Policies that affect the maximum idle time before a device locks. Additionally, if a password is required when a screensaver turns on, the screensaver timeout will limit the options the user may choose.

If you disable this policy setting, a user cannot change the amount of time after the device's screen turns off before a password is required when waking the device. Instead, a password is required immediately after the screen turns off.

If you don't configure this policy setting on a domain-joined device, a user cannot change the amount of time after the device's screen turns off before a password is required when waking the device. Instead, a password is required immediately after the screen turns off.

If you don't configure this policy setting on a workgroup device, a user on a Connected Standby device can change the amount of time after the device's screen turns off before a password is required when waking the device. The time is limited by any EAS settings or Group Policies that affect the maximum idle time before a device locks. Additionally, if a password is required when a screensaver turns on, the screensaver timeout will limit the options the user may choose.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow users to select when a password is required when resuming from connected standby*
-   GP name: *AllowDomainDelayLock*
-   GP path: *System\Logon*
-   GP ADMX file name: *CredentialProviders.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-credentialproviders-defaultcredentialprovider"></a>**ADMX_CredentialProviders/DefaultCredentialProvider**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
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
This policy setting allows the administrator to assign a specified credential provider as the default credential provider.

If you enable this policy setting, the specified credential provider is selected on other user tile.

If you disable or don't configure this policy setting, the system picks the default credential provider on other user tile.

> [!NOTE]
> A list of registered credential providers and their GUIDs can be found in the registry at HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\Credential Providers.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Assign a default credential provider*
-   GP name: *DefaultCredentialProvider*
-   GP path: *System\Logon*
-   GP ADMX file name: *CredentialProviders.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--Policy-->
<a href="" id="admx-credentialproviders-excludedcredentialproviders"></a>**ADMX_CredentialProviders/ExcludedCredentialProviders**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
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
This policy setting allows the administrator to exclude the specified credential providers from use during authentication.

> [!NOTE]
> Credential providers are used to process and validate user credentials during logon or when authentication is required. Windows Vista provides two default credential providers: Password and Smart Card. An administrator can install additional credential providers for different sets of credentials (for example, to support biometric authentication).

If you enable this policy, an administrator can specify the CLSIDs of the credential providers to exclude from the set of installed credential providers available for authentication purposes.

If you disable or do not configure this policy, all installed and otherwise enabled credential providers are available for authentication purposes.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Exclude credential providers*
-   GP name: *ExcludedCredentialProviders*
-   GP path: *System\Logon*
-   GP ADMX file name: *CredentialProviders.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)