---
title: BCD settings and BitLocker (Windows 10)
description: This topic for IT professionals describes the BCD settings that are used by BitLocker.
ms.assetid: c4ab7ac9-16dc-4c7e-b061-c0b0deb2c4fa
ms.reviewer: 
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/28/2019
---

# BCD settings and BitLocker

**Applies to**
-   Windows 10

This topic for IT professionals describes the BCD settings that are used by BitLocker.

When protecting data at rest on an operating system volume, during the boot process BitLocker verifies that the security sensitive boot configuration data (BCD) settings have not changed since BitLocker was last enabled, resumed, or recovered.

## BitLocker and BCD Settings

In Windows 7 and Windows Server 2008 R2, BitLocker validated nearly all BCD settings with the winload, winresume, and memtest prefixes. However, this high degree of validation caused BitLocker to go into recovery mode for benign setting changes, for example, when applying a language pack BitLocker would enter recovery.

In Windows 8, Windows Server 2012, and later operating systems BitLocker narrows the set of BCD settings validated to reduce the chance of benign changes causing a BCD validation problem. If you believe that there is a risk in excluding a particular BCD setting from the validation profile, you can increase BCD validation coverage to suit your validation preferences. Alternatively, if a default BCD setting is persistently triggering recovery for benign changes, then you can exclude that BCD setting from the validation profile.

### When secure boot is enabled

Computers with UEFI firmware can use Secure Boot to provide enhanced boot security. When BitLocker is able to use Secure Boot for platform and BCD integrity validation, as defined by the **Allow Secure Boot for integrity validation** group policy setting, the **Use enhanced Boot Configuration Data validation profile** group policy is ignored.

One of the benefits of using Secure Boot is that it can correct BCD settings during boot without triggering recovery events. Secure Boot enforces the same BCD settings as BitLocker. Secure Boot BCD enforcement is not configurable from within the operating system.

## Customizing BCD validation settings

To modify the BCD settings BitLocker validates the IT Pro will add or exclude BCD settings from the platform validation profile by enabling and configuring the **Use enhanced Boot Configuration Data validation profile** Group Policy setting.

For the purposes of BitLocker validation, BCD settings are associated with a specific set of Microsoft boot applications. BCD settings are either associated with a specific boot application or can apply to all boot applications by associating a prefix to the BCD setting entered in the Group Policy setting. Prefix values include:

-   winload
-   winresume
-   memtest
-   all

All BCD settings are specified by combining the prefix value with either a hexadecimal (hex) value or a “friendly name.”

The BCD setting hex value is reported when BitLocker enters recovery mode and is stored in the event log (event ID 523). The hex value uniquely identifies which BCD setting caused the recovery event.

You can quickly obtain the friendly name for the BCD settings on your computer by using the command “`bcdedit.exe /enum all`”.

Not all BCD settings have friendly names, for those settings the hex value is the only way to configure an exclusion policy.

When specifying BCD values in the **Use enhanced Boot Configuration Data validation profile** Group Policy setting, use the following syntax:

-   Prefix the setting with the boot application prefix
-   Append a colon ‘:’
-   Append either the hex value or the friendly name
-   If entering more than one BCD setting, you will need to enter each BCD setting on a new line

For example, either “`winload:hypervisordebugport`” or “`winload:0x250000f4`” yield the same value.

Setting that applies to all boot applications may be applied only to an individual application, however the reverse is not true. For example, one can specify either: “`all:locale`” or “`winresume:locale`”, but as the bcd setting “`win-pe`” does not apply to all boot applications, “`winload:winpe`” is valid, but “`all:winpe`” is not valid. The setting that controls boot debugging (“`bootdebug`” or 0x16000010) will always be validated and will have no effect if it is included in the provided fields.

> **Note:**  Take care when configuring BCD entries in the Group Policy setting. The Local Group Policy Editor does not validate the correctness of the BCD entry. BitLocker will fail to be enabled if the Group Policy setting specified is invalid.
 
### Default BCD validation profile

The following table contains the default BCD validation profile used by BitLocker in Windows 8, Windows Server 2012, and later operating systems:

