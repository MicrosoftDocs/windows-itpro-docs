---
title: RemoteWipe CSP
description: Learn how the RemoteWipe configuration service provider (CSP) can be used by mobile operators DM server or enterprise management server to remotely wipe a device.
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 08/13/2018
---

# RemoteWipe CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The RemoteWipe configuration service provider can be used by mobile operators DM server or enterprise management server to remotely reset a device. The RemoteWipe configuration service provider can make the data stored in memory and hard disks difficult to recover if the device is remotely reset after being lost or stolen.

The following example shows the RemoteWipe configuration service provider management object in tree format as used by both OMA DM and OMA Client Provisioning. Enterprise IT Professionals can update these settings by using the Exchange Server.

```
./Vendor/MSFT
RemoteWipe
----doWipe
----doWipePersistProvisionedData
----doWipeProtected
----doWipePersistUserData
----AutomaticRedeployment
--------doAutomaticRedeployment
--------LastError
--------Status
```

<a href="" id="dowipe"></a>**doWipe**
Exec on this node starts a remote reset of the device. A remote reset is equivalent to running "Reset this PC > Remove everything" from the Settings app, with **Clean Data** set to No and **Delete Files** set to Yes. The return status code indicates whether the device accepted the Exec command. If a doWipe reset is started and then interrupted, the PC will attempt to roll-back to the pre-reset state. If the PC can't be rolled-back, the recovery environment will take no additional actions and the PC could be in an unusable state and Windows will have to be reinstalled.

When used with OMA Client Provisioning, a dummy value of "1" should be included for this element.

Supported operation is Exec.

<a href="" id="dowipepersistprovisioneddata"></a>**doWipePersistProvisionedData**
Exec on this node specifies that provisioning packages in the `%SystemDrive%\ProgramData\Microsoft\Provisioning` folder will be retained and then applied to the OS after the reset.

When used with OMA Client Provisioning, a dummy value of "1" should be included for this element.

Supported operation is Exec.

The information that was backed up will be restored and applied to the device when it resumes. The return status code shows whether the device accepted the Exec command.

<a href="" id="doWipeProtected"></a>**doWipeProtected**
Added in Windows 10, version 1703. Exec on this node performs a remote reset on the device and also fully cleans the internal drive. Drives that are cleaned with doWipeProtected aren't expected to meet industry or government standards for data cleaning. In some device configurations, this command may leave the device unable to boot. The return status code indicates whether the device accepted the Exec command, but not whether the reset was successful.

The doWipeProtected is functionally similar to doWipe. But unlike doWipe, which can be easily circumvented by simply power cycling the device, if a reset that uses doWipeProtected is interrupted, upon restart it will clean the PC's disk partitions. Because doWipeProtected will clean the partitions in case of failure or interruption, use doWipeProtected in lost/stolen device scenarios.

Supported operation is Exec.

<a href="" id="doWipePersistUserData"></a>**doWipePersistUserData**
Added in Windows 10, version 1709. Exec on this node will perform a remote reset on the device, and persist user accounts and data. This setting is equivalent to selecting "Reset this PC > Keep my files" when manually starting a reset from the Settings app. The return status code shows whether the device accepted the Exec command.

<a href="" id="automaticredeployment"></a>**AutomaticRedeployment**
Added in Windows 10, version 1809. Node for the Autopilot Reset operation.

<a href="" id="doautomaticredeployment"></a>**AutomaticRedeployment/doAutomaticRedeployment**
Added in Windows 10, version 1809. Exec on this node triggers Autopilot Reset operation. This node works like PC Reset, similar to other existing nodes in this RemoteWipe CSP, except that it keeps the device enrolled in Azure AD and MDM, keeps Wi-Fi profiles, and a few other settings like region, language, keyboard.

<a href="" id="lasterror"></a>**AutomaticRedeployment/LastError**
Added in Windows 10, version 1809. Error value, if any, associated with Autopilot Reset operation (typically an HRESULT).

<a href="" id="status"></a>**AutomaticRedeployment/Status**
Added in Windows 10, version 1809. Status value indicating current state of an Autopilot Reset operation.

Supported values:

-  0: Never run (not started). The default state.
-  1: Complete.
-  10: Reset has been scheduled.
-  20: Reset is scheduled and waiting for a reboot.
-  30: Failed during CSP Execute ("Exec" in SyncML).
-  40: Failed: power requirements not met.
-  50: Failed: reset internals failed during reset attempt.

## Related topics

[Configuration service provider reference](index.yml)

 

 






