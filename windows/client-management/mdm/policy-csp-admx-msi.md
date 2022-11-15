---
title: Policy CSP - ADMX_MSI
description: Learn about Policy CSP - ADMX_MSI.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 12/16/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_MSI
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_MSI policies

<dl>
  <dd>
    <a href="#admx-msi-allowlockdownbrowse">ADMX_MSI/AllowLockdownBrowse</a>
  </dd>
  <dd>
    <a href="#admx-msi-allowlockdownmedia">ADMX_MSI/AllowLockdownMedia</a>
  </dd>
  <dd>
    <a href="#admx-msi-allowlockdownpatch">ADMX_MSI/AllowLockdownPatch</a>
  </dd>
  <dd>
    <a href="#admx-msi-disableautomaticapplicationshutdown">ADMX_MSI/DisableAutomaticApplicationShutdown</a>
  </dd>
    <dd>
    <a href="#admx-msi-disablebrowse">ADMX_MSI/DisableBrowse</a>
  </dd>
  <dd>
    <a href="#admx-msi-disableflyweightpatching">ADMX_MSI/DisableFlyweightPatching</a>
  </dd>
    <dd>
    <a href="#admx-msi-disableloggingfrompackage">ADMX_MSI/DisableLoggingFromPackage</a>
  </dd>
    <dd>
    <a href="#admx-msi-disablemsi">ADMX_MSI/DisableMSI</a>
  </dd>
    <dd>
    <a href="#admx-msi-disablemedia">ADMX_MSI/DisableMedia</a>
  </dd>
    <dd>
    <a href="#admx-msi-disablepatch">ADMX_MSI/DisablePatch</a>
  </dd>
    <dd>
    <a href="#admx-msi-disablerollback-1">ADMX_MSI/DisableRollback_1</a>
  </dd>
    <dd>
    <a href="#admx-msi-disablerollback-2">ADMX_MSI/DisableRollback_2</a>
  </dd>
    <dd>
    <a href="#admx-msi-disablesharedcomponent">ADMX_MSI/DisableSharedComponent</a>
  </dd>
    <dd>
    <a href="#admx-msi-msilogging">ADMX_MSI/MSILogging</a>
  </dd>
    <dd>
    <a href="#admx-msi-msi-disableluapatching">ADMX_MSI/MSI_DisableLUAPatching</a>
  </dd>
    <dd>
    <a href="#admx-msi-msi-disablepatchuninstall">ADMX_MSI/MSI_DisablePatchUninstall</a>
  </dd>
    <dd>
    <a href="#admx-msi-msi-disablesrcheckpoints">ADMX_MSI/MSI_DisableSRCheckPoints</a>
  </dd>
    <dd>
    <a href="#admx-msi-msi-disableuserinstalls">ADMX_MSI/MSI_DisableUserInstalls</a>
  </dd>
    <dd>
    <a href="#admx-msi-msi-enforceupgradecomponentrules">ADMX_MSI/MSI_EnforceUpgradeComponentRules</a>
  </dd>
    <dd>
    <a href="#admx-msi-msi-maxpatchcachesize">ADMX_MSI/MSI_MaxPatchCacheSize</a>
  </dd>
    <dd>
    <a href="#admx-msi-msidisableembeddedui">ADMX_MSI/MsiDisableEmbeddedUI</a>
  </dd>
    <dd>
    <a href="#admx-msi-safeforscripting">ADMX_MSI/SafeForScripting</a>
  </dd>
    <dd>
    <a href="#admx-msi-searchorder">ADMX_MSI/SearchOrder</a>
  </dd>
    <dd>
    <a href="#admx-msi-transformssecure">ADMX_MSI/TransformsSecure</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="admx-msi-allowlockdownbrowse"></a>**ADMX_MSI/AllowLockdownBrowse**

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
This policy setting allows users to search for installation files during privileged installations.

If you enable this policy setting, the Browse button in the "Use feature from" dialog box is enabled. As a result, users can search for installation files even when the installation program is running with elevated system privileges.

Because the installation is running with elevated system privileges, users can browse through directories that their own permissions wouldn't allow.

This policy setting doesn't affect installations that run in the user's security context. Also, see the "Remove browse dialog box for new source" policy setting.