| Hex Value | Prefix | Friendly Name |
| - | - | - |
| 0x11000001 | all | device| 
| 0x12000002 | all | path| 
| 0x12000030 | all | loadoptions|
| 0x16000010 | all | bootdebug| 
| 0x16000040 | all | advancedoptions| 
| 0x16000041 | all| optionsedit| 
| 0x16000048| all| nointegritychecks| 
| 0x16000049| all| testsigning| 
| 0x16000060| all| isolatedcontext| 
| 0x1600007b| all| forcefipscrypto|
| 0x22000002| winload| systemroot| 
| 0x22000011| winload| kernel| 
| 0x22000012| winload| hal| 
| 0x22000053| winload| evstore| 
| 0x25000020| winload| nx| 
| 0x25000052| winload| restrictapiccluster| 
| 0x26000022| winload| winpe| 
| 0x26000025 |winload|lastknowngood| 
| 0x26000081| winload| safebootalternateshell| 
| 0x260000a0| winload| debug| 
| 0x260000f2| winload| hypervisordebug| 
| 0x26000116| winload| hypervisorusevapic| 
| 0x21000001| winresume| filedevice| 
| 0x22000002| winresume| filepath| 
| 0x26000006| winresume| debugoptionenabled| 

### Full list of friendly names for ignored BCD settings

This following is a full list of BCD settings with friendly names which are ignored by default. These settings are not part of the default BitLocker validation profile, but can be added if you see a need to validate any of these settings before allowing a BitLocker–protected operating system drive to be unlocked.
> **Note:**  Additional BCD settings exist that have hex values but do not have friendly names. These settings are not included in this list.

