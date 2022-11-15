---
title: Policy CSP - ADMX_Programs
description: Learn about Policy CSP - ADMX_Programs.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 12/01/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_Programs

>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_Programs policies

<dl>
  <dd>
    <a href="#admx-programs-nodefaultprograms">ADMX_Programs/NoDefaultPrograms</a>
  </dd>
  <dd>
    <a href="#admx-programs-nogetprograms">ADMX_Programs/NoGetPrograms</a>
  </dd>
  <dd>
    <a href="#admx-programs-noinstalledupdates">ADMX_Programs/NoInstalledUpdates</a>
  </dd>
  <dd>
    <a href="#admx-programs-noprogramsandfeatures">ADMX_Programs/NoProgramsAndFeatures</a>
  </dd>
  <dd>
    <a href="#admx-programs-noprogramscpl">ADMX_Programs/NoProgramsCPL</a>
  </dd>
  <dd>
    <a href="#admx-programs-nowindowsfeatures">ADMX_Programs/NoWindowsFeatures</a>
  </dd>
  <dd>
    <a href="#admx-programs-nowindowsmarketplace">ADMX_Programs/NoWindowsMarketplace</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-programs-nodefaultprograms"></a>**ADMX_Programs/NoDefaultPrograms**

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
This setting removes the Set Program Access and Defaults page from the Programs Control Panel. As a result, users can't view or change the associated page.

The Set Program Access and Computer Defaults page allows administrators to specify default programs for certain activities, such as Web browsing or sending e-mail, as well as specify the programs that are accessible from the Start menu, desktop, and other locations.

If this setting is disabled or not configured, the "Set Program Access and Defaults" button is available to all users.

This setting doesn't prevent users from using other tools and methods to change program access or defaults.

This setting doesn't prevent the Default Programs icon from appearing on the Start menu.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide "Set Program Access and Computer Defaults" page*
-   GP name: *NoDefaultPrograms*
-   GP path: *Control Panel\Programs*
-   GP ADMX file name: *Programs.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-programs-nogetprograms"></a>**ADMX_Programs/NoGetPrograms**

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
Prevents users from viewing or installing published programs from the network.

This setting prevents users from accessing the "Get Programs" page from the Programs Control Panel in Category View, Programs and Features in Classic View and the "Install a program from the network" task. The "Get Programs" page lists published programs and provides an easy way to install them.

Published programs are those programs that the system administrator has explicitly made available to the user with a tool such as Windows Installer. Typically, system administrators publish programs to notify users of their availability, to recommend their use, or to enable users to install them without having to search for installation files.

If this setting is enabled, users can't view the programs that have been published by the system administrator, and they can't use the "Get Programs" page to install published programs.  Enabling this feature doesn't prevent users from installing programs by using other methods.  Users will still be able to view and installed assigned (partially installed) programs that are offered on the desktop or on the Start menu.

If this setting is disabled or isn't configured, the "Install a program from the network" task to the "Get Programs" page will be available to all users.

> [!NOTE]
> If the "Hide Programs Control Panel" setting is enabled, this setting is ignored.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide "Get Programs" page*
-   GP name: *NoGetPrograms*
-   GP path: *Control Panel\Programs*
-   GP ADMX file name: *Programs.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-programs-noinstalledupdates"></a>**ADMX_Programs/NoInstalledUpdates**

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
This setting prevents users from accessing "Installed Updates" page from the "View installed updates" task.

"Installed Updates" allows users to view and uninstall updates currently installed on the computer. The updates are often downloaded directly from Windows Update or from various program publishers.

If this setting is disabled or not configured, the "View installed updates" task and the "Installed Updates" page will be available to all users.

This setting doesn't prevent users from using other tools and methods to install or uninstall programs.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide "Installed Updates" page*
-   GP name: *NoInstalledUpdates*
-   GP path: *Control Panel\Programs*
-   GP ADMX file name: *Programs.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-programs-noprogramsandfeatures"></a>**ADMX_Programs/NoProgramsAndFeatures**

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
This setting prevents users from accessing "Programs and Features" to view, uninstall, change, or repair programs that are currently installed on the computer.

If this setting is disabled or not configured, "Programs and Features" will be available to all users.

This setting doesn't prevent users from using other tools and methods to view or uninstall programs.  It also doesn't prevent users from linking to related Programs Control Panel Features including Windows Features, Get Programs, or Windows Marketplace.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide "Programs and Features" page*
-   GP name: *NoProgramsAndFeatures*
-   GP path: *Control Panel\Programs*
-   GP ADMX file name: *Programs.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-programs-noprogramscpl"></a>**ADMX_Programs/NoProgramsCPL**

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
This setting prevents users from using the Programs Control Panel in Category View and Programs and Features in Classic View.

The Programs Control Panel allows users to uninstall, change, and repair programs, enable and disable Windows Features, set program defaults, view installed updates, and purchase software from Windows Marketplace. Programs published or assigned to the user by the system administrator also appear in the Programs Control Panel.

If this setting is disabled or not configured, the Programs Control Panel in Category View and Programs and Features in Classic View will be available to all users.

When enabled, this setting takes precedence over the other settings in this folder.

This setting doesn't prevent users from using other tools and methods to install or uninstall programs.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide the Programs Control Panel*
-   GP name: *NoProgramsCPL*
-   GP path: *Control Panel\Programs*
-   GP ADMX file name: *Programs.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-programs-nowindowsfeatures"></a>**ADMX_Programs/NoWindowsFeatures**

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
This setting prevents users from accessing the "Turn Windows features on or off" task from the Programs Control Panel in Category View, Programs and Features in Classic View, and Get Programs. As a result, users can't view, enable, or disable various Windows features and services.

If this setting is disabled or isn't configured, the "Turn Windows features on or off" task will be available to all users.

This setting doesn't prevent users from using other tools and methods to configure services or enable or disable program components.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide "Windows Features"*
-   GP name: *NoWindowsFeatures*
-   GP path: *Control Panel\Programs*
-   GP ADMX file name: *Programs.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-programs-nowindowsmarketplace"></a>**ADMX_Programs/NoWindowsMarketplace**

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
This setting prevents users from access the "Get new programs from Windows Marketplace" task from the Programs Control Panel in Category View, Programs and Features in Classic View, and Get Programs.

Windows Marketplace allows users to purchase and/or download various programs to their computer for installation.

Enabling this feature doesn't prevent users from navigating to Windows Marketplace using other methods.

If this feature is disabled or isn't configured, the "Get new programs from Windows Marketplace" task link will be available to all users.

> [!NOTE]
> If the "Hide Programs control Panel" setting is enabled, this setting is ignored.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide "Windows Marketplace"*
-   GP name: *NoWindowsMarketplace*
-   GP path: *Control Panel\Programs*
-   GP ADMX file name: *Programs.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)