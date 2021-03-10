---
title: DevDetail CSP
description: Learn how the DevDetail configuration service provider handles the management object which provides device-specific parameters to the OMA DM server.
ms.assetid: 719bbd2d-508d-439b-b175-0874c7e6c360
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 03/27/2020
---

# DevDetail CSP

The DevDetail configuration service provider handles the management object which provides device-specific parameters to the OMA DM server. These device parameters are not sent from the client to the server automatically, but can be queried by servers using OMA DM commands.

> [!NOTE]
> This configuration service provider requires the ID\_CAP\_CSP\_FOUNDATION and ID\_CAP\_DEVICE\_MANAGEMENT\_ADMIN capabilities to be accessed from a network configuration application.

For the DevDetail CSP, you cannot use the Replace command unless the node already exists.

The following diagram shows the DevDetail configuration service provider management object in tree format as used by OMA Device Management. The OMA Client Provisioning protocol is not supported for this configuration service provider.

![devdetail csp (dm)](images/provisioning-csp-devdetail-dm.png)

<a href="" id="devtyp"></a>**DevTyp**  
Required. Returns the device model name /SystemProductName as a string.

Supported operation is Get.

<a href="" id="oem"></a>**OEM**  
Required. Returns the name of the Original Equipment Manufacturer (OEM) as a string, as defined in the specification SyncML Device Information, version 1.1.2.

Supported operation is Get.

<a href="" id="fwv"></a>**FwV**  
Required. Returns the firmware version, as defined in the registry key HKEY_LOCAL_MACHINE\System\Platform\DeviceTargetingInfo\PhoneFirmwareRevision.

For Windows 10 for desktop editions (Home, Pro, Enterprise, and Education), it returns the BIOS version as defined in the registry key HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS\BIOSVersion.

Supported operation is Get.

<a href="" id="swv"></a>**SwV**  
Required. Returns the Windows 10 OS software version in the format MajorVersion.MinorVersion.BuildNumber.QFEnumber. Currently the BuildNumber returns the build number on the desktop and mobile build number on the phone. In the future, the build numbers may converge.

Supported operation is Get.

<a href="" id="hwv"></a>**HwV**  
Required. Returns the hardware version, as defined in the registry key HKEY_LOCAL_MACHINE\System\Platform\DeviceTargetingInfo\PhoneRadioHardwareRevision.

For Windows 10 for desktop editions, it returns the BIOS version as defined in the registry key HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS\BIOSVersion.

Supported operation is Get.

<a href="" id="lrgobj"></a>**LrgObj**  
Required. Returns whether the device uses OMA DM Large Object Handling, as defined in the specification SyncML Device Information, version 1.1.2.

Supported operation is Get.

<a href="" id="uri-maxdepth"></a>**URI/MaxDepth**  
Required. Returns the maximum depth of the management tree that the device supports. The default is zero (0).

Supported operation is Get.

This is the maximum number of URI segments that the device supports. The default value zero (0) indicates that the device supports a URI of unlimited depth.

<a href="" id="uri-maxtotlen"></a>**URI/MaxTotLen**  
Required. Returns the maximum total length of any URI used to address a node or node property. The default is zero (0).

Supported operation is Get.

This is the largest number of characters in the URI that the device supports. The default value zero (0) indicates that the device supports a URI of unlimited length.

<a href="" id="uri-maxseglen"></a>**URI/MaxSegLen**  
Required. Returns the total length of any URI segment in a URI that addresses a node or node property. The default is zero (0).

Supported operation is Get.

This is the largest number of characters that the device can support in a single URI segment. The default value zero (0) indicates that the device supports URI segment of unlimited length.

<a href="" id="ext-microsoft-mobileid"></a>**Ext/Microsoft/MobileID**  
Required. Returns the mobile device ID associated with the cellular network. Returns 404 for devices that do not have a cellular network support.

Supported operation is Get.

The IMSI value is returned for GSM and UMTS networks. CDMA and worldwide phones will return a 404 Not Found status code error if queried for this element.

<a href="" id="ext-microsoft-radioswv"></a>**Ext/Microsoft/RadioSwV**  
Required. Returns the radio stack software version number.

Supported operation is Get.

<a href="" id="ext-microsoft-resolution"></a>**Ext/Microsoft/Resolution**  
Required. Returns the UI screen resolution of the device (example: &quot;480x800&quot;).

Supported operation is Get.

<a href="" id="ext-microsoft-commercializationoperator"></a>**Ext/Microsoft/CommercializationOperator**  
Required. Returns the name of the mobile operator if it exists; otherwise it returns 404..

Supported operation is Get.

<a href="" id="ext-microsoft-processorarchitecture"></a>**Ext/Microsoft/ProcessorArchitecture**  
Required. Returns the processor architecture of the device as &quot;arm&quot; or &quot;x86&quot;.

Supported operation is Get.

<a href="" id="ext-microsoft-processortype"></a>**Ext/Microsoft/ProcessorType**  
Required. Returns the processor type of the device as documented in SYSTEM_INFO.

Supported operation is Get.

<a href="" id="ext-microsoft-osplatform"></a>**Ext/Microsoft/OSPlatform**  
Required. Returns the OS platform of the device. For Windows 10 for desktop editions, it returns the ProductName as defined in HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProductName.

