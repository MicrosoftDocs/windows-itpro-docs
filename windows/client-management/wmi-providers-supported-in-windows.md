---
title: WMI providers supported in Windows
description: Manage settings and applications on devices that subscribe to the Mobile Device Management (MDM) service with Windows Management Infrastructure (WMI).
ms.topic: conceptual
ms.date: 07/08/2024
---

# WMI providers supported in Windows

Windows Management Infrastructure (WMI) providers (and the classes they support) are used to manage settings and applications on devices that subscribe to the Mobile Device Management (MDM) service. The following subsections show the list WMI MDM classes that are supported in Windows.

> [!NOTE]
> Applications installed using WMI classes are not removed when the MDM account is removed from device.

The child node names of the result from a WMI query are separated by a forward slash (/) and not URI escaped. Here's an example query.

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

| Class                                                                                                           | Test completed in Windows 10 |
|-----------------------------------------------------------------------------------------------------------------|------------------------------|
| [**MDM_AppInstallJob**](/previous-versions/windows/desktop/mdmappprov/mdm-appinstalljob)                        | Currently testing.           |
| [**MDM_Application**](/previous-versions/windows/desktop/mdmappprov/mdm-application)                            | Currently testing.           |
| [**MDM_ApplicationFramework**](/previous-versions/windows/desktop/mdmappprov/mdm-applicationframework)          | Currently testing.           |
| [**MDM_ApplicationSetting**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-applicationsetting)         | Currently testing.           |
| [**MDM_BrowserSecurityZones**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-browsersecurityzones)     | Yes                          |
| [**MDM_BrowserSettings**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-browsersettings)               | Yes                          |
| [**MDM_Certificate**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-certificate)                       | Yes                          |
| [**MDM_CertificateEnrollment**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-certificateenrollment)   | Yes                          |
| [**MDM_Client**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-client)                                 | Currently testing.           |
| [**MDM_ConfigSetting**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-configsetting)                   | Yes                          |
| [**MDM_DeviceRegistrationInfo**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-deviceregistrationinfo) |                              |
| [**MDM_EASPolicy**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-easpolicy)                           | Yes                          |
| [**MDM_MgMtAuthority**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-mgmtauthority)                   | Yes                          |
| **MDM_MsiApplication**                                                                                          |                              |
| **MDM_MsiInstallJob**                                                                                           |                              |
| [**MDM_RemoteApplication**](/previous-versions/windows/desktop/mdmappprov/mdm-remoteapplication)                | Test not started.            |
| [**MDM_RemoteAppUseCookie**](/previous-versions/windows/desktop/mdmappprov/mdm-remoteappusercookie)             | Test not started.            |
| [**MDM_Restrictions**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-restrictions)                     | Yes                          |
| [**MDM_RestrictionsUser**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-restrictionsuser)             | Test not started.            |
| [**MDM_SecurityStatus**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-securitystatus)                 | Yes                          |
| [**MDM_SideLoader**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-sideloader)                         |                              |
| [**MDM_SecurityStatusUser**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-securitystatususer)         | Currently testing.           |
| [**MDM_Updates**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-updates)                               | Yes                          |
| [**MDM_VpnApplicationTrigger**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-vpnapplicationtrigger)   | Yes                          |
| **MDM_VpnConnection**                                                                                           |                              |
| [**MDM_WebApplication**](/previous-versions/windows/desktop/mdmappprov/mdm-webapplication)                      | Currently testing.           |
| [**MDM_WirelessProfile**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-wirelessprofile)               | Yes                          |
| [**MDM_WirelesssProfileXML**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-wirelessprofilexml)        | Yes                          |
| [**MDM_WNSChannel**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-wnschannel)                         | Yes                          |
| [**MDM_WNSConfiguration**](/previous-versions/windows/desktop/mdmsettingsprov/mdm-wnsconfiguration)             | Yes                          |
| [**MSFT_NetFirewallProfile**](/windows/win32/fwp/wmi/wfascimprov/msft-netfirewallprofile)                       | Yes                          |
| [**MSFT_VpnConnection**](/previous-versions/windows/desktop/vpnclientpsprov/msft-vpnconnection)                 | Yes                          |
| [**SoftwareLicensingProduct**](/previous-versions/windows/desktop/sppwmi/softwarelicensingproduct)              |                              |
| [**SoftwareLicensingService**](/previous-versions/windows/desktop/sppwmi/softwarelicensingservice)              |                              |

### Parental control WMI classes

