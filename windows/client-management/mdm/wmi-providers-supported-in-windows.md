---
title: WMI providers supported in Windows 10
description: WMI providers supported in Windows 10
MS-HAID:
- 'p\_phdevicemgmt.wmi\_providers\_supported\_in\_windows\_10\_technical\_preview'
- 'p\_phDeviceMgmt.wmi\_providers\_supported\_in\_windows'
ms.assetid: 7D533044-AAD7-4B8F-B71B-9D52C15A168A
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# WMI providers supported in Windows 10

Windows Management Infrastructure (WMI) providers (and the classes they support) are used to manage settings and applications on devices that subscribe to the Mobile Device Management (MDM) service. The following subsections show the list WMI MDM classes that are supported in Windows 10.

> **Note**  Applications installed using WMI classes are not removed when the MDM account is removed from device.

 

The child node names of the result from a WMI query are separated by a forward slash (/) and not URI escaped. Here is an example query.

Get the list of network adapters from the device.

```xml
<Get>
   <Target>
      <LocURI>./cimV2/Win32_NetworkAdapter</LocURI>
   </Target>
</Get>
```

Result

```xml
<Item>
   <Source>
      <LocURI>./cimV2/Win32_NetworkAdapter</LocURI>
   </Source>
   <Meta>
      <Format xmlns="syncml:metinf">node</Format>
   </Meta>
      <Data>Win32_NetworkAdapter.DeviceID="0"/Win32_NetworkAdapter.DeviceID="1"/Win32_NetworkAdapter.DeviceID="2"</Data>
</Item>
```

## MDM Bridge WMI classes


