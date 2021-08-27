---
title: WMI providers supported in Windows 10
description: Manage settings and applications on devices that subscribe to the Mobile Device Management (MDM) service with Windows Management Infrastructure (WMI).
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


For links to these classes, see [**MDM Bridge WMI Provider**](/windows/win32/dmwmibridgeprov/mdm-bridge-wmi-provider-portal).

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
<td><a href="/previous-versions/windows/desktop/mdmappprov/mdm-appinstalljob" data-raw-source="[&lt;strong&gt;MDM_AppInstallJob&lt;/strong&gt;](/previous-versions/windows/desktop/mdmappprov/mdm-appinstalljob)"><strong>MDM_AppInstallJob</strong></a></td>
<td><p>Currently testing.</p></td>
</tr>
<tr class="even">
<td><a href="/previous-versions/windows/desktop/mdmappprov/mdm-application" data-raw-source="[&lt;strong&gt;MDM_Application&lt;/strong&gt;](/previous-versions/windows/desktop/mdmappprov/mdm-application)"><strong>MDM_Application</strong></a></td>
<td><p>Currently testing.</p></td>
</tr>
<tr class="odd">
<td><a href="/previous-versions/windows/desktop/mdmappprov/mdm-applicationframework" data-raw-source="[&lt;strong&gt;MDM_ApplicationFramework&lt;/strong&gt;](/previous-versions/windows/desktop/mdmappprov/mdm-applicationframework)"><strong>MDM_ApplicationFramework</strong></a></td>
<td><p>Currently testing.</p></td>
</tr>
<tr class="even">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-applicationsetting" data-raw-source="[&lt;strong&gt;MDM_ApplicationSetting&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-applicationsetting)"><strong>MDM_ApplicationSetting</strong></a></td>
<td><p>Currently testing.</p></td>
</tr>
<tr class="odd">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-browsersecurityzones" data-raw-source="[&lt;strong&gt;MDM_BrowserSecurityZones&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-browsersecurityzones)"><strong>MDM_BrowserSecurityZones</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-browsersettings" data-raw-source="[&lt;strong&gt;MDM_BrowserSettings&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-browsersettings)"><strong>MDM_BrowserSettings</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-certificate" data-raw-source="[&lt;strong&gt;MDM_Certificate&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-certificate)"><strong>MDM_Certificate</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-certificateenrollment" data-raw-source="[&lt;strong&gt;MDM_CertificateEnrollment&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-certificateenrollment)"><strong>MDM_CertificateEnrollment</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-client" data-raw-source="[&lt;strong&gt;MDM_Client&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-client)"><strong>MDM_Client</strong></a></td>
<td><p>Currently testing.</p></td>
</tr>
<tr class="even">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-configsetting" data-raw-source="[&lt;strong&gt;MDM_ConfigSetting&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-configsetting)"><strong>MDM_ConfigSetting</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-deviceregistrationinfo" data-raw-source="[&lt;strong&gt;MDM_DeviceRegistrationInfo&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-deviceregistrationinfo)"><strong>MDM_DeviceRegistrationInfo</strong></a></td>
<td></td>
</tr>
<tr class="even">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-easpolicy" data-raw-source="[&lt;strong&gt;MDM_EASPolicy&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-easpolicy)"><strong>MDM_EASPolicy</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-mgmtauthority" data-raw-source="[&lt;strong&gt;MDM_MgMtAuthority&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-mgmtauthority)"><strong>MDM_MgMtAuthority</strong></a></td>
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
<td><a href="/previous-versions/windows/desktop/mdmappprov/mdm-remoteapplication" data-raw-source="[&lt;strong&gt;MDM_RemoteApplication&lt;/strong&gt;](/previous-versions/windows/desktop/mdmappprov/mdm-remoteapplication)"><strong>MDM_RemoteApplication</strong></a></td>
<td><p>Test not started.</p></td>
</tr>
<tr class="odd">
<td><a href="/previous-versions/windows/desktop/mdmappprov/mdm-remoteappusercookie" data-raw-source="[&lt;strong&gt;MDM_RemoteAppUseCookie&lt;/strong&gt;](/previous-versions/windows/desktop/mdmappprov/mdm-remoteappusercookie)"><strong>MDM_RemoteAppUseCookie</strong></a></td>
<td><p>Test not started.</p></td>
</tr>
<tr class="even">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-restrictions" data-raw-source="[&lt;strong&gt;MDM_Restrictions&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-restrictions)"><strong>MDM_Restrictions</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-restrictionsuser" data-raw-source="[&lt;strong&gt;MDM_RestrictionsUser&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-restrictionsuser)"><strong>MDM_RestrictionsUser</strong></a></td>
<td><p>Test not started.</p></td>
</tr>
<tr class="even">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-securitystatus" data-raw-source="[&lt;strong&gt;MDM_SecurityStatus&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-securitystatus)"><strong>MDM_SecurityStatus</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-sideloader" data-raw-source="[&lt;strong&gt;MDM_SideLoader&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-sideloader)"><strong>MDM_SideLoader</strong></a></td>
<td></td>
</tr>
<tr class="even">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-securitystatususer" data-raw-source="[&lt;strong&gt;MDM_SecurityStatusUser&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-securitystatususer)"><strong>MDM_SecurityStatusUser</strong></a></td>
<td><p>Currently testing.</p></td>
</tr>
<tr class="odd">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-updates" data-raw-source="[&lt;strong&gt;MDM_Updates&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-updates)"><strong>MDM_Updates</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-vpnapplicationtrigger" data-raw-source="[&lt;strong&gt;MDM_VpnApplicationTrigger&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-vpnapplicationtrigger)"><strong>MDM_VpnApplicationTrigger</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td><strong>MDM_VpnConnection</strong></td>
<td></td>
</tr>
<tr class="even">
<td><a href="/previous-versions/windows/desktop/mdmappprov/mdm-webapplication" data-raw-source="[&lt;strong&gt;MDM_WebApplication&lt;/strong&gt;](/previous-versions/windows/desktop/mdmappprov/mdm-webapplication)"><strong>MDM_WebApplication</strong></a></td>
<td><p>Currently testing.</p></td>
</tr>
<tr class="odd">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-wirelessprofile" data-raw-source="[&lt;strong&gt;MDM_WirelessProfile&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-wirelessprofile)"><strong>MDM_WirelessProfile</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-wirelessprofilexml" data-raw-source="[&lt;strong&gt;MDM_WirelesssProfileXML&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-wirelessprofilexml)"><strong>MDM_WirelesssProfileXML</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-wnschannel" data-raw-source="[&lt;strong&gt;MDM_WNSChannel&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-wnschannel)"><strong>MDM_WNSChannel</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td><a href="/previous-versions/windows/desktop/mdmsettingsprov/mdm-wnsconfiguration" data-raw-source="[&lt;strong&gt;MDM_WNSConfiguration&lt;/strong&gt;](/previous-versions/windows/desktop/mdmsettingsprov/mdm-wnsconfiguration)"><strong>MDM_WNSConfiguration</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td><a href="/previous-versions/windows/desktop/wfascimprov/msft-netfirewallprofile" data-raw-source="[&lt;strong&gt;MSFT_NetFirewallProfile&lt;/strong&gt;](/previous-versions/windows/desktop/wfascimprov/msft-netfirewallprofile)"><strong>MSFT_NetFirewallProfile</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td><a href="/previous-versions/windows/desktop/vpnclientpsprov/msft-vpnconnection" data-raw-source="[&lt;strong&gt;MSFT_VpnConnection&lt;/strong&gt;](/previous-versions/windows/desktop/vpnclientpsprov/msft-vpnconnection)"><strong>MSFT_VpnConnection</strong></a></td>
<td><img src="images/checkmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td><a href="/previous-versions/windows/desktop/sppwmi/softwarelicensingproduct" data-raw-source="[&lt;strong&gt;SoftwareLicensingProduct&lt;/strong&gt;](/previous-versions/windows/desktop/sppwmi/softwarelicensingproduct)"><strong>SoftwareLicensingProduct</strong></a></td>
<td></td>
</tr>
<tr class="odd">
<td><a href="/previous-versions/windows/desktop/sppwmi/softwarelicensingservice" data-raw-source="[&lt;strong&gt;SoftwareLicensingService&lt;/strong&gt;](/previous-versions/windows/desktop/sppwmi/softwarelicensingservice)"><strong>SoftwareLicensingService</strong></a></td>
<td></td>
</tr>
</tbody>
</table>

 

