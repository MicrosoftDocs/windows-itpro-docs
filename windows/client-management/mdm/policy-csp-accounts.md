---
title: Policy CSP - Accounts
description: Learn about the Accounts policy configuration service provider (CSP). This article describes account policies.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - Accounts



<hr/>

<!--Policies-->
## Accounts policies

<dl>
  <dd>
    <a href="#accounts-allowaddingnonmicrosoftaccountsmanually">Accounts/AllowAddingNonMicrosoftAccountsManually</a>
  </dd>
  <dd>
    <a href="#accounts-allowmicrosoftaccountconnection">Accounts/AllowMicrosoftAccountConnection</a>
  </dd>
  <dd>
    <a href="#accounts-allowmicrosoftaccountsigninassistant">Accounts/AllowMicrosoftAccountSignInAssistant</a>
  </dd>
  <dd>
    <a href="#accounts-domainnamesforemailsync">Accounts/DomainNamesForEmailSync</a>
  </dd>
  <dd>
    <a href="#accounts-restricttoenterprisedeviceauthenticationonly">Accounts/RestrictToEnterpriseDeviceAuthenticationOnly</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="accounts-allowaddingnonmicrosoftaccountsmanually"></a>**Accounts/AllowAddingNonMicrosoftAccountsManually**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
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
Specifies whether user is allowed to add email accounts other than Microsoft account.

Most restricted value is 0.

> [!NOTE]
> This policy will only block UI/UX-based methods for adding non-Microsoft accounts.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Not allowed.
-   1 (default) - Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="accounts-allowmicrosoftaccountconnection"></a>**Accounts/AllowMicrosoftAccountConnection**

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
Specifies whether the user is allowed to use a Microsoft account for non-email related connection authentication and services.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Not allowed.
-   1 (default) - Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="accounts-allowmicrosoftaccountsigninassistant"></a>**Accounts/AllowMicrosoftAccountSignInAssistant**

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
Added in Windows 10, version 1703. Allows IT Admins the ability to disable the "Microsoft Account Sign-In Assistant" (wlidsvc) NT service.

> [!NOTE]
> If the Microsoft account service is disabled, Windows Update will no longer offer feature updates to devices running Windows 10 1709 or higher. See [Feature updates are not being offered while other updates are](/windows/deployment/update/windows-update-troubleshooting#feature-updates-are-not-being-offered-while-other-updates-are).

> [!NOTE]
> If the Microsoft account service is disabled, the Subscription Activation feature will not work properly and your users will not be able to “step-up” from Windows 10 Pro to Windows 10 Enterprise, because the Microsoft account ticket for license authentication cannot be generated. The machine will remain on Windows 10 Pro and no error will be displayed in the Activation Settings app.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Disabled.
-   1 (default) - Manual start.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>


<!--Policy-->
<a href="" id="accounts-domainnamesforemailsync"></a>**Accounts/DomainNamesForEmailSync**

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


<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="accounts-restricttoenterprisedeviceauthenticationonly"></a>**Accounts/RestrictToEnterpriseDeviceAuthenticationOnly**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|Yes|
|Business|No|Yes|
|Enterprise|No|Yes|
|Education|No|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 11, version 22H2. This setting determines whether to only allow enterprise device authentication for the Microsoft Account Sign-in Assistant service (wlidsvc). By default, this setting is disabled and allows both user and device authentication. When the value is set to 1, we only allow device authentication and block user authentication.

Most restricted value is 1.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - Allow both device and user authentication.
-   1 - Only allow device authentication. Block user authentication.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--/Policies-->

<!--/Policies-->

## Related topics

[Policy CSP](policy-configuration-service-provider.md)

