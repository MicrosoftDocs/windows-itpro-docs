---
title: BCD settings and BitLocker (Windows 10)
description: This topic for IT professionals describes the BCD settings that are used by BitLocker.
ms.assetid: c4ab7ac9-16dc-4c7e-b061-c0b0deb2c4fa
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
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
**Note**  
Take care when configuring BCD entries in the Group Policy setting. The Local Group Policy Editor does not validate the correctness of the BCD entry. BitLocker will fail to be enabled if the Group Policy setting specified is invalid.
 
### Default BCD validation profile
The following table contains the default BCD validation profile used by BitLocker in Windows 8, Windows Server 2012, and later operating systems:
<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Hex Value</th>
<th align="left">Prefix</th>
<th align="left">Friendly Name</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>0x11000001</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>device</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x12000002</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>path</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x12000030</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>loadoptions</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x16000010</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>bootdebug</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x16000040</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>advancedoptions</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x16000041</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>optionsedit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x16000048</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>nointegritychecks</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x16000049</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>testsigning</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x16000060</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>isolatedcontext</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x1600007b</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>forcefipscrypto</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x22000002</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>systemroot</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x22000011</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>kernel</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x22000012</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>hal</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x22000053</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>evstore</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x25000020</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>nx</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x25000052</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>restrictapiccluster</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x26000022</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>winpe</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x26000025</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>lastknowngood</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x26000081</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>safebootalternateshell</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x260000a0</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>debug</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x260000f2</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>hypervisordebug</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x26000116</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>hypervisorusevapic</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x21000001</p></td>
<td align="left"><p>winresume</p></td>
<td align="left"><p>filedevice</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x22000002</p></td>
<td align="left"><p>winresume</p></td>
<td align="left"><p>filepath</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x26000006</p></td>
<td align="left"><p>winresume</p></td>
<td align="left"><p>debugoptionenabled</p></td>
</tr>
</tbody>
</table>
 
### Full list of friendly names for ignored BCD settings
This following is a full list of BCD settings with friendly names which are ignored by default. These settings are not part of the default BitLocker validation profile, but can be added if you see a need to validate any of these settings before allowing a BitLocker–protected operating system drive to be unlocked.
**Note**  
Additional BCD settings exist that have hex values but do not have friendly names. These settings are not included in this list.
 