If you disable or don't configure this policy setting, by default, only system administrators can browse during installations with elevated privileges, such as installations offered on the desktop or displayed in Add or Remove Programs.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow users to browse for source while elevated*
-   GP name: *AllowLockdownBrowse*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-msi-allowlockdownmedia"></a>**ADMX_MSI/AllowLockdownMedia**

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
This policy setting allows users to install programs from removable media during privileged installations.

If you enable this policy setting, all users are permitted to install programs from removable media, such as floppy disks and CD-ROMs, even when the installation program is running with elevated system privileges.

This policy setting doesn't affect installations that run in the user's security context. By default, users can install from removable media when the installation runs in their own security context.

If you disable or don't configure this policy setting, users can install programs from removable media by default, only when the installation runs in the user's security context. During privileged installations, such as those offered on the desktop or displayed in Add or Remove Programs, only system administrators can install from removable media.

Also, see the "Prevent removable media source for any install" policy setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow users to use media source while elevated*
-   GP name: *AllowLockdownMedia*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-msi-allowlockdownpatch"></a>**ADMX_MSI/AllowLockdownPatch**

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
This policy setting allows users to patch elevated products.

If you enable this policy setting, all users are permitted to install patches, even when the installation program is running with elevated system privileges. Patches are updates or upgrades that replace only those program files that have changed. Because patches can easily be vehicles for malicious programs, some installations prohibit their use.

If you disable or don't configure this policy setting, by default, only system administrators can apply patches during installations with elevated privileges, such as installations offered on the desktop or displayed in Add or Remove Programs.

This policy setting doesn't affect installations that run in the user's security context. By default, users can install patches to programs that run in their own security context. Also, see the "Prohibit patching" policy setting.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow users to patch elevated products*
-   GP name: *AllowLockdownPatch*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-msi-disableautomaticapplicationshutdown"></a>**ADMX_MSI/DisableAutomaticApplicationShutdown**

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
This policy setting controls Windows Installer's interaction with the Restart Manager. The Restart Manager API can eliminate or reduce the number of system restarts that are required to complete an installation or update.

If you enable this policy setting, you can use the options in the Prohibit Use of Restart Manager box to control file in use detection behavior.

- The "Restart Manager On" option instructs Windows Installer to use Restart Manager to detect files in use and mitigate a system restart, when possible.

- The "Restart Manager Off" option turns off Restart Manager for file in use detection and the legacy file in use behavior is used.

- The "Restart Manager Off for Legacy App Setup" option applies to packages that were created for Windows Installer versions lesser than 4.0. This option lets those packages display the legacy files in use UI while still using Restart Manager for detection.

If you disable or don't configure this policy setting, Windows Installer will use Restart Manager to detect files in use and mitigate a system restart, when possible.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GGP Friendly name: *Prohibit use of Restart Manager*
-   GP name: *DisableAutomaticApplicationShutdown*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-msi-disablebrowse"></a>**ADMX_MSI/DisableBrowse**

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
This policy setting prevents users from searching for installation files when they add features or components to an installed program.

If you enable this policy setting, the Browse button beside the "Use feature from" list in the Windows Installer dialog box is disabled. As a result, users must select an installation file source from the "Use features from" list that the system administrator configures.

This policy setting applies even when the installation is running in the user's security context.

If you disable or don't configure this policy setting, the Browse button is enabled when an installation is running in the user's security context. But only system administrators can browse when an installation is running with elevated system privileges, such as installations offered on the desktop or in Add or Remove Programs.

This policy setting affects Windows Installer only. It doesn't prevent users from selecting other browsers, such as File Explorer or Network Locations, to search for installation files.

Also, see the "Enable user to browse for source while elevated" policy setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove browse dialog box for new source*
-   GP name: *DisableBrowse*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-msi-disableflyweightpatching"></a>**ADMX_MSI/DisableFlyweightPatching**

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
This policy setting controls the ability to turn off all patch optimizations.

If you enable this policy setting, all Patch Optimization options are turned off during the installation.

If you disable or don't configure this policy setting, it enables faster application of patches by removing execution of unnecessary actions. The flyweight patching mode is primarily designed for patches that just update a few files or registry values. The Installer will analyze the patch for specific changes to determine if optimization is possible. If so, the patch will be applied using a minimal set of processing.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prohibit flyweight patching*
-   GP name: *DisableFlyweightPatching*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-msi-disableloggingfrompackage"></a>**ADMX_MSI/DisableLoggingFromPackage**

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
This policy setting controls Windows Installer's processing of the MsiLogging property. The MsiLogging property in an installation package can be used to enable automatic logging of all install operations for the package.