| Hex Value | Prefix | Friendly Name |
| - | - | - |
| 0x12000004 | all | description | 
| 0x12000005 | all | locale | 
| 0x12000016 | all | targetname | 
| 0x12000019| all| busparams| 
| 0x1200001d| all| key| 
| 0x1200004a| all| fontpath| 
| 0x14000006| all| inherit| 
| 0x14000008| all| recoverysequence| 
| 0x15000007| all| truncatememory| 
| 0x1500000c| all| firstmegabytepolicy| 
| 0x1500000d| all| relocatephysical| 
| 0x1500000e| all| avoidlowmemory| 
| 0x15000011| all| debugtype| 
| 0x15000012 |all|debugaddress| 
| 0x15000013| all| debugport| 
| 0x15000014|all|baudrate| 
| 0x15000015 | all| channel| 
| 0x15000018 | all| debugstart| 
| 0x1500001a | all| hostip| 
| 0x1500001b | all| port| 
| 0x15000022 | all| emsport| 
| 0x15000023 | all| emsbaudrate| 
| 0x15000042 | all| keyringaddress| 
| 0x15000047 | all| configaccesspolicy| 
| 0x1500004b | all| integrityservices| 
| 0x1500004c | all| volumebandid| 
| 0x15000051 | all| initialconsoleinput| 
| 0x15000052 | all| graphicsresolution| 
| 0x15000065 | all| displaymessage| 
| 0x15000066 | all| displaymessageoverride|
| 0x15000081 | all| logcontrol|
| 0x16000009 | all| recoveryenabled| 
| 0x1600000b | all| badmemoryaccess| 
| 0x1600000f | all| traditionalkseg| 
| 0x16000017 | all| noumex| 
| 0x1600001c | all| dhcp| 
| 0x1600001e | all| vm| 
| 0x16000020 | all| bootems| 
| 0x16000046 | all| graphicsmodedisabled| 
| 0x16000050 | all| extendedinput| 
| 0x16000053 | all| restartonfailure| 
| 0x16000054 | all| highestmode| 
| 0x1600006c | all| bootuxdisabled| 
| 0x16000072 | all| nokeyboard| 
| 0x16000074 | all| bootshutdowndisabled| 
| 0x1700000a | all| badmemorylist| 
| 0x17000077 | all| allowedinmemorysettings| 
| 0x22000040 | all| fverecoveryurl| 
| 0x22000041 | all| fverecoverymessage| 
| 0x31000003 | all| ramdisksdidevice| 
| 0x32000004 | all| ramdisksdipath|
| 0x35000001| all | ramdiskimageoffset| 
| 0x35000002 | all| ramdisktftpclientport| 
| 0x35000005 | all| ramdiskimagelength| 
| 0x35000007 | all| ramdisktftpblocksize| 
| 0x35000008 | all| ramdisktftpwindowsize| 
| 0x36000006 | all| exportascd| 
| 0x36000009 | all| ramdiskmcenabled| 
| 0x3600000a | all| ramdiskmctftpfallback| 
| 0x3600000b | all| ramdisktftpvarwindow| 
| 0x21000001 | winload| osdevice| 
| 0x22000013 | winload| dbgtransport| 
| 0x220000f9 | winload| hypervisorbusparams| 
| 0x22000110 | winload| hypervisorusekey| 
| 0x23000003  |winload| resumeobject|
| 0x25000021| winload| pae| 
| 0x25000031 |winload| removememory| 
| 0x25000032 | winload| increaseuserva| 
| 0x25000033 | winload| perfmem| 
| 0x25000050 | winload| clustermodeaddressing| 
| 0x25000055 | winload| x2apicpolicy| 
| 0x25000061 | winload| numproc| 
| 0x25000063 | winload| configflags|
| 0x25000066| winload| groupsize|
| 0x25000071 | winload| msi|
| 0x25000072 | winload| pciexpress| 
| 0x25000080 | winload| safeboot| 
| 0x250000a6 | winload| tscsyncpolicy| 
| 0x250000c1| winload| driverloadfailurepolicy| 
| 0x250000c2| winload| bootmenupolicy| 
| 0x250000e0  |winload| bootstatuspolicy| 
| 0x250000f0 | winload| hypervisorlaunchtype| 
| 0x250000f3 | winload| hypervisordebugtype| 
| 0x250000f4 | winload| hypervisordebugport| 
| 0x250000f5 | winload| hypervisorbaudrate| 
| 0x250000f6 | winload| hypervisorchannel| 
| 0x250000f7 | winload| bootux| 
| 0x250000fa | winload| hypervisornumproc| 
| 0x250000fb | winload| hypervisorrootprocpernode| 
| 0x250000fd | winload| hypervisorhostip| 
| 0x250000fe | winload| hypervisorhostport| 
| 0x25000100 | winload| tpmbootentropy| 
| 0x25000113 | winload| hypervisorrootproc| 
| 0x25000115 | winload| hypervisoriommupolicy| 
| 0x25000120 | winload| xsavepolicy| 
| 0x25000121 | winload| xsaveaddfeature0| 
| 0x25000122 | winload| xsaveaddfeature1| 
| 0x25000123 | winload| xsaveaddfeature2| 
| 0x25000124 | winload| xsaveaddfeature3| 
| 0x25000125 | winload| xsaveaddfeature4| 
| 0x25000126 | winload| xsaveaddfeature5| 
| 0x25000127 | winload| xsaveaddfeature6| 
| 0x25000128 | winload| xsaveaddfeature7| 
| 0x25000129 | winload| xsaveremovefeature| 
| 0x2500012a | winload| xsaveprocessorsmask| 
| 0x2500012b | winload| xsavedisable| 
| 0x25000130 | winload| claimedtpmcounter| 
| 0x26000004 | winload| stampdisks| 
| 0x26000010 | winload| detecthal| 
| 0x26000024 | winload| nocrashautoreboot| 
| 0x26000030 | winload| nolowmem| 
| 0x26000040 | winload| vga| 
| 0x26000041 | winload| quietboot| 
| 0x26000042 | winload| novesa| 
| 0x26000043 | winload| novga| 
| 0x26000051 | winload| usephysicaldestination| 
| 0x26000054 | winload| uselegacyapicmode| 
| 0x26000060 | winload| onecpu| 
| 0x26000062 | winload| maxproc| 
| 0x26000064 | winload| maxgroup| 
| 0x26000065 | winload| groupaware| 
| 0x26000070| winload| usefirmwarepcisettings| 
| 0x26000090 | winload| bootlog|
| 0x26000091 | winload| sos| 
| 0x260000a1 | winload| halbreakpoint| 
| 0x260000a2 | winload| useplatformclock| 
| 0x260000a3 |winload| forcelegacyplatform| 
| 0x260000a4 | winload| useplatformtick| 
| 0x260000a5 | winload| disabledynamictick| 
| 0x260000b0 | winload| ems| 
| 0x260000c3 | winload| onetimeadvancedoptions| 
| 0x260000c4 | winload| onetimeoptionsedit| 
| 0x260000e1| winload| disableelamdrivers| 
| 0x260000f8 | winload| hypervisordisableslat| 
| 0x260000fc | winload| hypervisoruselargevtlb| 
| 0x26000114 | winload| hypervisordhcp| 
| 0x21000005 | winresume| associatedosdevice|
| 0x25000007 | winresume| bootux| 
| 0x25000008 | winresume| bootmenupolicy|
| 0x26000003| winresume |customsettings| 
| 0x26000004 | winresume| pae|
| 0x25000001 | memtest| passcount| 
| 0x25000002 | memtest| testmix| 
| 0x25000005 | memtest| stridefailcount| 
| 0x25000006 | memtest| invcfailcount| 
| 0x25000007 | memtest| matsfailcount| 
| 0x25000008 | memtest| randfailcount| 
| 0x25000009 |memtest| chckrfailcount|
| 0x26000003| memtest| cacheenable|
| 0x26000004 | memtest| failuresenabled|
