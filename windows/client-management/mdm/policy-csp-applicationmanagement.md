---
title: Policy CSP - ApplicationManagement
description: Learn about various Policy configuration service providers (CSP) - ApplicationManagement, including SyncML, for Windows 10.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 02/11/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ApplicationManagement

<hr/>

<!--Policies-->
## ApplicationManagement policies

<dl>
  <dd>
    <a href="#applicationmanagement-allowautomaticapparchiving">ApplicationManagement/AllowAutomaticAppArchiving</a>
  </dd>
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
    <a href="#applicationmanagement-blocknonadminuserinstall">ApplicationManagement/BlockNonAdminUserInstall</a>
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
<a href="" id="applicationmanagement-allowautomaticapparchiving"></a>**ApplicationManagement/AllowAutomaticAppArchiving**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls whether the system can archive infrequently used apps.

- If you enable this policy setting, then the system will periodically check for and archive infrequently used apps.
- If you disable this policy setting, then the system won't archive any apps.

If you don't configure this policy setting (default), then the system will follow default behavior, which is to periodically check for and archive infrequently used apps, and the user will be able to configure this setting themselves.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow all trusted apps to install*
-   GP name: *AllowAutomaticAppArchiving*
-   GP path: *Windows Components/App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Explicit disable.
-   1 - Explicit enable.
-   65535 (default) - Not configured.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="applicationmanagement-allowalltrustedapps"></a>**ApplicationManagement/AllowAllTrustedApps**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
Specifies whether non Microsoft Store apps are allowed.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow all trusted apps to install*
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
Specifies whether automatic update of apps from Microsoft Store is allowed.


Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Turn off Automatic Download and Install of updates*
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
Specifies whether developer unlock is allowed.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allows development of Windows Store apps and installing them from an integrated development environment (IDE)*
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
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.

Specifies whether DVR and broadcasting are allowed.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Enables or disables Windows Game Recording and Broadcasting*
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

[!INCLUDE [allow-windows-app-to-share-data-users-shortdesc](../includes/allow-windows-app-to-share-data-users-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow a Windows app to share application data between users*
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
<a href="" id="applicationmanagement-blocknonadminuserinstall"></a>**ApplicationManagement/BlockNonAdminUserInstall**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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


Manages non-administrator users' ability to install Windows app packages.

If you enable this policy, non-administrators will be unable to initiate installation of Windows app packages. Administrators who wish to install an app will need to do so from an Administrator context (for example, an Administrator PowerShell window). All users will still be able to install Windows app packages via the Microsoft Store, if permitted by other policies.

If you disable or don't configure this policy, all users will be able to initiate installation of Windows app packages.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Prevent non-admin users from installing packaged Windows apps*
-   GP name: *BlockNonAdminUserInstall*
-   GP path: *Windows Components/App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:
- 0 (default) - Disabled. All users will be able to initiate installation of Windows app packages.
- 1 - Enabled. Non-administrator users won't be able to initiate installation of Windows app packages.
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="applicationmanagement-disablestoreoriginatedapps"></a>**ApplicationManagement/DisableStoreOriginatedApps**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
|Business|No|No|
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
Added in Windows 10, version 1607. Boolean value that disables the launch of all apps from Microsoft Store that came pre-installed or were downloaded.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Disable all apps from Microsoft Store*
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
List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are launched after a sign in. This policy allows the IT admin to specify a list of applications that users can run after logging on to the device.

For this policy to work, the Windows apps need to declare in their manifest that they'll use the startup task. Example of the declaration here:

```xml
<desktop:Extension Category="windows.startupTask">
   <desktop:StartupTask TaskId="CoffeeStartupTask" Enabled="true" DisplayName="ms-resource:Description" />
</desktop:Extension>
```

> [!NOTE]
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

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|No|No|
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
Added in Windows 10, version 1803. This policy setting permits users to change installation options that typically are available only to system administrators.

If you enable this policy setting, some of the security features of Windows Installer are bypassed. It permits installations to complete that otherwise would be halted due to a security violation.

If you disable or don't configure this policy setting, the security features of Windows Installer prevent users from changing installation options typically reserved for system administrators, such as specifying the directory to which files are installed.

If Windows Installer detects that an installation package has permitted the user to change a protected option, it stops the installation and displays a message. These security features operate only when the installation program is running in a privileged security context in which it has access to directories denied to the user.

This policy setting is designed for less restrictive environments. It can be used to circumvent errors in an installation program that prevents software from being installed.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow user control over installs*
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

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|No|No|
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
Added in Windows 10, version 1803. This policy setting directs Windows Installer to use elevated permissions when it installs any program on the system.

If you enable this policy setting, privileges are extended to all programs. These privileges are reserved for programs that have been assigned to the user (offered on the desktop), assigned to the computer (installed automatically), or made available in Add or Remove Programs in Control Panel. This profile setting lets users install programs that require access to directories that the user might not have permission to view or change, including directories on highly restricted computers.

If you disable or don't configure this policy setting, the system applies the current user's permissions when it installs programs that a system administrator doesn't distribute or offer.

> [!NOTE]
> This policy setting appears both in the Computer Configuration and User Configuration folders. To make this policy setting effective, you must enable it in both folders.

> [!CAUTION]
> Skilled users can take advantage of the permissions this policy setting grants to change their privileges and gain permanent access to restricted files and folders. Note that the User Configuration version of this policy setting is not guaranteed to be secure.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Always install with elevated privileges*
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

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
|Business|No|No|
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
Allows disabling of the retail catalog and only enables the Private store.


Most restricted value is 1.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Only display the private store within the Microsoft Store*
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
Specifies whether application data is restricted to the system drive.

Most restricted value is 1.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Prevent users' app data from being stored on non-system volumes*
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
Specifies whether the installation of applications is restricted to the system drive.

Most restricted value is 1.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Disable installing Windows apps on non-system volumes*
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

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
|Business|No|No|
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
To ensure apps are up-to-date, this policy allows the admins to set a recurring or one time date to restart apps whose update failed due to the app being in use allowing the update to be applied.

Value type is string.
<!--/Description-->
<!--SupportedValues-->

> [!NOTE]
> The check for recurrence is done in a case sensitive manner. For instance the value needs to be “Daily” instead of “daily”. The wrong case will cause SmartRetry to fail to execute.

<!--/SupportedValues-->
<!--Example-->
Sample SyncML:

```xml
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
                        Recurrence="[None/Daily/Weekly/Monthly]"
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

```xml
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
<hr/>


<!--/Policies-->