If you enable this policy setting, you can use the options in the Disable logging via package settings box to control automatic logging via package settings behavior.

- The "Logging via package settings on" option instructs Windows Installer to automatically generate log files for packages that include the MsiLogging property.

- The "Logging via package settings off" option turns off the automatic logging behavior when specified via the MsiLogging policy. Log files can still be generated using the logging command line switch or the Logging policy.

If you disable or don't configure this policy setting, Windows Installer will automatically generate log files for those packages that include the MsiLogging property.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off logging via package settings*
-   GP name: *DisableLoggingFromPackage*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-msi-disablemsi"></a>**ADMX_MSI/DisableMSI**

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
This policy setting restricts the use of Windows Installer.

If you enable this policy setting, you can prevent users from installing software on their systems or permit users to install only those programs offered by a system administrator. You can use the options in the Disable Windows Installer box to establish an installation setting.

- The "Never" option indicates Windows Installer is fully enabled. Users can install and upgrade software.

- The "For non-managed applications only" option permits users to install only those programs that a system administrator assigns (offers on the desktop) or publishes (adds them to Add or Remove Programs). This option's induced behavior is the default behavior of Windows Installer on Windows Server 2003 family when the policy isn't configured.

- The "Always" option indicates that Windows Installer is disabled.

This policy setting affects Windows Installer only. It doesn't prevent users from using other methods to install and upgrade programs.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Windows Installer*
-   GP name: *DisableMSI*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-msi-disablemedia"></a>**ADMX_MSI/DisableMedia**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents users from installing any programs from removable media.

If you enable this policy setting, if a user tries to install a program from removable media, such as CD-ROMs, floppy disks, and DVDs, a message appears stating that the feature can't be found.

This policy setting applies even when the installation is running in the user's security context.

If you disable or don't configure this policy setting, users can install from removable media when the installation is running in their own security context, but only system administrators can use removable media when an installation is running with elevated system privileges, such as installations offered on the desktop or in Add or Remove Programs.

Also, see the "Enable user to use media source while elevated" and "Hide the 'Add a program from CD-ROM or floppy disk' option" policy settings.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent removable media source for any installation*
-   GP name: *DisableMedia*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-msi-disablepatch"></a>**ADMX_MSI/DisablePatch**

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
This policy setting prevents users from using Windows Installer to install patches.

If you enable this policy setting, users are prevented from using Windows Installer to install patches. Patches are updates or upgrades that replace only those program files that have changed. Because patches can be easy vehicles for malicious programs, some installations prohibit their use.

> [!NOTE]
> This policy setting applies only to installations that run in the user's security context.

If you disable or don't configure this policy setting, by default, users who aren't system administrators can't apply patches to installations that run with elevated system privileges, such as those offered on the desktop or in Add or Remove Programs.

Also, see the "Enable user to patch elevated products" policy setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent users from using Windows Installer to install updates and upgrades*
-   GP name: *DisablePatch*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-msi-disablerollback-1"></a>**ADMX_MSI/DisableRollback_1**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prohibits Windows Installer from generating and saving the files it needs to reverse an interrupted or unsuccessful installation.

If you enable this policy setting, Windows Installer is prevented from recording the original state of the system and sequence of changes it makes during installation. It also prevents Windows Installer from retaining files it intends to delete later. As a result, Windows Installer can't restore the computer to its original state if the installation doesn't complete.

This policy setting is designed to reduce the amount of temporary disk space required to install programs. Also, it prevents malicious users from interrupting an installation to gather data about the internal state of the computer or to search secure system files. However, because an incomplete installation can render the system or a program inoperable, don't use this policy setting unless it's essential.

This policy setting appears in the Computer Configuration and User Configuration folders. If the policy setting is enabled in either folder, it's considered to be enabled, even if it's explicitly disabled in the other folder.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prohibit rollback*
-   GP name: *DisableRollback_1*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-msi-disablerollback-2"></a>**ADMX_MSI/DisableRollback_2**

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
This policy setting prohibits Windows Installer from generating and saving the files it needs to reverse an interrupted or unsuccessful installation.

If you enable this policy setting, Windows Installer is prevented from recording the original state of the system and sequence of changes it makes during installation. It also prevents Windows Installer from retaining files it intends to delete later. As a result, Windows Installer can't restore the computer to its original state if the installation doesn't complete.