### Parental control WMI classes

| Class                                                                    | Test completed in Windows 10 for desktop |
|--------------------------------------------------------------------------|------------------------------------------|
| [**wpcappoverride**](/windows/win32/parcon/parental-controls-wmi-provider-schema)       | ![cross mark](images/checkmark.png)      |
| [**wpcgameoverride**](/windows/win32/parcon/parental-controls-wmi-provider-schema)      | ![cross mark](images/checkmark.png)      |
| [**wpcgamessettings**](/windows/win32/parcon/parental-controls-wmi-provider-schema)     | ![cross mark](images/checkmark.png)      |
| [**wpcrating**](/windows/win32/parcon/parental-controls-wmi-provider-schema)            | ![cross mark](images/checkmark.png)      |
| [**wpcRatingsDescriptor**](/windows/win32/parcon/parental-controls-wmi-provider-schema) |                                          |
| [**wpcratingssystem**](/windows/win32/parcon/parental-controls-wmi-provider-schema)     | ![cross mark](images/checkmark.png)      |
| [**wpcsystemsettings**](/windows/win32/parcon/parental-controls-wmi-provider-schema)    | ![cross mark](images/checkmark.png)      |
| [**wpcurloverride**](/windows/win32/parcon/parental-controls-wmi-provider-schema)       | ![cross mark](images/checkmark.png)      |
| [**wpcusersettings**](/windows/win32/parcon/parental-controls-wmi-provider-schema)      | ![cross mark](images/checkmark.png)      |
| [**wpcwebsettings**](/windows/win32/parcon/parental-controls-wmi-provider-schema)       | ![cross mark](images/checkmark.png)      |

 