Supported operation is Get.

<a href="" id="ext-microsoft-localtime"></a>**Ext/Microsoft/LocalTime**  
Required. Returns the client local time in ISO 8601 format.

Supported operation is Get.

<a href="" id="ext-microsoft-devicename"></a>**Ext/Microsoft/DeviceName**  
Required. Contains the user-specified device name.

Support for Replace operation for Windows 10 Mobile was added in Windows 10, version 1511. Replace operation is not supported in the desktop or IoT Core. When you change the device name using this node, it triggers a dialog on the device asking the user to reboot. The new device name does not take effect until the device is restarted. If the user cancels the dialog, it will show again until a reboot occurs.

Value type is string.

Supported operations are Get and Replace.

<a href="" id="ext-microsoft-dnscomputername "></a>**Ext/Microsoft/DNSComputerName**  
Added in Windows 10, version 2004. This node specifies the DNS computer name for a device. The server must explicitly reboot the device for this value to take effect. A couple of macros can be embedded within the value for dynamic substitution. Using any of these macros will limit the new name to 63 characters. This node replaces the **Domain/ComputerName** node in [Accounts CSP](accounts-csp.md).

The following are the available naming macros:  

| Macro | Description | Example | Generated Name |
| -------| -------| -------| -------|
| %RAND:<# of digits> | Generates the specified number of random digits. | Test%RAND:6% | Test123456|
| %SERIAL% | Generates the serial number derived from the device. If the serial number causes the new name to exceed the 63 character limit, the serial number will be truncated from the beginning of the sequence.| Test-Device-%SERIAL% | Test-Device-456|

Value type is string. Supported operations are Get and Replace.

> [!Note]  
> We recommend to use `%SERIAL%` or `%RAND:x%` with a high character limit to reduce the chance of name collision when generating a random name. This feature doesn't check if a particular name is already present in the environment.

On desktop PCs, this setting specifies the DNS hostname of the computer (Computer Name) up to 63 characters. Use `%RAND:x%` to generate x number of random digits in the name, where x must be a number less than 63. For domain-joined computers, the unique name must use `%RAND:x%`. Use `%SERIAL%` to generate the name with the `computer's` serial number embedded. If the serial number exceeds the character limit, it will be truncated from the beginning of the sequence. The character restriction limit does not count the length of the macros, `%RAND:x%` and `%SERIAL%`. This setting is supported only in Windows 10, version 1803 and later. To change this setting in Windows 10, version 1709 and earlier releases, use the **ComputerName** setting under **Accounts** > **ComputerAccount**.

<a href="" id="ext-microsoft-totalstorage"></a>**Ext/Microsoft/TotalStorage**  
Added in Windows 10, version 1511. Integer that specifies the total available storage in MB from first internal drive on the device (may be less than total physical storage).

Supported operation is Get.

> [!NOTE]
> This is only supported in Windows 10 Mobile.

<a href="" id="ext-microsoft-totalram"></a>**Ext/Microsoft/TotalRAM**  
Added in Windows 10, version 1511. Integer that specifies the total available memory in MB on the device (may be less than total physical memory).

Supported operation is Get.

<a href="" id="ext-microsoft-smbiosserialnumber"></a>**Ext/Microsoft/SMBIOSSerialNumber**  
Added in Windows 10, version 1809. SMBIOS Serial Number of the device.

Value type is string. Supported operation is Get.

<a href="" id="ext-wlanmacaddress"></a>**Ext/WLANMACAddress**  
The MAC address of the active WLAN connection, as a 12-digit hexadecimal number.

Supported operation is Get.

> [!NOTE]
> This is not supported in Windows 10 for desktop editions.

<a href="" id="volteservicesetting"></a>**Ext/VoLTEServiceSetting**  
Returns the VoLTE service to on or off. This is only exposed to mobile operator OMA-DM servers.

Supported operation is Get.

<a href="" id="wlanipv4address"></a>**Ext/WlanIPv4Address**  
Returns the IPv4 address of the active Wi-Fi connection. This is only exposed to enterprise OMA DM servers.

Supported operation is Get.

<a href="" id="wlanipv6address"></a>**Ext/WlanIPv6Address**  
Returns the IPv6 address of the active Wi-Fi connection. This is only exposed to enterprise OMA-DM servers.

Supported operation is Get.

<a href="" id="wlandnssuffix"></a>**Ext/WlanDnsSuffix**  
Returns the DNS suffix of the active Wi-Fi connection. This is only exposed to enterprise OMA-DM servers.

Supported operation is Get.

<a href="" id="wlansubnetmask"></a>**Ext/WlanSubnetMask**  
Returns the subnet mask for the active Wi-Fi connection. This is only exposed to enterprise OMA-DM servers.

Supported operation is Get.

<a href="" id="devicehardwaredata"></a>**Ext/DeviceHardwareData**  
Added in Windows 10 version 1703. Returns a base64-encoded string of the hardware parameters of a device.

> [!NOTE]
> This node contains a raw blob used to identify a device in the cloud. It's not meant to be human readable by design and you cannot parse the content to get any meaningful hardware information.

Supported operation is Get.

## Related topics

[Configuration service provider reference](configuration-service-provider-reference.md)

 

 





