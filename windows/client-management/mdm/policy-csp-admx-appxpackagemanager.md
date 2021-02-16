---
title: Policy CSP - ADMX_AppxPackageManager
description: Policy CSP - ADMX_AppxPackageManager
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 11/10/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_AppxPackageManager
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

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
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to manage the deployment of Windows Store apps when the user is signed in using a special profile. 

Special profiles are the following user profiles, where changes are discarded after the user signs off:  

- Roaming user profiles to which the "Delete cached copies of roaming profiles" Group Policy setting applies
- Mandatory user profiles and super-mandatory profiles, which are created by an administrator
- Temporary user profiles, which are created when an error prevents the correct profile from loading
- User profiles for the Guest account and members of the Guests group

If you enable this policy setting, Group Policy allows deployment operations (adding, registering, staging, updating, or removing an app package) of Windows Store apps when using a special profile.

If you disable or do not configure this policy setting, Group Policy blocks deployment operations of Windows Store apps when using a special profile.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Allow deployment operations in special profiles*
-   GP name: *AllowDeploymentInSpecialProfiles*
-   GP path: *Windows Components\App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

Footnotes:

- 1 - Available in Windows 10, version 1607
- 2 - Available in Windows 10, version 1703
- 3 - Available in Windows 10, version 1709
- 4 - Available in Windows 10, version 1803
- 5 - Available in Windows 10, version 1809
- 6 - Available in Windows 10, version 1903
- 7 - Available in Windows 10, version 1909
- 8 - Available in Windows 10, version 2004
- 9 - Available in Windows 10, version 20H2

<!--/Policies-->