This policy setting is designed to reduce the amount of temporary disk space required to install programs. Also, it prevents malicious users from interrupting an installation to gather data about the internal state of the computer or to search secure system files. However, because an incomplete installation can render the system or a program inoperable, don't use this policy setting unless it's essential.

This policy setting appears in the Computer Configuration and User Configuration folders. If the policy setting is enabled in either folder, it's considered to be enabled, even if it's explicitly disabled in the other folder.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prohibit rollback*
-   GP name: *DisableRollback_2*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-msi-disablesharedcomponent"></a>**ADMX_MSI/DisableSharedComponent**

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
This policy setting controls the ability to turn off shared components.

If you enable this policy setting, no packages on the system get the shared component functionality enabled by the msidbComponentAttributesShared attribute in the Component Table.

If you disable or don't configure this policy setting, by default, the shared component functionality is allowed.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off shared components*
-   GP name: *DisableSharedComponent*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-msi-msilogging"></a>**ADMX_MSI/MSILogging**

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
Specifies the types of events that Windows Installer records in its transaction log for each installation. The log, Msi.log, appears in the Temp directory of the system volume.

When you enable this policy setting, you can specify the types of events you want Windows Installer to record. To indicate that an event type is recorded, type the letter representing the event type. You can type the letters in any order and list as many or as few event types as you want.

To disable logging, delete all of the letters from the box.

If you disable or don't configure this policy setting, Windows Installer logs the default event types, represented by the letters "iweap."

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify the types of events Windows Installer records in its transaction log*
-   GP name: *MSILogging*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-msi-msi-disableluapatching"></a>**ADMX_MSI/MSI_DisableLUAPatching**

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
This policy setting controls the ability of non-administrators to install updates that have been digitally signed by the application vendor.

Non-administrator updates provide a mechanism for the author of an application to create digitally signed updates that can be applied by non-privileged users.

If you enable this policy setting, only administrators or users with administrative privileges can apply updates to Windows Installer based applications.

If you disable or don't configure this policy setting, users without administrative privileges can install non-administrator updates.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prohibit non-administrators from applying vendor signed updates*
-   GP name: *MSI_DisableLUAPatching*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-msi-msi-disablepatchuninstall"></a>**ADMX_MSI/MSI_DisablePatchUninstall**

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
This policy setting controls the ability for users or administrators to remove Windows Installer based updates.

This policy setting should be used if you need to maintain a tight control over updates. One example is a lockdown environment where you want to ensure that updates once installed can't be removed by users or administrators.

If you enable this policy setting, updates can't be removed from the computer by a user or an administrator. The Windows Installer can still remove an update that is no longer applicable to the product.

If you disable or don't configure this policy setting, a user can remove an update from the computer only if the user has been granted privileges to remove the update. This grant of privileges can depend on whether the user is an administrator, whether "Disable Windows Installer" and "Always install with elevated privileges" policy settings are set, and whether the update was installed in a per-user managed, per-user unmanaged, or per-machine context."

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prohibit removal of updates*
-   GP name: *MSI_DisablePatchUninstall*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-msi-msi-disablesrcheckpoints"></a>**ADMX_MSI/MSI_DisableSRCheckPoints**

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
This policy setting prevents Windows Installer from creating a System Restore checkpoint each time an application is installed. System Restore enables users - when a problem occurs - to restore their computers to a previous state without losing personal data files.

If you enable this policy setting, the Windows Installer doesn't generate System Restore checkpoints when installing applications.

If you disable or don't configure this policy setting, by default, the Windows Installer automatically creates a System Restore checkpoint each time an application is installed, so that users can restore their computer to the state it was in before installing the application.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off creation of System Restore checkpoints*
-   GP name: *MSI_DisableSRCheckPoints*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-msi-msi-disableuserinstalls"></a>**ADMX_MSI/MSI_DisableUserInstalls**

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
This policy setting allows you to configure user installs. To configure this policy setting, set it to enabled and use the drop-down list to select the behavior you want.

If you don't configure this policy setting, or if the policy setting is enabled and "Allow User Installs" is selected, the installer allows and makes use of products that are installed per user, and products that are installed per computer. If the installer finds a per-user install of an application, the per-computer installation of that same product is hidden.

