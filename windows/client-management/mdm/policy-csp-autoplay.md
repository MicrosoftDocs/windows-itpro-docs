---
title: Autoplay Policy CSP
description: Learn more about the Autoplay Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/11/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- Autoplay-Begin -->
# Policy CSP - Autoplay

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- Autoplay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Autoplay-Editable-End -->

<!-- DisallowAutoplayForNonVolumeDevices-Begin -->
## DisallowAutoplayForNonVolumeDevices

<!-- DisallowAutoplayForNonVolumeDevices-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisallowAutoplayForNonVolumeDevices-Applicability-End -->

<!-- DisallowAutoplayForNonVolumeDevices-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Autoplay/DisallowAutoplayForNonVolumeDevices
```

```Device
./Device/Vendor/MSFT/Policy/Config/Autoplay/DisallowAutoplayForNonVolumeDevices
```
<!-- DisallowAutoplayForNonVolumeDevices-OmaUri-End -->

<!-- DisallowAutoplayForNonVolumeDevices-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting disallows AutoPlay for MTP devices like cameras or phones.

- If you enable this policy setting, AutoPlay isn't allowed for MTP devices like cameras or phones.

- If you disable or don't configure this policy setting, AutoPlay is enabled for non-volume devices.
<!-- DisallowAutoplayForNonVolumeDevices-Description-End -->

<!-- DisallowAutoplayForNonVolumeDevices-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisallowAutoplayForNonVolumeDevices-Editable-End -->

<!-- DisallowAutoplayForNonVolumeDevices-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisallowAutoplayForNonVolumeDevices-DFProperties-End -->

<!-- DisallowAutoplayForNonVolumeDevices-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoAutoplayfornonVolume |
| Friendly Name | Disallow Autoplay for non-volume devices |
| Location | Computer and User Configuration |
| Path | Windows Components > AutoPlay Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoAutoplayfornonVolume |
| ADMX File Name | AutoPlay.admx |
<!-- DisallowAutoplayForNonVolumeDevices-AdmxBacked-End -->

<!-- DisallowAutoplayForNonVolumeDevices-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowAutoplayForNonVolumeDevices-Examples-End -->

<!-- DisallowAutoplayForNonVolumeDevices-End -->

<!-- SetDefaultAutoRunBehavior-Begin -->
## SetDefaultAutoRunBehavior

<!-- SetDefaultAutoRunBehavior-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- SetDefaultAutoRunBehavior-Applicability-End -->

<!-- SetDefaultAutoRunBehavior-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Autoplay/SetDefaultAutoRunBehavior
```

```Device
./Device/Vendor/MSFT/Policy/Config/Autoplay/SetDefaultAutoRunBehavior
```
<!-- SetDefaultAutoRunBehavior-OmaUri-End -->

<!-- SetDefaultAutoRunBehavior-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting sets the default behavior for Autorun commands.

Autorun commands are generally stored in autorun.inf files. They often launch the installation program or other routines.

Prior to Windows Vista, when media containing an autorun command is inserted, the system will automatically execute the program without user intervention.

This creates a major security concern as code may be executed without user's knowledge. The default behavior starting with Windows Vista is to prompt the user whether autorun command is to be run. The autorun command is represented as a handler in the Autoplay dialog.

- If you enable this policy setting, an Administrator can change the default Windows Vista or later behavior for autorun to:

a) Completely disable autorun commands, or b) Revert back to pre-Windows Vista behavior of automatically executing the autorun command.

- If you disable or not configure this policy setting, Windows Vista or later will prompt the user whether autorun command is to be run.
<!-- SetDefaultAutoRunBehavior-Description-End -->

<!-- SetDefaultAutoRunBehavior-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetDefaultAutoRunBehavior-Editable-End -->

<!-- SetDefaultAutoRunBehavior-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SetDefaultAutoRunBehavior-DFProperties-End -->

<!-- SetDefaultAutoRunBehavior-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoAutorun |
| Friendly Name | Set the default behavior for AutoRun |
| Location | Computer and User Configuration |
| Path | Windows Components > AutoPlay Policies |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| ADMX File Name | AutoPlay.admx |
<!-- SetDefaultAutoRunBehavior-AdmxBacked-End -->

<!-- SetDefaultAutoRunBehavior-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetDefaultAutoRunBehavior-Examples-End -->

<!-- SetDefaultAutoRunBehavior-End -->

<!-- TurnOffAutoPlay-Begin -->
## TurnOffAutoPlay

<!-- TurnOffAutoPlay-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- TurnOffAutoPlay-Applicability-End -->

<!-- TurnOffAutoPlay-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Autoplay/TurnOffAutoPlay
```

```Device
./Device/Vendor/MSFT/Policy/Config/Autoplay/TurnOffAutoPlay
```
<!-- TurnOffAutoPlay-OmaUri-End -->

<!-- TurnOffAutoPlay-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off the Autoplay feature.

Autoplay begins reading from a drive as soon as you insert media in the drive. As a result, the setup file of programs and the music on audio media start immediately.

Prior to Windows XP SP2, Autoplay is disabled by default on removable drives, such as the floppy disk drive (but not the CD-ROM drive), and on network drives.

Starting with Windows XP SP2, Autoplay is enabled for removable drives as well, including Zip drives and some USB mass storage devices.

- If you enable this policy setting, Autoplay is disabled on CD-ROM and removable media drives, or disabled on all drives.

This policy setting disables Autoplay on additional types of drives. You can't use this setting to enable Autoplay on drives on which it's disabled by default.

- If you disable or don't configure this policy setting, AutoPlay is enabled.

> [!NOTE]
> This policy setting appears in both the Computer Configuration and User Configuration folders. If the policy settings conflict, the policy setting in Computer Configuration takes precedence over the policy setting in User Configuration.
<!-- TurnOffAutoPlay-Description-End -->

<!-- TurnOffAutoPlay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOffAutoPlay-Editable-End -->

<!-- TurnOffAutoPlay-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TurnOffAutoPlay-DFProperties-End -->

<!-- TurnOffAutoPlay-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Autorun |
| Friendly Name | Turn off Autoplay |
| Location | Computer and User Configuration |
| Path | Windows Components > AutoPlay Policies |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| ADMX File Name | AutoPlay.admx |
<!-- TurnOffAutoPlay-AdmxBacked-End -->

<!-- TurnOffAutoPlay-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOffAutoPlay-Examples-End -->

<!-- TurnOffAutoPlay-End -->

<!-- Autoplay-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Autoplay-CspMoreInfo-End -->

<!-- Autoplay-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