<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Hex Value</th>
<th align="left">Prefix</th>
<th align="left">Friendly Name</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>0x12000004</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>description</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x12000005</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>locale</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x12000016</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>targetname</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x12000019</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>busparams</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x1200001d</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>key</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x1200004a</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>fontpath</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x14000006</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>inherit</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x14000008</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>recoverysequence</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x15000007</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>truncatememory</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x1500000c</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>firstmegabytepolicy</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x1500000d</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>relocatephysical</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x1500000e</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>avoidlowmemory</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x15000011</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>debugtype</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x15000012</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>debugaddress</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x15000013</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>debugport</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x15000014</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>baudrate</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x15000015</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>channel</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x15000018</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>debugstart</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x1500001a</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>hostip</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x1500001b</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>port</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x15000022</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>emsport</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x15000023</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>emsbaudrate</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x15000042</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>keyringaddress</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x15000047</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>configaccesspolicy</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x1500004b</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>integrityservices</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x1500004c</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>volumebandid</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x15000051</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>initialconsoleinput</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x15000052</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>graphicsresolution</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x15000065</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>displaymessage</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x15000066</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>displaymessageoverride</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x16000009</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>recoveryenabled</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x1600000b</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>badmemoryaccess</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x1600000f</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>traditionalkseg</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x16000017</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>noumex</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x1600001c</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>dhcp</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x1600001e</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>vm</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x16000020</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>bootems</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x16000046</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>graphicsmodedisabled</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x16000050</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>extendedinput</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x16000053</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>restartonfailure</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x16000054</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>highestmode</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x1600006c</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>bootuxdisabled</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x16000072</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>nokeyboard</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x16000074</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>bootshutdowndisabled</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x1700000a</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>badmemorylist</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x17000077</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>allowedinmemorysettings</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x22000040</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>fverecoveryurl</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x22000041</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>fverecoverymessage</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x31000003</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>ramdisksdidevice</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x32000004</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>ramdisksdipath</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x35000001</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>ramdiskimageoffset</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x35000002</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>ramdisktftpclientport</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x35000005</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>ramdiskimagelength</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x35000007</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>ramdisktftpblocksize</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x35000008</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>ramdisktftpwindowsize</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x36000006</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>exportascd</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x36000009</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>ramdiskmcenabled</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x3600000a</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>ramdiskmctftpfallback</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x3600000b</p></td>
<td align="left"><p>all</p></td>
<td align="left"><p>ramdisktftpvarwindow</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x21000001</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>osdevice</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x22000013</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>dbgtransport</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x220000f9</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>hypervisorbusparams</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x22000110</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>hypervisorusekey</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x23000003</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>resumeobject</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x25000021</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>pae</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x25000031</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>removememory</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x25000032</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>increaseuserva</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x25000033</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>perfmem</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x25000050</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>clustermodeaddressing</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x25000055</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>x2apicpolicy</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x25000061</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>numproc</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x25000063</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>configflags</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x25000066</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>groupsize</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x25000071</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>msi</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x25000072</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>pciexpress</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x25000080</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>safeboot</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x250000a6</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>tscsyncpolicy</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x250000c1</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>driverloadfailurepolicy</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x250000c2</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>bootmenupolicy</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x250000e0</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>bootstatuspolicy</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x250000f0</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>hypervisorlaunchtype</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x250000f3</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>hypervisordebugtype</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x250000f4</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>hypervisordebugport</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x250000f5</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>hypervisorbaudrate</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x250000f6</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>hypervisorchannel</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x250000f7</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>bootux</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x250000fa</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>hypervisornumproc</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x250000fb</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>hypervisorrootprocpernode</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x250000fd</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>hypervisorhostip</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x250000fe</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>hypervisorhostport</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x25000100</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>tpmbootentropy</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x25000113</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>hypervisorrootproc</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x25000115</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>hypervisoriommupolicy</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x25000120</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>xsavepolicy</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x25000121</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>xsaveaddfeature0</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x25000122</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>xsaveaddfeature1</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x25000123</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>xsaveaddfeature2</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x25000124</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>xsaveaddfeature3</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x25000125</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>xsaveaddfeature4</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x25000126</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>xsaveaddfeature5</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x25000127</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>xsaveaddfeature6</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x25000128</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>xsaveaddfeature7</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x25000129</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>xsaveremovefeature</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x2500012a</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>xsaveprocessorsmask</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x2500012b</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>xsavedisable</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x25000130</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>claimedtpmcounter</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x26000004</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>stampdisks</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x26000010</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>detecthal</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x26000024</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>nocrashautoreboot</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x26000030</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>nolowmem</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x26000040</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>vga</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x26000041</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>quietboot</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x26000042</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>novesa</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x26000043</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>novga</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x26000051</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>usephysicaldestination</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x26000054</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>uselegacyapicmode</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x26000060</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>onecpu</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x26000062</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>maxproc</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x26000064</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>maxgroup</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x26000065</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>groupaware</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x26000070</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>usefirmwarepcisettings</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x26000090</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>bootlog</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x26000091</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>sos</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x260000a1</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>halbreakpoint</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x260000a2</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>useplatformclock</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x260000a3</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>forcelegacyplatform</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x260000a4</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>useplatformtick</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x260000a5</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>disabledynamictick</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x260000b0</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>ems</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x260000c3</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>onetimeadvancedoptions</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x260000c4</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>onetimeoptionsedit</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x260000e1</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>disableelamdrivers</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x260000f8</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>hypervisordisableslat</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x260000fc</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>hypervisoruselargevtlb</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x26000114</p></td>
<td align="left"><p>winload</p></td>
<td align="left"><p>hypervisordhcp</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x21000005</p></td>
<td align="left"><p>winresume</p></td>
<td align="left"><p>associatedosdevice</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x25000007</p></td>
<td align="left"><p>winresume</p></td>
<td align="left"><p>bootux</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x25000008</p></td>
<td align="left"><p>winresume</p></td>
<td align="left"><p>bootmenupolicy</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x26000003</p></td>
<td align="left"><p>winresume</p></td>
<td align="left"><p>customsettings</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x26000004</p></td>
<td align="left"><p>winresume</p></td>
<td align="left"><p>pae</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x25000001</p></td>
<td align="left"><p>memtest</p></td>
<td align="left"><p>passcount</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x25000002</p></td>
<td align="left"><p>memtest</p></td>
<td align="left"><p>testmix</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x25000005</p></td>
<td align="left"><p>memtest</p></td>
<td align="left"><p>stridefailcount</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x25000006</p></td>
<td align="left"><p>memtest</p></td>
<td align="left"><p>invcfailcount</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x25000007</p></td>
<td align="left"><p>memtest</p></td>
<td align="left"><p>matsfailcount</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x25000008</p></td>
<td align="left"><p>memtest</p></td>
<td align="left"><p>randfailcount</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x25000009</p></td>
<td align="left"><p>memtest</p></td>
<td align="left"><p>chckrfailcount</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x26000003</p></td>
<td align="left"><p>memtest</p></td>
<td align="left"><p>cacheenable</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x26000004</p></td>
<td align="left"><p>memtest</p></td>
<td align="left"><p>failuresenabled</p></td>
</tr>
</tbody>
</table>
 
 
 