| Class                                                                                   | Test completed in Windows 10 |
|-----------------------------------------------------------------------------------------|------------------------------|
| [**wpcappoverride**](/windows/win32/parcon/parental-controls-wmi-provider-schema)       | Yes                          |
| [**wpcgameoverride**](/windows/win32/parcon/parental-controls-wmi-provider-schema)      | Yes                          |
| [**wpcgamessettings**](/windows/win32/parcon/parental-controls-wmi-provider-schema)     | Yes                          |
| [**wpcrating**](/windows/win32/parcon/parental-controls-wmi-provider-schema)            | Yes                          |
| [**wpcRatingsDescriptor**](/windows/win32/parcon/parental-controls-wmi-provider-schema) |                              |
| [**wpcratingssystem**](/windows/win32/parcon/parental-controls-wmi-provider-schema)     | Yes                          |
| [**wpcsystemsettings**](/windows/win32/parcon/parental-controls-wmi-provider-schema)    | Yes                          |
| [**wpcurloverride**](/windows/win32/parcon/parental-controls-wmi-provider-schema)       | Yes                          |
| [**wpcusersettings**](/windows/win32/parcon/parental-controls-wmi-provider-schema)      | Yes                          |
| [**wpcwebsettings**](/windows/win32/parcon/parental-controls-wmi-provider-schema)       | Yes                          |

### Win32 WMI classes