If you enable this policy setting and "Hide User Installs" is selected, the installer ignores per-user applications. This behavior of the installer causes a per-computer installed application to be visible to users, even if those users have a per-user install of the product registered in their user profile.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prohibit User Installs*
-   GP name: *MSI_DisableUserInstalls*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-msi-msi-enforceupgradecomponentrules"></a>**ADMX_MSI/MSI_EnforceUpgradeComponentRules**

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
This policy setting causes the Windows Installer to enforce strict rules for component upgrades.

If you enable this policy setting, strict upgrade rules will be enforced by the Windows Installer, which may cause some upgrades to fail. Upgrades can fail if they attempt to do one of the following steps:

(1) Remove a component from a feature.
This removal can also occur if you change the GUID of a component. The component identified by the original GUID appears to be removed and the component as identified by the new GUID appears as a new component.

(2) Add a new feature to the top or middle of an existing feature tree.
The new feature must be added as a new leaf feature to an existing feature tree.

If you disable or don't configure this policy setting, the Windows Installer will use less restrictive rules for component upgrades.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enforce upgrade component rules*
-   GP name: *MSI_EnforceUpgradeComponentRules*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-msi-msi-maxpatchcachesize"></a>**ADMX_MSI/MSI_MaxPatchCacheSize**

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
This policy controls the percentage of disk space available to the Windows Installer baseline file cache.

The Windows Installer uses the baseline file cache to save baseline files modified by binary delta difference updates. The cache is used to retrieve the baseline file for future updates. The cache eliminates user prompts for source media when new updates are applied.

If you enable this policy setting, you can modify the maximum size of the Windows Installer baseline file cache.

If you set the baseline cache size to 0, the Windows Installer will stop populating the baseline cache for new updates. The existing cached files will remain on disk and will be deleted when the product is removed.

If you set the baseline cache to 100, the Windows Installer will use available free space for the baseline file cache.

If you disable or don't configure this policy setting, the Windows Installer will use a default value of 10 percent for the baseline file cache maximum size.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Control maximum size of baseline file cache*
-   GP name: *MSI_MaxPatchCacheSize*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-msi-msidisableembeddedui"></a>**ADMX_MSI/MsiDisableEmbeddedUI**

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
This policy setting controls the ability to prevent embedded UI.

If you enable this policy setting, no packages on the system can run embedded UI.

If you disable or don't configure this policy setting, embedded UI is allowed to run.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent embedded UI*
-   GP name: *MsiDisableEmbeddedUI*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-msi-safeforscripting"></a>**ADMX_MSI/SafeForScripting**

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
This policy setting allows Web-based programs to install software on the computer without notifying the user.

If you disable or don't configure this policy setting, by default, when a script hosted by an Internet browser tries to install a program on the system, the system warns users and allows them to select or refuse the installation.

If you enable this policy setting, the warning is suppressed and allows the installation to proceed.

This policy setting is designed for enterprises that use Web-based tools to distribute programs to their employees. However, because this policy setting can pose a security risk, it should be applied cautiously.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent Internet Explorer security prompt for Windows Installer scripts*
-   GP name: *SafeForScripting*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-msi-searchorder"></a>**ADMX_MSI/SearchOrder**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies the order in which Windows Installer searches for installation files.

If you disable or don't configure this policy setting, by default, the Windows Installer searches the network first, then removable media (floppy drive, CD-ROM, or DVD), and finally, the Internet (URL).

If you enable this policy setting, you can change the search order by specifying the letters representing each file source in the order that you want Windows Installer to search:

- "n" represents the network
- "m" represents media
- "u" represents URL, or the Internet

To exclude a file source, omit or delete the letter representing that source type.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify the order in which Windows Installer searches for installation files*
-   GP name: *SearchOrder*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-msi-transformssecure"></a>**ADMX_MSI/TransformsSecure**

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
This policy setting saves copies of transform files in a secure location on the local computer.

Transform files consist of instructions to modify or customize a program during installation.

If you enable this policy setting, the transform file is saved in a secure location on the user's computer.

If you don't configure this policy setting on Windows Server 2003, Windows Installer requires the transform file in order to repeat an installation in which the transform file was used, therefore, the user must be using the same computer or be connected to the original or identical media to reinstall, remove, or repair the installation.

This policy setting is designed for enterprises to prevent unauthorized or malicious editing of transform files.

If you disable this policy setting, Windows Installer stores transform files in the Application Data directory in the user's profile.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Save copies of transform files in a secure location on workstation*
-   GP name: *TransformsSecure*
-   GP path: *Windows Components\Windows Installer*
-   GP ADMX file name: *MSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)