For links to these classes, see [**MDM Bridge WMI Provider**](https://msdn.microsoft.com/library/windows/hardware/dn905224).

## MDM WMI classes

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Class</th>
<th>Test completed in Windows 10 for desktop</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610368" data-raw-source="[&lt;strong&gt;MDM_AppInstallJob&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610368)"><strong>MDM_AppInstallJob</strong></a></td>
<td><p>Currently testing.</p></td>
</tr>
<tr class="even">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610369" data-raw-source="[&lt;strong&gt;MDM_Application&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610369)"><strong>MDM_Application</strong></a></td>
<td><p>Currently testing.</p></td>
</tr>
<tr class="odd">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610370" data-raw-source="[&lt;strong&gt;MDM_ApplicationFramework&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610370)"><strong>MDM_ApplicationFramework</strong></a></td>
<td><p>Currently testing.</p></td>
</tr>
<tr class="even">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610382" data-raw-source="[&lt;strong&gt;MDM_ApplicationSetting&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610382)"><strong>MDM_ApplicationSetting</strong></a></td>
<td><p>Currently testing.</p></td>
</tr>
<tr class="odd">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610383" data-raw-source="[&lt;strong&gt;MDM_BrowserSecurityZones&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610383)"><strong>MDM_BrowserSecurityZones</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610384" data-raw-source="[&lt;strong&gt;MDM_BrowserSettings&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610384)"><strong>MDM_BrowserSettings</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610385" data-raw-source="[&lt;strong&gt;MDM_Certificate&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610385)"><strong>MDM_Certificate</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610386" data-raw-source="[&lt;strong&gt;MDM_CertificateEnrollment&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610386)"><strong>MDM_CertificateEnrollment</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610387" data-raw-source="[&lt;strong&gt;MDM_Client&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610387)"><strong>MDM_Client</strong></a></td>
<td><p>Currently testing.</p></td>
</tr>
<tr class="even">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610388" data-raw-source="[&lt;strong&gt;MDM_ConfigSetting&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610388)"><strong>MDM_ConfigSetting</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610389" data-raw-source="[&lt;strong&gt;MDM_DeviceRegistrationInfo&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610389)"><strong>MDM_DeviceRegistrationInfo</strong></a></td>
<td></td>
</tr>
<tr class="even">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610390" data-raw-source="[&lt;strong&gt;MDM_EASPolicy&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610390)"><strong>MDM_EASPolicy</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610391" data-raw-source="[&lt;strong&gt;MDM_MgMtAuthority&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610391)"><strong>MDM_MgMtAuthority</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td><strong>MDM_MsiApplication</strong></td>
<td></td>
</tr>
<tr class="odd">
<td><strong>MDM_MsiInstallJob</strong></td>
<td></td>
</tr>
<tr class="even">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610371" data-raw-source="[&lt;strong&gt;MDM_RemoteApplication&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610371)"><strong>MDM_RemoteApplication</strong></a></td>
<td><p>Test not started.</p></td>
</tr>
<tr class="odd">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610372" data-raw-source="[&lt;strong&gt;MDM_RemoteAppUseCookie&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610372)"><strong>MDM_RemoteAppUseCookie</strong></a></td>
<td><p>Test not started.</p></td>
</tr>
<tr class="even">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610392" data-raw-source="[&lt;strong&gt;MDM_Restrictions&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610392)"><strong>MDM_Restrictions</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610393" data-raw-source="[&lt;strong&gt;MDM_RestrictionsUser&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610393)"><strong>MDM_RestrictionsUser</strong></a></td>
<td><p>Test not started.</p></td>
</tr>
<tr class="even">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610394" data-raw-source="[&lt;strong&gt;MDM_SecurityStatus&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610394)"><strong>MDM_SecurityStatus</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610395" data-raw-source="[&lt;strong&gt;MDM_SideLoader&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610395)"><strong>MDM_SideLoader</strong></a></td>
<td></td>
</tr>
<tr class="even">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn920104" data-raw-source="[&lt;strong&gt;MDM_SecurityStatusUser&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn920104)"><strong>MDM_SecurityStatusUser</strong></a></td>
<td><p>Currently testing.</p></td>
</tr>
<tr class="odd">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn920105" data-raw-source="[&lt;strong&gt;MDM_Updates&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn920105)"><strong>MDM_Updates</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610396" data-raw-source="[&lt;strong&gt;MDM_VpnApplicationTrigger&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610396)"><strong>MDM_VpnApplicationTrigger</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td><strong>MDM_VpnConnection</strong></td>
<td></td>
</tr>
<tr class="even">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610373" data-raw-source="[&lt;strong&gt;MDM_WebApplication&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610373)"><strong>MDM_WebApplication</strong></a></td>
<td><p>Currently testing.</p></td>
</tr>
<tr class="odd">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610397" data-raw-source="[&lt;strong&gt;MDM_WirelessProfile&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610397)"><strong>MDM_WirelessProfile</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610398" data-raw-source="[&lt;strong&gt;MDM_WirelesssProfileXML&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610398)"><strong>MDM_WirelesssProfileXML</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610399" data-raw-source="[&lt;strong&gt;MDM_WNSChannel&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610399)"><strong>MDM_WNSChannel</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/dn610400" data-raw-source="[&lt;strong&gt;MDM_WNSConfiguration&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/dn610400)"><strong>MDM_WNSConfiguration</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/jj676842" data-raw-source="[&lt;strong&gt;MSFT_NetFirewallProfile&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/jj676842)"><strong>MSFT_NetFirewallProfile</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/jj206647" data-raw-source="[&lt;strong&gt;MSFT_VpnConnection&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/jj206647)"><strong>MSFT_VpnConnection</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/cc534596" data-raw-source="[&lt;strong&gt;SoftwareLicensingProduct&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/cc534596)"><strong>SoftwareLicensingProduct</strong></a></td>
<td></td>
</tr>
<tr class="odd">
<td><a href="https://msdn.microsoft.com/library/windows/hardware/cc534597" data-raw-source="[&lt;strong&gt;SoftwareLicensingService&lt;/strong&gt;](https://msdn.microsoft.com/library/windows/hardware/cc534597)"><strong>SoftwareLicensingService</strong></a></td>
<td></td>
</tr>
</tbody>
</table>

 

### Parental control WMI classes

| Class                                                                    | Test completed in Windows 10 for desktop |
|--------------------------------------------------------------------------|------------------------------------------|
| [**wpcappoverride**](https://msdn.microsoft.com/library/windows/hardware/ms711334)       | ![cross mark](images/checkmark.png)      |
| [**wpcgameoverride**](https://msdn.microsoft.com/library/windows/hardware/ms711334)      | ![cross mark](images/checkmark.png)      |
| [**wpcgamessettings**](https://msdn.microsoft.com/library/windows/hardware/ms711334)     | ![cross mark](images/checkmark.png)      |
| [**wpcrating**](https://msdn.microsoft.com/library/windows/hardware/ms711334)            | ![cross mark](images/checkmark.png)      |
| [**wpcRatingsDescriptor**](https://msdn.microsoft.com/library/windows/hardware/ms711334) |                                          |
| [**wpcratingssystem**](https://msdn.microsoft.com/library/windows/hardware/ms711334)     | ![cross mark](images/checkmark.png)      |
| [**wpcsystemsettings**](https://msdn.microsoft.com/library/windows/hardware/ms711334)    | ![cross mark](images/checkmark.png)      |
| [**wpcurloverride**](https://msdn.microsoft.com/library/windows/hardware/ms711334)       | ![cross mark](images/checkmark.png)      |
| [**wpcusersettings**](https://msdn.microsoft.com/library/windows/hardware/ms711334)      | ![cross mark](images/checkmark.png)      |
| [**wpcwebsettings**](https://msdn.microsoft.com/library/windows/hardware/ms711334)       | ![cross mark](images/checkmark.png)      |

 

### Win32 WMI classes

| Class                                                                    | Test completed in Windows 10 for desktop |
|--------------------------------------------------------------------------|------------------------------------------|
[**Win32\_1394Controller**](https://msdn.microsoft.com/library/windows/hardware/aa394059) |
[**Win32\_BaseBoard**](https://msdn.microsoft.com/library/windows/hardware/aa394072)      |
[**Win32\_Battery**](https://msdn.microsoft.com/library/windows/hardware/aa394074)        | ![cross mark](images/checkmark.png)
[**Win32\_BIOS**](https://msdn.microsoft.com/library/windows/hardware/aa394077)           | ![cross mark](images/checkmark.png)
[**Win32\_CDROMDrive**](https://msdn.microsoft.com/library/windows/hardware/aa394081)     |
[**Win32\_ComputerSystem**](https://msdn.microsoft.com/library/windows/hardware/aa394102) | ![cross mark](images/checkmark.png)
[**Win32\_ComputerSystemProduct**](https://msdn.microsoft.com/library/windows/hardware//aa394105) | ![cross mark](images/checkmark.png)
[**Win32\_CurrentTime**](https://msdn.microsoft.com/library/windows/hardware/aa394114)    | ![cross mark](images/checkmark.png)
[**Win32\_Desktop**](https://msdn.microsoft.com/library/windows/hardware/aa394121)        |
[**Win32\_DesktopMonitor**](https://msdn.microsoft.com/library/windows/hardware/aa394122) |![cross mark](images/checkmark.png)
[**Win32\_DiskDrive**](https://msdn.microsoft.com/library/windows/hardware/aa394132)      | ![cross mark](images/checkmark.png)
[**Win32\_DiskPartition**](https://msdn.microsoft.com/library/windows/hardware/aa394135)  |
[**Win32\_DisplayConfiguration**](https://msdn.microsoft.com/library/windows/hardware/aa394137) | ![cross mark](images/checkmark.png)
[**Win32\_DMAChannel**](https://msdn.microsoft.com/library/windows/hardware/aa394139)     | 
[**Win32\_DriverVXD**](https://msdn.microsoft.com/library/windows/hardware/aa394141)      |
[**Win32\_EncryptableVolume**](https://msdn.microsoft.com/library/windows/hardware/aa376483) |
[**Win32\_Environment**](https://msdn.microsoft.com/library/windows/hardware/aa394143)    |
[**Win32\_IDEController**](https://msdn.microsoft.com/library/windows/hardware/aa394155)  |
[**Win32\_InfraredDevice**](https://msdn.microsoft.com/library/windows/hardware/aa394158) |
[**Win32\_IRQResource**](https://msdn.microsoft.com/library/windows/hardware/aa394164)    |
[**Win32\_Keyboard**](https://msdn.microsoft.com/library/windows/hardware/aa394166)       |
[**Win32\_LoadOrderGroup**](https://msdn.microsoft.com/library/windows/hardware/aa394168) |
[**Win32\_LocalTime**](https://msdn.microsoft.com/library/windows/hardware/aa394171)      | ![cross mark](images/checkmark.png)
[**Win32\_LoggedOnUser**](https://msdn.microsoft.com/library/windows/hardware/aa394172)   |
[**Win32\_LogicalDisk**](https://msdn.microsoft.com/library/windows/hardware/aa394173)    | ![cross mark](images/checkmark.png)
[**Win32\_MotherboardDevice**](https://msdn.microsoft.com/library/windows/hardware/aa394204) |
[**Win32\_NetworkAdapter**](https://msdn.microsoft.com/library/windows/hardware/aa394216) | ![cross mark](images/checkmark.png)
[**Win32\_NetworkAdapterConfiguration**](https://msdn.microsoft.com/library/windows/hardware/aa394217) |
[**Win32\_NetworkClient**](https://msdn.microsoft.com/library/windows/hardware/aa394219)  |
[**Win32\_NetworkLoginProfile**](https://msdn.microsoft.com/library/windows/hardware/aa394221) |
[**Win32\_NetworkProtocol**](https://msdn.microsoft.com/library/windows/hardware/aa394223) |
[**Win32\_NTEventlogFile**](https://msdn.microsoft.com/library/windows/hardware/aa394225)  |
[**Win32\_OperatingSystem**](https://msdn.microsoft.com/library/windows/hardware/aa394239) | ![cross mark](images/checkmark.png)
[**Win32\_OSRecoveryConfiguration**](https://msdn.microsoft.com/library/windows/hardware/aa394242) |
[**Win32\_PageFileSetting**](https://msdn.microsoft.com/library/windows/hardware/aa394245) |
[**Win32\_ParallelPort**](https://msdn.microsoft.com/library/windows/hardware/aa394247) |
[**Win32\_PCMCIAController**](https://msdn.microsoft.com/library/windows/hardware/aa394251) |
[**Win32\_PhysicalMedia**](https://msdn.microsoft.com/library/windows/hardware/aa394346)                                   |  
[**Win32\_PhysicalMemory**](https://msdn.microsoft.com/library/windows/hardware/aa394347)   | ![cross mark](images/checkmark.png)
[**Win32\_PnPDevice**](https://msdn.microsoft.com/library/windows/hardware/aa394352)        |  
[**Win32\_PnPEntity**](https://msdn.microsoft.com/library/windows/hardware/aa394353)        |  
[**Win32\_PointingDevice**](https://msdn.microsoft.com/library/windows/hardware/aa394356)   |
[**Win32\_PortableBattery**](https://msdn.microsoft.com/library/windows/hardware/aa394357)  |
[**Win32\_PortResource**](https://msdn.microsoft.com/library/windows/hardware/aa394359)     |
[**Win32\_POTSModem**](https://msdn.microsoft.com/library/windows/hardware/aa394360)        |
[**Win32\_Printer**](https://msdn.microsoft.com/library/windows/hardware/aa394363)          |
[**Win32\_PrinterConfiguration**](https://msdn.microsoft.com/library/windows/hardware/aa394364) |
[**Win32\_Processor**](https://msdn.microsoft.com/library/windows/hardware/aa394373)        | ![cross mark](images/checkmark.png)
[**Win32\_QuickFixEngineering**](https://msdn.microsoft.com/library/windows/hardware/aa394391) | ![cross mark](images/checkmark.png)
[**Win32\_Registry**](https://msdn.microsoft.com/library/windows/hardware/aa394394)         |
[**Win32\_SCSIController**](https://msdn.microsoft.com/library/windows/hardware/aa394400)   |
[**Win32\_SerialPort**](https://msdn.microsoft.com/library/windows/hardware/aa394413)       |
[**Win32\_SerialPortConfiguration**](https://msdn.microsoft.com/library/windows/hardware/aa394414) |
[**Win32\_ServerFeature**](https://msdn.microsoft.com/library/windows/hardware/cc280268)    |
[**Win32\_Service**](https://msdn.microsoft.com/library/windows/hardware/aa394418)          | ![cross mark](images/checkmark.png)
[**Win32\_Share**](https://msdn.microsoft.com/library/windows/hardware/aa394435)            | ![cross mark](images/checkmark.png)
[**Win32\_SoundDevice**](https://msdn.microsoft.com/library/windows/hardware/aa394463)      |
[**Win32\_SystemAccount**](https://msdn.microsoft.com/library/windows/hardware/aa394466)    |
[**Win32\_SystemBIOS**](https://msdn.microsoft.com/library/windows/hardware/aa394467)       | ![cross mark](images/checkmark.png)
[**Win32\_SystemDriver**](https://msdn.microsoft.com/library/windows/hardware/aa394472)     |
[**Win32\_SystemEnclosure**](https://msdn.microsoft.com/library/windows/hardware/aa394474)  | ![cross mark](images/checkmark.png)
[**Win32\_TapeDrive**](https://msdn.microsoft.com/library/windows/hardware/aa394491)        |
[**Win32\_TimeZone**](https://msdn.microsoft.com/library/windows/hardware/aa394498)         | ![cross mark](images/checkmark.png)
[**Win32\_UninterruptiblePowerSupply**](https://msdn.microsoft.com/library/windows/hardware/aa394503) |
[**Win32\_USBController**](https://msdn.microsoft.com/library/windows/hardware/aa394504)    |
[**Win32\_UTCTime**](https://msdn.microsoft.com/library/windows/hardware/aa394510)          | ![cross mark](images/checkmark.png)
[**Win32\_VideoController**](https://msdn.microsoft.com/library/windows/hardware/aa394505) |
**Win32\_WindowsUpdateAgentVersion**                                                        |
 

## Related topics


[Configuration service provider reference](configuration-service-provider-reference.md)

 

 

10/10/2016




