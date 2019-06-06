---
title: Policy CSP - ApplicationManagement
description: Policy CSP - ApplicationManagement
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 05/01/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ApplicationManagement

> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.


<hr/>

<!--Policies-->
## ApplicationManagement policies  

<dl>
  <dd>
    <a href="#applicationmanagement-allowalltrustedapps">ApplicationManagement/AllowAllTrustedApps</a>
  </dd>
  <dd>
    <a href="#applicationmanagement-allowappstoreautoupdate">ApplicationManagement/AllowAppStoreAutoUpdate</a>
  </dd>
  <dd>
    <a href="#applicationmanagement-allowdeveloperunlock">ApplicationManagement/AllowDeveloperUnlock</a>
  </dd>
  <dd>
    <a href="#applicationmanagement-allowgamedvr">ApplicationManagement/AllowGameDVR</a>
  </dd>
  <dd>
    <a href="#applicationmanagement-allowshareduserappdata">ApplicationManagement/AllowSharedUserAppData</a>
  </dd>
  <dd>
    <a href="#applicationmanagement-allowstore">ApplicationManagement/AllowStore</a>
  </dd>
  <dd>
    <a href="#applicationmanagement-applicationrestrictions">ApplicationManagement/ApplicationRestrictions</a>
  </dd>
  <dd>
    <a href="#applicationmanagement-disablestoreoriginatedapps">ApplicationManagement/DisableStoreOriginatedApps</a>
  </dd>
  <dd>
    <a href="#applicationmanagement-launchappafterlogon">ApplicationManagement/LaunchAppAfterLogOn</a>
  </dd>
  <dd>
    <a href="#applicationmanagement-msiallowusercontroloverinstall">ApplicationManagement/MSIAllowUserControlOverInstall</a>
  </dd>
  <dd>
    <a href="#applicationmanagement-msialwaysinstallwithelevatedprivileges">ApplicationManagement/MSIAlwaysInstallWithElevatedPrivileges</a>
  </dd>
  <dd>
    <a href="#applicationmanagement-requireprivatestoreonly">ApplicationManagement/RequirePrivateStoreOnly</a>
  </dd>
  <dd>
    <a href="#applicationmanagement-restrictappdatatosystemvolume">ApplicationManagement/RestrictAppDataToSystemVolume</a>
  </dd>
  <dd>
    <a href="#applicationmanagement-restrictapptosystemvolume">ApplicationManagement/RestrictAppToSystemVolume</a>
  </dd>
  <dd>
    <a href="#applicationmanagement-scheduleforcerestartforupdatefailures">ApplicationManagement/ScheduleForceRestartForUpdateFailures</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="applicationmanagement-allowalltrustedapps"></a>**ApplicationManagement/AllowAllTrustedApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
Specifies whether non Microsoft Store apps are allowed.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow all trusted apps to install*
-   GP name: *AppxDeploymentAllowAllTrustedApps*
-   GP path: *Windows Components/App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Explicit deny.
-   1 - Explicit allow unlock.
-   65535 (default) - Not configured.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="applicationmanagement-allowappstoreautoupdate"></a>**ApplicationManagement/AllowAppStoreAutoUpdate**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
Specifies whether automatic update of apps from Microsoft Store are allowed.


Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Turn off Automatic Download and Install of updates*
-   GP name: *DisableAutoInstall*
-   GP path: *Windows Components/Store*
-   GP ADMX file name: *WindowsStore.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="applicationmanagement-allowdeveloperunlock"></a>**ApplicationManagement/AllowDeveloperUnlock**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
Specifies whether developer unlock is allowed.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allows development of Windows Store apps and installing them from an integrated development environment (IDE)*
-   GP name: *AllowDevelopmentWithoutDevLicense*
-   GP path: *Windows Components/App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Explicit deny.
-   1 - Explicit allow unlock.
-   65535 (default) - Not configured.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="applicationmanagement-allowgamedvr"></a>**ApplicationManagement/AllowGameDVR**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.