| Class                                                                                                   | Test completed in Windows 10 |
|---------------------------------------------------------------------------------------------------------|------------------------------|
| [**Win32\_1394Controller**](/windows/win32/cimwin32prov/win32-1394controller)                           |                              |
| [**Win32\_BaseBoard**](/windows/win32/cimwin32prov/win32-baseboard)                                     |                              |
| [**Win32\_Battery**](/windows/win32/cimwin32prov/win32-battery)                                         | Yes                          |
| [**Win32\_BIOS**](/windows/win32/cimwin32prov/win32-bios)                                               | Yes                          |
| [**Win32\_CDROMDrive**](/windows/win32/cimwin32prov/win32-cdromdrive)                                   |                              |
| [**Win32\_ComputerSystem**](/windows/win32/cimwin32prov/win32-computersystem)                           | Yes                          |
| [**Win32\_ComputerSystemProduct**](/windows/win32/cimwin32prov/win32-computersystemproduct)             | Yes                          |
| [**Win32\_CurrentTime**](/previous-versions/windows/desktop/wmitimepprov/win32-currenttime)             | Yes                          |
| [**Win32\_Desktop**](/windows/win32/cimwin32prov/win32-desktop)                                         |                              |
| [**Win32\_DesktopMonitor**](/windows/win32/cimwin32prov/win32-desktopmonitor)                           | Yes                          |
| [**Win32\_DiskDrive**](/windows/win32/cimwin32prov/win32-diskdrive)                                     | Yes                          |
| [**Win32\_DiskPartition**](/windows/win32/cimwin32prov/win32-diskpartition)                             |                              |
| [**Win32\_DisplayConfiguration**](/previous-versions//aa394137(v=vs.85))                                | Yes                          |
| [**Win32\_DMAChannel**](/windows/win32/cimwin32prov/win32-dmachannel)                                   |                              |
| [**Win32\_DriverVXD**](/previous-versions//aa394141(v=vs.85))                                           |                              |
| [**Win32\_EncryptableVolume**](/windows/win32/secprov/win32-encryptablevolume)                          |                              |
| [**Win32\_Environment**](/windows/win32/cimwin32prov/win32-environment)                                 |                              |
| [**Win32\_IDEController**](/windows/win32/cimwin32prov/win32-idecontroller)                             |                              |
| [**Win32\_InfraredDevice**](/windows/win32/cimwin32prov/win32-infrareddevice)                           |                              |
| [**Win32\_IRQResource**](/windows/win32/cimwin32prov/win32-irqresource)                                 |                              |
| [**Win32\_Keyboard**](/windows/win32/cimwin32prov/win32-keyboard)                                       |                              |
| [**Win32\_LoadOrderGroup**](/windows/win32/cimwin32prov/win32-loadordergroup)                           |                              |
| [**Win32\_LocalTime**](/previous-versions/windows/desktop/wmitimepprov/win32-localtime)                 | Yes                          |
| [**Win32\_LoggedOnUser**](/windows/win32/cimwin32prov/win32-loggedonuser)                               |                              |
| [**Win32\_LogicalDisk**](/windows/win32/cimwin32prov/win32-logicaldisk)                                 | Yes                          |
| [**Win32\_MotherboardDevice**](/windows/win32/cimwin32prov/win32-motherboarddevice)                     |                              |
| [**Win32\_NetworkAdapter**](/windows/win32/cimwin32prov/win32-networkadapter)                           | Yes                          |
| [**Win32\_NetworkAdapterConfiguration**](/windows/win32/cimwin32prov/win32-networkadapterconfiguration) |                              |
| [**Win32\_NetworkClient**](/windows/win32/cimwin32prov/win32-networkclient)                             |                              |
| [**Win32\_NetworkLoginProfile**](/windows/win32/cimwin32prov/win32-networkloginprofile)                 |                              |
| [**Win32\_NetworkProtocol**](/windows/win32/cimwin32prov/win32-networkprotocol)                         |                              |
| [**Win32\_NTEventlogFile**](/previous-versions/windows/desktop/legacy/aa394225(v=vs.85))                |                              |
| [**Win32\_OperatingSystem**](/windows/win32/cimwin32prov/win32-operatingsystem)                         | Yes                          |
| [**Win32\_OSRecoveryConfiguration**](/windows/win32/cimwin32prov/win32-osrecoveryconfiguration)         |                              |
| [**Win32\_PageFileSetting**](/windows/win32/cimwin32prov/win32-pagefilesetting)                         |                              |
| [**Win32\_ParallelPort**](/windows/win32/cimwin32prov/win32-parallelport)                               |                              |
| [**Win32\_PCMCIAController**](/windows/win32/cimwin32prov/win32-pcmciacontroller)                       |                              |
| [**Win32\_PhysicalMedia**](/previous-versions/windows/desktop/cimwin32a/win32-physicalmedia)            |                              |
| [**Win32\_PhysicalMemory**](/windows/win32/cimwin32prov/win32-physicalmemory)                           | Yes                          |
| [**Win32\_PnPDevice**](/windows/win32/cimwin32prov/win32-pnpdevice)                                     |                              |
| [**Win32\_PnPEntity**](/windows/win32/cimwin32prov/win32-pnpentity)                                     |                              |
| [**Win32\_PointingDevice**](/windows/win32/cimwin32prov/win32-pointingdevice)                           |                              |
| [**Win32\_PortableBattery**](/windows/win32/cimwin32prov/win32-portablebattery)                         |                              |
| [**Win32\_PortResource**](/windows/win32/cimwin32prov/win32-portresource)                               |                              |
| [**Win32\_POTSModem**](/windows/win32/cimwin32prov/win32-potsmodem)                                     |                              |
| [**Win32\_Printer**](/windows/win32/cimwin32prov/win32-printer)                                         |                              |
| [**Win32\_PrinterConfiguration**](/windows/win32/cimwin32prov/win32-printerconfiguration)               |                              |
| [**Win32\_Processor**](/windows/win32/cimwin32prov/win32-processor)                                     | Yes                          |
| [**Win32\_QuickFixEngineering**](/windows/win32/cimwin32prov/win32-quickfixengineering)                 | Yes                          |
| [**Win32\_Registry**](/windows/win32/cimwin32prov/win32-registry)                                       |                              |
| [**Win32\_SCSIController**](/windows/win32/cimwin32prov/win32-scsicontroller)                           |                              |
| [**Win32\_SerialPort**](/windows/win32/cimwin32prov/win32-serialport)                                   |                              |
| [**Win32\_SerialPortConfiguration**](/windows/win32/cimwin32prov/win32-serialportconfiguration)         |                              |
| [**Win32\_ServerFeature**](/windows/win32/wmisdk/win32-serverfeature)                                   |                              |
| [**Win32\_Service**](/windows/win32/cimwin32prov/win32-service)                                         | Yes                          |
| [**Win32\_Share**](/windows/win32/cimwin32prov/win32-share)                                             | Yes                          |
| [**Win32\_SoundDevice**](/windows/win32/cimwin32prov/win32-sounddevice)                                 |                              |
| [**Win32\_SystemAccount**](/windows/win32/cimwin32prov/win32-systemaccount)                             |                              |
| [**Win32\_SystemBIOS**](/windows/win32/cimwin32prov/win32-systembios)                                   | Yes                          |
| [**Win32\_SystemDriver**](/windows/win32/cimwin32prov/win32-systemdriver)                               |                              |
| [**Win32\_SystemEnclosure**](/windows/win32/cimwin32prov/win32-systemenclosure)                         | Yes                          |
| [**Win32\_TapeDrive**](/windows/win32/cimwin32prov/win32-tapedrive)                                     |                              |
| [**Win32\_TimeZone**](/windows/win32/cimwin32prov/win32-timezone)                                       | Yes                          |
| [**Win32\_UninterruptiblePowerSupply**](/previous-versions//aa394503(v=vs.85))                          |                              |
| [**Win32\_USBController**](/windows/win32/cimwin32prov/win32-usbcontroller)                             |                              |
| [**Win32\_UTCTime**](/previous-versions/windows/desktop/wmitimepprov/win32-utctime)                     | Yes                          |
| [**Win32\_VideoController**](/windows/win32/cimwin32prov/win32-videocontroller)                         |                              |
| **Win32\_WindowsUpdateAgentVersion**                                                                    |                              |

## Related articles

[CIM Video Controller](/windows/win32/cimwin32prov/cim-videocontroller)
[Configuration service provider reference](mdm/index.yml)
