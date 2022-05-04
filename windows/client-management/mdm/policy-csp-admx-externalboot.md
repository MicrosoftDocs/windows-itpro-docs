---
title: Policy CSP - ADMX_ExternalBoot
description: Policy CSP - ADMX_ExternalBoot
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.localizationpriority: medium
ms.date: 09/13/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_ExternalBoot

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## Policy CSP - ADMX_ExternalBoot  

<dl>
  <dd>
    <a href="#admx-externalboot-portableoperatingsystem_hibernate">ADMX_ExternalBoot/PortableOperatingSystem_Hibernate
    </a>
  </dd>
  <dd>
    <a href="#admx-externalboot-portableoperatingsystem_sleep">ADMX_ExternalBoot/PortableOperatingSystem_Sleep
    </a>
  </dd>
  <dd>
    <a href="#admx-externalboot-portableoperatingsystem_launcher">ADMX_ExternalBoot/PortableOperatingSystem_Launcher
    </a>
  </dd>
<dl>

<hr/>

<!--Policy-->
<a href="" id="admx-externalboot-portableoperatingsystem_hibernate"></a>**ADMX_ExternalBoot/PortableOperatingSystem_Hibernate**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
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
This policy specifies whether the PC can use the hibernation sleep state (S4) when started from a Windows To Go workspace.  

- If you enable this setting, Windows, when started from a Windows To Go workspace, can hibernate the PC.  

- If you disable or don't configure this setting, Windows, when started from a Windows To Go workspace, and can't hibernate the PC.


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow hibernate (S4) when starting from a Windows To Go workspace*
-   GP name: *PortableOperatingSystem_Hibernate*
-   GP path: *Windows Components\Portable Operating System*
-   GP ADMX file name: *ExternalBoot.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-externalboot-portableoperatingsystem_sleep"></a>**ADMX_ExternalBoot/PortableOperatingSystem_Sleep**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
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
This policy specifies whether the PC can use standby sleep states (S1-S3) when starting from a Windows To Go workspace.  

If you enable this setting, Windows, when started from a Windows To Go workspace, can't use standby states to make the PC sleep.  

If you disable or don't configure this setting, Windows, when started from a Windows To Go workspace, can use standby states to make the PC sleep.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Disallow standby sleep states (S1-S3) when starting from a Windows to Go workspace*
-   GP name: *PortableOperatingSystem_Sleep*
-   GP path: *Windows Components\Portable Operating System*
-   GP ADMX file name: *ExternalBoot.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-externalboot-portableoperatingsystem_launcher"></a>**ADMX_ExternalBoot/PortableOperatingSystem_Launcher**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
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
This policy setting controls whether the PC will boot to Windows To Go if a USB device containing a Windows To Go workspace is connected, and controls whether users can make changes using the Windows To Go Startup Options Control Panel item.  

- If you enable this setting, booting to Windows To Go when a USB device is connected will be enabled, and users won't be able to make changes using the Windows To Go Startup Options Control Panel item.  

- If you disable this setting, booting to Windows To Go when a USB device is connected won't be enabled unless a user configures the option manually in the BIOS or other boot order configuration.  

If you don't configure this setting, users who are members of the Administrators group can make changes using the Windows To Go Startup Options Control Panel item.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Windows To Go Default Startup Options*
-   GP name: *PortableOperatingSystem_Launcher*
-   GP path: *Windows Components\Portable Operating System*
-   GP ADMX file name: *ExternalBoot.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<!--/Policies-->