Specifies whether DVR and broadcasting is allowed.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Enables or disables Windows Game Recording and Broadcasting*
-   GP name: *AllowGameDVR*
-   GP path: *Windows Components/Windows Game Recording and Broadcasting*
-   GP ADMX file name: *GameDVR.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="applicationmanagement-allowshareduserappdata"></a>**ApplicationManagement/AllowSharedUserAppData**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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

[!INCLUDE [allow-windows-app-to-share-data-users-shortdesc](../../../browsers/edge/shortdesc/allow-windows-app-to-share-data-users-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow a Windows app to share application data between users*
-   GP name: *AllowSharedLocalAppData*
-   GP path: *Windows Components/App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Prevented/not allowed, but Microsoft Edge downloads book files to a per-user folder for each user. 
-   1 – Allowed. Microsoft Edge downloads book files into a shared folder. For this policy to work correctly, you must also enable the Allow a Windows app to share application data between users group policy.  Also, the users must be signed in with a school or work account.

Most restricted value: 0
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="applicationmanagement-allowstore"></a>**ApplicationManagement/AllowStore**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
Specifies whether app store is allowed at the device.

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
<a href="" id="applicationmanagement-applicationrestrictions"></a>**ApplicationManagement/ApplicationRestrictions**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop. For desktop devices, use the [AppLocker CSP](applocker-csp.md) instead.

 
An XML blob that specifies the application restrictions company want to put to the device. It could be an app allow list, app disallow list, allowed publisher IDs, and so on. For a list of Windows apps and product IDs, see [inbox apps](applocker-csp.md#inboxappsandcomponents). For more information about the XML, see the [ApplicationRestrictions XSD](applicationrestrictions-xsd.md).

> [!NOTE]
> When you upgrade Windows Phone 8.1 devices to Windows 10 Mobile with a list of allowed apps, some Windows inbox apps get blocked causing unexpected behavior. To work around this issue, you must include the [inbox apps](applocker-csp.md#inboxappsandcomponents) that you need to your list of allowed apps.
>
> Here's additional guidance for the upgrade process:
>
>  -   Use Windows 10 product IDs for the apps listed in [inbox apps](applocker-csp.md#inboxappsandcomponents).
>  -   Use the new Microsoft publisher name (PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US") and Publisher="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" if you are using the publisher policy. Do not remove the Windows  Phone 8.1 publisher if you are using it.
>  -   In the SyncML, you must use lowercase product ID.
>  -   Do not duplicate a product ID. Messaging and Skype Video use the same product ID. Duplicates cause an error.
>  -   You cannot disable or enable **Contact Support** and **Windows Feedback** apps using ApplicationManagement/ApplicationRestrictions policy, although these are listed in the [inbox apps](applocker-csp.md#inboxappsandcomponents).


An application that is running may not be immediately terminated.

Value type is chr.

Value evaluation rule - The information for PolicyManager is opaque. There is no most restricted value evaluation. Whenever there is a change to the value, the device parses the node value and enforces specified policies.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="applicationmanagement-disablestoreoriginatedapps"></a>**ApplicationManagement/DisableStoreOriginatedApps**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Added in Windows 10, version 1607. Boolean value that disables the launch of all apps from Microsoft Store that came pre-installed or were downloaded.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Disable all apps from Microsoft Store *
-   GP name: *DisableStoreApps*
-   GP path: *Windows Components/Store*
-   GP ADMX file name: *WindowsStore.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Enable launch of apps.
-   1 – Disable launch of apps.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="applicationmanagement-launchappafterlogon"></a>**ApplicationManagement/LaunchAppAfterLogOn**  

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
List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are launched after logon. This policy allows the IT admin to specify a list of applications that users can run after logging on to the device.

For this policy to work, the Windows apps need to declare in their manifest that they will use the start up task. Example of the declaration here: 

``` syntax
<desktop:Extension Category="windows.startupTask"> 
   <desktop:StartupTask TaskId="CoffeeStartupTask" Enabled="true" DisplayName="ms-resource:Description" /> 
</desktop:Extension>
```

> [!Note]  
> This policy only works on modern apps.

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
<a href="" id="applicationmanagement-msiallowusercontroloverinstall"></a>**ApplicationManagement/MSIAllowUserControlOverInstall**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Added in Windows 10, version 1803. This policy setting permits users to change installation options that typically are available only to system administrators.

If you enable this policy setting, some of the security features of Windows Installer are bypassed. It permits installations to complete that otherwise would be halted due to a security violation.

If you disable or do not configure this policy setting, the security features of Windows Installer prevent users from changing installation options typically reserved for system administrators, such as specifying the directory to which files are installed.

If Windows Installer detects that an installation package has permitted the user to change a protected option, it stops the installation and displays a message. These security features operate only when the installation program is running in a privileged security context in which it has access to directories denied to the user.

This policy setting is designed for less restrictive environments. It can be used to circumvent errors in an installation program that prevents software from being installed.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow user control over installs*
-   GP name: *EnableUserControl*
-   GP path: *Windows Components/Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
This setting supports a range of values between 0 and 1.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="applicationmanagement-msialwaysinstallwithelevatedprivileges"></a>**ApplicationManagement/MSIAlwaysInstallWithElevatedPrivileges**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. This policy setting directs Windows Installer to use elevated permissions when it installs any program on the system.

If you enable this policy setting, privileges are extended to all programs. These privileges are usually reserved for programs that have been assigned to the user (offered on the desktop), assigned to the computer (installed automatically), or made available in Add or Remove Programs in Control Panel. This profile setting lets users install programs that require access to directories that the user might not have permission to view or change, including directories on highly restricted computers.

If you disable or do not configure this policy setting, the system applies the current user's permissions when it installs programs that a system administrator does not distribute or offer.

Note: This policy setting appears both in the Computer Configuration and User Configuration folders. To make this policy setting effective, you must enable it in both folders.

Caution: Skilled users can take advantage of the permissions this policy setting grants to change their privileges and gain permanent access to restricted files and folders. Note that the User Configuration version of this policy setting is not guaranteed to be secure.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Always install with elevated privileges*
-   GP name: *AlwaysInstallElevated*
-   GP path: *Windows Components/Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
This setting supports a range of values between 0 and 1.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="applicationmanagement-requireprivatestoreonly"></a>**ApplicationManagement/RequirePrivateStoreOnly**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows disabling of the retail catalog and only enables the Private store.


Most restricted value is 1.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Only display the private store within the Microsoft Store*
-   GP name: *RequirePrivateStoreOnly*
-   GP path: *Windows Components/Store*
-   GP ADMX file name: *WindowsStore.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Allow both public and Private store.
-   1 – Only Private store is enabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="applicationmanagement-restrictappdatatosystemvolume"></a>**ApplicationManagement/RestrictAppDataToSystemVolume**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
Specifies whether application data is restricted to the system drive.

Most restricted value is 1.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Prevent users' app data from being stored on non-system volumes*
-   GP name: *RestrictAppDataToSystemVolume*
-   GP path: *Windows Components/App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Not restricted.
-   1 – Restricted.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="applicationmanagement-restrictapptosystemvolume"></a>**ApplicationManagement/RestrictAppToSystemVolume**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
Specifies whether the installation of applications is restricted to the system drive.

Most restricted value is 1.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Disable installing Windows apps on non-system volumes*
-   GP name: *DisableDeploymentToNonSystemVolumes*
-   GP path: *Windows Components/App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Not restricted.
-   1 – Restricted.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="applicationmanagement-scheduleforcerestartforupdatefailures"></a>**ApplicationManagement/ScheduleForceRestartForUpdateFailures**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
To ensure apps are up-to-date, this policy allows the admins to set a recurring or one time date to restart apps whose update failed due to the app being in use allowing the update to be applied. 

Value type is string.
<!--/Description-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->
Sample SyncML:

``` syntax
<SyncML xmlns="SYNCML:SYNCML1.1"> 
  <SyncBody> 
    <Add> 
      <CmdID>2</CmdID> 
      <Item> 
        <Target>  
          <LocURI> ./Device/Vendor/MSFT/Policy/Config/ApplicationManagement/ScheduleForceRestartForUpdateFailures 
          </LocURI>  
        </Target> 
        <Meta> 
          <Format xmlns="syncml:metinf">xml</Format> 
        </Meta> 
        <Data> 
          <ForceRestart StartDateTime="2018-03-28T22:21:52Z"  
                        Recurrence="[none/daily/weekly/monthly]"  
                        DayOfWeek=”1”  
                        DayOfMonth=”12”  
                        RunIfTaskIsMissed=”1”/> 
        </Data> 
      </Item> 
    </Add> 
  </SyncBody> 
</SycnML>
```
XSD:

``` syntax
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:simpleType name="recurrence" final="restriction">
    <xs:restriction base="xs:string">
        <xs:enumeration value="None" />
        <xs:enumeration value="Daily" />
        <xs:enumeration value="Weekly" />
        <xs:enumeration value="Monthly" />
    </xs:restriction>
  </xs:simpleType>

  <xs:simpleType name="daysOfWeek" final="restriction">
    <xs:restriction base="xs:unsignedByte">
      <xs:minInclusive value="1" />
      <xs:maxInclusive value="127" />
    </xs:restriction>
  </xs:simpleType>

  <xs:simpleType name="daysOfMonth" final="restriction">
    <xs:restriction base="xs:unsignedInt">
      <xs:minInclusive value="1" />
    </xs:restriction>
  </xs:simpleType>

  <xs:element name="ForceRestart">
    <xs:complexType>
      <xs:attribute name="StartDateTime" type="xs:dateTime" use="required"/> 
      <xs:attribute name="Recurrence" type="recurrence" use="required"/> 
      <xs:attribute name="RunIfTaskIsMissed" type="xs:boolean" use="required"/> 
      <xs:attribute name="DaysOfWeek" type="daysOfWeek"/> 
      <xs:attribute name="DaysOfMonth" type="daysOfMonth"/> 
    </xs:complexType>
  </xs:element>
</xs:schema>
```

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<!--/Policies-->
<!--StartHoloLens-->
## <a href="" id="hololenspolicies"></a>ApplicationManagement policies supported by Windows Holographic

- [ApplicationManagement/AllowAppStoreAutoUpdate](#applicationmanagement-allowappstoreautoupdate)
- [ApplicationManagement/AllowDeveloperUnlock](#applicationmanagement-allowdeveloperunlock)
- [ApplicationManagement/AllowAllTrustedApps](#applicationmanagement-allowalltrustedapps)
<!--EndHoloLens-->

<!--StartHoloLensBusiness-->  
## <a href="" id="hololenbusinessspolicies"></a>ApplicationManagement policies supported by Windows Holographic for Business

- [ApplicationManagement/AllowAppStoreAutoUpdate](#applicationmanagement-allowappstoreautoupdate)
- [ApplicationManagement/AllowDeveloperUnlock](#applicationmanagement-allowdeveloperunlock)
- [ApplicationManagement/AllowAllTrustedApps](#applicationmanagement-allowalltrustedapps)
<!--EndHoloLensBusiness-->

<hr/>

Footnotes:

- 1 - Added in Windows 10, version 1607.
- 2 - Added in Windows 10, version 1703.
- 3 - Added in Windows 10, version 1709.
- 4 - Added in Windows 10, version 1803.
- 5 - Added in Windows 10, version 1809.
- 6 - Added in the next major release of Windows 10.
