---
title: Policy CSP - CredentialsUI
description: Learn how to use the Policy CSP - CredentialsUI setting to configure the display of the password reveal button in password entry user experiences.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - CredentialsUI

> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## CredentialsUI policies  

<dl>
  <dd>
    <a href="#credentialsui-disablepasswordreveal">CredentialsUI/DisablePasswordReveal</a>
  </dd>
  <dd>
    <a href="#credentialsui-enumerateadministrators">CredentialsUI/EnumerateAdministrators</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="credentialsui-disablepasswordreveal"></a>**CredentialsUI/DisablePasswordReveal**  

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to configure the display of the password reveal button in password entry user experiences.

If you enable this policy setting, the password reveal button will not be displayed after a user types a password in the password entry text box.

If you disable or do not configure this policy setting, the password reveal button will be displayed after a user types a password in the password entry text box.

By default, the password reveal button is displayed after a user types a password in the password entry text box. To display the password, click the password reveal button.

The policy applies to all Windows components and applications that use the Windows system controls, including Internet Explorer.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not display the password reveal button*
-   GP name: *DisablePasswordReveal*
-   GP path: *Windows Components/Credential User Interface*
-   GP ADMX file name: *credui.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="credentialsui-enumerateadministrators"></a>**CredentialsUI/EnumerateAdministrators**  

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
This policy setting controls whether administrator accounts are displayed when a user attempts to elevate a running application. By default, administrator accounts are not displayed when the user attempts to elevate a running application.

If you enable this policy setting, all local administrator accounts on the PC will be displayed so the user can choose one and enter the correct password.

If you disable this policy setting, users will always be required to type a user name and password to elevate.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enumerate administrator accounts on elevation*
-   GP name: *EnumerateAdministrators*
-   GP path: *Windows Components/Credential User Interface*
-   GP ADMX file name: *credui.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

