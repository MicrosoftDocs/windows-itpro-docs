---
title: Policy CSP - Autoplay
description: Learn how the Policy CSP - Autoplay setting disallows AutoPlay for MTP devices like cameras or phones.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - Autoplay

>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).


<hr/>

<!--Policies-->
## Autoplay policies  

<dl>
  <dd>
    <a href="#autoplay-disallowautoplayfornonvolumedevices">Autoplay/DisallowAutoplayForNonVolumeDevices</a>
  </dd>
  <dd>
    <a href="#autoplay-setdefaultautorunbehavior">Autoplay/SetDefaultAutoRunBehavior</a>
  </dd>
  <dd>
    <a href="#autoplay-turnoffautoplay">Autoplay/TurnOffAutoPlay</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="autoplay-disallowautoplayfornonvolumedevices"></a>**Autoplay/DisallowAutoplayForNonVolumeDevices**  

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
This policy setting disallows AutoPlay for MTP devices like cameras or phones.

If you enable this policy setting, AutoPlay is not allowed for MTP devices like cameras or phones.

If you disable or do not configure this policy setting, AutoPlay is enabled for non-volume devices.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Disallow Autoplay for non-volume devices*
-   GP name: *NoAutoplayfornonVolume*
-   GP path: *Windows Components/AutoPlay Policies*
-   GP ADMX file name: *AutoPlay.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="autoplay-setdefaultautorunbehavior"></a>**Autoplay/SetDefaultAutoRunBehavior**  

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
This policy setting sets the default behavior for Autorun commands.

Autorun commands are generally stored in autorun.inf files. They often launch the installation program or other routines.

Prior to Windows Vista, when media containing an autorun command is inserted, the system will automatically execute the program without user intervention.

This creates a major security concern as code may be executed without user's knowledge. The default behavior starting with Windows Vista is to prompt the user whether autorun command is to be run. The autorun command is represented as a handler in the Autoplay dialog.

If you enable this policy setting, an Administrator can change the default Windows Vista or later behavior for autorun to:

a) Completely disable autorun commands, or
b) Revert back to pre-Windows Vista behavior of automatically executing the autorun command.

If you disable or not configure this policy setting, Windows Vista or later will prompt the user whether autorun command is to be run.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Set the default behavior for AutoRun*
-   GP name: *NoAutorun*
-   GP path: *Windows Components/AutoPlay Policies*
-   GP ADMX file name: *AutoPlay.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="autoplay-turnoffautoplay"></a>**Autoplay/TurnOffAutoPlay**  

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
This policy setting allows you to turn off the Autoplay feature.

Autoplay begins reading from a drive as soon as you insert media in the drive. As a result, the setup file of programs and the music on audio media start immediately.

Prior to Windows XP SP2, Autoplay is disabled by default on removable drives, such as the floppy disk drive (but not the CD-ROM drive), and on network drives.

Starting with Windows XP SP2, Autoplay is enabled for removable drives as well, including Zip drives and some USB mass storage devices.

If you enable this policy setting, Autoplay is disabled on CD-ROM and removable media drives, or disabled on all drives.

This policy setting disables Autoplay on additional types of drives. You cannot use this setting to enable Autoplay on drives on which it is disabled by default.

If you disable or do not configure this policy setting, AutoPlay is enabled.

Note: This policy setting appears in both the Computer Configuration and User Configuration folders. If the policy settings conflict, the policy setting in Computer Configuration takes precedence over the policy setting in User Configuration.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Autoplay*
-   GP name: *Autorun*
-   GP path: *Windows Components/AutoPlay Policies*
-   GP ADMX file name: *AutoPlay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

