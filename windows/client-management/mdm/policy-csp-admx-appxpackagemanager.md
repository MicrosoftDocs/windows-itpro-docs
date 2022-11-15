---
title: Policy CSP - ADMX_AppxPackageManager
description: Learn about the Policy CSP - ADMX_AppxPackageManager.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 11/10/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_AppxPackageManager

 > [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_AppxPackageManager policies

<dl>
  <dd>
    <a href="#admx-appxpackagemanager-allowdeploymentinspecialprofiles">ADMX_AppxPackageManager/AllowDeploymentInSpecialProfiles</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-appxpackagemanager-allowdeploymentinspecialprofiles"></a>**ADMX_AppxPackageManager/AllowDeploymentInSpecialProfiles**

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
This policy setting allows you to manage the deployment of Windows Store apps when the user is signed in using a special profile.

Special profiles are the following user profiles where changes are discarded after the user signs off:

- Roaming user profiles to which the "Delete cached copies of roaming profiles" Group Policy setting applies.
- Mandatory user profiles and super-mandatory profiles, which are created by an administrator.
- Temporary user profiles, which are created when an error prevents the correct profile from loading.
- User profiles for the Guest account and members of the Guests group.

If you enable this policy setting, Group Policy allows deployment operations (adding, registering, staging, updating, or removing an app package) of Windows Store apps when using a special profile.

If you disable or don't configure this policy setting, Group Policy blocks deployment operations of Windows Store apps when using a special profile.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow deployment operations in special profiles*
-   GP name: *AllowDeploymentInSpecialProfiles*
-   GP path: *Windows Components\App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)