### Win32 WMI classes

| Class                                                                    | Test completed in Windows 10 for desktop |
|--------------------------------------------------------------------------|------------------------------------------|
[**Win32\_1394Controller**](/windows/win32/cimwin32prov/win32-1394controller) |
[**Win32\_BaseBoard**](/windows/win32/cimwin32prov/win32-baseboard)      |
[**Win32\_Battery**](/windows/win32/cimwin32prov/win32-battery)        | ![cross mark](images/checkmark.png)
[**Win32\_BIOS**](/windows/win32/cimwin32prov/win32-bios)           | ![cross mark](images/checkmark.png)
[**Win32\_CDROMDrive**](/windows/win32/cimwin32prov/win32-cdromdrive)     |
[**Win32\_ComputerSystem**](/windows/win32/cimwin32prov/win32-computersystem) | ![cross mark](images/checkmark.png)
[**Win32\_ComputerSystemProduct**](/windows/win32/cimwin32prov/win32-computersystemproduct) | ![cross mark](images/checkmark.png)
[**Win32\_CurrentTime**](/previous-versions/windows/desktop/wmitimepprov/win32-currenttime)    | ![cross mark](images/checkmark.png)
[**Win32\_Desktop**](/windows/win32/cimwin32prov/win32-desktop)        |
[**Win32\_DesktopMonitor**](/windows/win32/cimwin32prov/win32-desktopmonitor) |![cross mark](images/checkmark.png)
[**Win32\_DiskDrive**](/windows/win32/cimwin32prov/win32-diskdrive)      | ![cross mark](images/checkmark.png)
[**Win32\_DiskPartition**](/windows/win32/cimwin32prov/win32-diskpartition)  |
[**Win32\_DisplayConfiguration**](/previous-versions//aa394137(v=vs.85)) | ![cross mark](images/checkmark.png)
[**Win32\_DMAChannel**](/windows/win32/cimwin32prov/win32-dmachannel)     | 
[**Win32\_DriverVXD**](/previous-versions//aa394141(v=vs.85))      |
[**Win32\_EncryptableVolume**](/windows/win32/secprov/win32-encryptablevolume) |
[**Win32\_Environment**](/windows/win32/cimwin32prov/win32-environment)    |
[**Win32\_IDEController**](/windows/win32/cimwin32prov/win32-idecontroller)  |
[**Win32\_InfraredDevice**](/windows/win32/cimwin32prov/win32-infrareddevice) |
[**Win32\_IRQResource**](/windows/win32/cimwin32prov/win32-irqresource)    |
[**Win32\_Keyboard**](/windows/win32/cimwin32prov/win32-keyboard)       |
[**Win32\_LoadOrderGroup**](/windows/win32/cimwin32prov/win32-loadordergroup) |
[**Win32\_LocalTime**](/previous-versions/windows/desktop/wmitimepprov/win32-localtime)      | ![cross mark](images/checkmark.png)
[**Win32\_LoggedOnUser**](/windows/win32/cimwin32prov/win32-loggedonuser)   |
[**Win32\_LogicalDisk**](/windows/win32/cimwin32prov/win32-logicaldisk)    | ![cross mark](images/checkmark.png)
[**Win32\_MotherboardDevice**](/windows/win32/cimwin32prov/win32-motherboarddevice) |
[**Win32\_NetworkAdapter**](/windows/win32/cimwin32prov/win32-networkadapter) | ![cross mark](images/checkmark.png)
[**Win32\_NetworkAdapterConfiguration**](/windows/win32/cimwin32prov/win32-networkadapterconfiguration) |
[**Win32\_NetworkClient**](/windows/win32/cimwin32prov/win32-networkclient)  |
[**Win32\_NetworkLoginProfile**](/windows/win32/cimwin32prov/win32-networkloginprofile) |
[**Win32\_NetworkProtocol**](/windows/win32/cimwin32prov/win32-networkprotocol) |
[**Win32\_NTEventlogFile**](/previous-versions/windows/desktop/legacy/aa394225(v=vs.85))  |
[**Win32\_OperatingSystem**](/windows/win32/cimwin32prov/win32-operatingsystem) | ![cross mark](images/checkmark.png)
[**Win32\_OSRecoveryConfiguration**](/windows/win32/cimwin32prov/win32-osrecoveryconfiguration) |
[**Win32\_PageFileSetting**](/windows/win32/cimwin32prov/win32-pagefilesetting) |
[**Win32\_ParallelPort**](/windows/win32/cimwin32prov/win32-parallelport) |
[**Win32\_PCMCIAController**](/windows/win32/cimwin32prov/win32-pcmciacontroller) |
[**Win32\_PhysicalMedia**](/previous-versions/windows/desktop/cimwin32a/win32-physicalmedia)                                   |  
[**Win32\_PhysicalMemory**](/windows/win32/cimwin32prov/win32-physicalmemory)   | ![cross mark](images/checkmark.png)
[**Win32\_PnPDevice**](/windows/win32/cimwin32prov/win32-pnpdevice)        |  
[**Win32\_PnPEntity**](/windows/win32/cimwin32prov/win32-pnpentity)        |  
[**Win32\_PointingDevice**](/windows/win32/cimwin32prov/win32-pointingdevice)   |
[**Win32\_PortableBattery**](/windows/win32/cimwin32prov/win32-portablebattery)  |
[**Win32\_PortResource**](/windows/win32/cimwin32prov/win32-portresource)     |
[**Win32\_POTSModem**](/windows/win32/cimwin32prov/win32-potsmodem)        |
[**Win32\_Printer**](/windows/win32/cimwin32prov/win32-printer)          |
[**Win32\_PrinterConfiguration**](/windows/win32/cimwin32prov/win32-printerconfiguration) |
[**Win32\_Processor**](/windows/win32/cimwin32prov/win32-processor)        | ![cross mark](images/checkmark.png)
[**Win32\_QuickFixEngineering**](/windows/win32/cimwin32prov/win32-quickfixengineering) | ![cross mark](images/checkmark.png)
[**Win32\_Registry**](/windows/win32/cimwin32prov/win32-registry)         |
[**Win32\_SCSIController**](/windows/win32/cimwin32prov/win32-scsicontroller)   |
[**Win32\_SerialPort**](/windows/win32/cimwin32prov/win32-serialport)       |
[**Win32\_SerialPortConfiguration**](/windows/win32/cimwin32prov/win32-serialportconfiguration) |
[**Win32\_ServerFeature**](/windows/win32/wmisdk/win32-serverfeature)    |
[**Win32\_Service**](/windows/win32/cimwin32prov/win32-service)          | ![cross mark](images/checkmark.png)
[**Win32\_Share**](/windows/win32/cimwin32prov/win32-share)            | ![cross mark](images/checkmark.png)
[**Win32\_SoundDevice**](/windows/win32/cimwin32prov/win32-sounddevice)      |
[**Win32\_SystemAccount**](/windows/win32/cimwin32prov/win32-systemaccount)    |
[**Win32\_SystemBIOS**](/windows/win32/cimwin32prov/win32-systembios)       | ![cross mark](images/checkmark.png)
[**Win32\_SystemDriver**](/windows/win32/cimwin32prov/win32-systemdriver)     |
[**Win32\_SystemEnclosure**](/windows/win32/cimwin32prov/win32-systemenclosure)  | ![cross mark](images/checkmark.png)
[**Win32\_TapeDrive**](/windows/win32/cimwin32prov/win32-tapedrive)        |
[**Win32\_TimeZone**](/windows/win32/cimwin32prov/win32-timezone)         | ![cross mark](images/checkmark.png)
[**Win32\_UninterruptiblePowerSupply**](/previous-versions//aa394503(v=vs.85)) |
[**Win32\_USBController**](/windows/win32/cimwin32prov/win32-usbcontroller)    |
[**Win32\_UTCTime**](/previous-versions/windows/desktop/wmitimepprov/win32-utctime)          | ![cross mark](images/checkmark.png)
[**Win32\_VideoController**](/windows/win32/cimwin32prov/win32-videocontroller) |
**Win32\_WindowsUpdateAgentVersion**                                                        |
 

## Related topics

[Configuration service provider reference](configuration-service-provider-reference.md)

## Related Links
[CIM Video Controller](/windows/win32/cimwin32prov/cim-videocontroller)