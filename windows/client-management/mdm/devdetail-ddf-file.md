---
title: DevDetail DDF file
description: View the XML file containing the device description framework (DDF) for the DevDetail configuration service provider.
ms.date: 06/28/2024
---

<!-- Auto-Generated CSP Document -->

# DevDetail DDF file

The following XML file contains the device description framework (DDF) for the DevDetail configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>DevDetail</NodeName>
    <Path>.</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>The DevDetail configuration service provider handles the management object which provides device-specific parameters to the OMA DM server.</Description>
      <DFFormat>
        <node />
      </DFFormat>
      <Occurrence>
        <One />
      </Occurrence>
      <Scope>
        <Permanent />
      </Scope>
      <DFType>
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.10586</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x88;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;0xD2;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>URI</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <DFFormat>
          <node />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFType>
          <DDFName />
        </DFType>
      </DFProperties>
      <Node>
        <NodeName>MaxDepth</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Returns the maximum depth of the management tree that the device supports. The default is zero (0). This is the maximum number of URI segments that the device supports. The default value zero (0) indicates that the device supports a URI of unlimited depth.</Description>
          <DFFormat>
            <chr />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>MaxTotLen</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Returns the maximum total length of any URI used to address a node or node property. The default is zero (0). This is the largest number of characters in the URI that the device supports. The default value zero (0) indicates that the device supports a URI of unlimited length.</Description>
          <DFFormat>
            <chr />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>MaxSegLen</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Returns the total length of any URI segment in a URI that addresses a node or node property. The default is zero (0). This is the largest number of characters that the device can support in a single URI segment. The default value zero (0) indicates that the device supports URI segment of unlimited length.</Description>
          <DFFormat>
            <chr />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>DevTyp</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Returns the device model name /SystemProductName as a string.</Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>OEM</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Returns the name of the Original Equipment Manufacturer (OEM) as a string, as defined in the specification SyncML Device Information, version 1.1.2.</Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>FwV</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Returns the firmware version, as defined in the registry key HKEY_LOCAL_MACHINE\System\Platform\DeviceTargetingInfo\PhoneFirmwareRevision. For Windows 10 for desktop editions (Home, Pro, Enterprise, and Education), it returns the BIOS version as defined in the registry key HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS\BIOSVersion.</Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>SwV</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Returns the Windows 10 OS software version in the format MajorVersion.MinorVersion.BuildNumber.QFEnumber. Currently the BuildNumber returns the build number on the desktop and mobile build number on the phone. In the future, the build numbers may converge.</Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>HwV</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Returns the hardware version, as defined in the registry key HKEY_LOCAL_MACHINE\System\Platform\DeviceTargetingInfo\PhoneRadioHardwareRevision. For Windows 10 for desktop editions, it returns the BIOS version as defined in the registry key HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS\BIOSVersion.</Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>LrgObj</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Returns whether the device uses OMA DM Large Object Handling, as defined in the specification SyncML Device Information, version 1.1.2.</Description>
        <DFFormat>
          <bool />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>Ext</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Subtree to hold vendor-specific parameters</Description>
        <DFFormat>
          <node />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFType>
          <DDFName />
        </DFType>
      </DFProperties>
      <Node>
        <NodeName>Microsoft</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Subtree to hold vendor-specific parameters</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFType>
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>MobileID</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the mobile device ID associated with the cellular network. Returns 404 for devices that do not have a cellular network support. The IMSI value is returned for GSM and UMTS networks. CDMA and worldwide phones will return a 404 Not Found status code error if queried for this element.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>RadioSwV</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the radio stack software version number.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Resolution</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Resolution of the device in the format of WidthxLength (e.g., "400x800").</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>CommercializationOperator</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the name of the mobile operator if it exists; otherwise it returns 404.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ProcessorArchitecture</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the processor architecture of the device as "arm" or "x86".</Description>
            <DFFormat>
              <int />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ProcessorType</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the processor type of the device as documented in SYSTEM_INFO.</Description>
            <DFFormat>
              <int />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>OSPlatform</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the OS platform of the device. For Windows 10 for desktop editions, it returns the ProductName as defined in HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProductName.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>LocalTime</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the client local time in ISO 8601 format. Example: 2003-06-16T18:37:44Z.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DeviceName</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>Contains the user-specified device name. Support for Replace operation for Windows 10 Mobile was added in Windows 10, version 1511. Replace operation is not supported in the desktop or IoT Core. When you change the device name using this node, it triggers a dialog on the device asking the user to reboot. The new device name does not take effect until the device is restarted. If the user cancels the dialog, it will show again until a reboot occurs.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
            <MSFT:RebootBehavior>Automatic</MSFT:RebootBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DNSComputerName</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description><![CDATA[This node specifies the DNS name for a device. This setting can be managed remotely. A couple of macros can be embedded within the value for dynamic substitution: %RAND:<# of digits>% and %SERIAL%. Examples: (a) "Test%RAND:6%" will generate a name "Test" followed by 6 random digits (e.g., "Test123456").  (b) "Foo%SERIAL%", will generate a name "Foo" followed by the serial number derived from device's ID. If both macros are in the string, the RANDOM macro will take priority over the SERIAL macro (SERIAL will be ignored). The server must explicitly reboot the device for this value to take effect. This value has a maximum allowed length of 63 characters as per DNS standards.]]></Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.2</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
            <MSFT:RebootBehavior>ServerInitiated</MSFT:RebootBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>TotalStorage</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Total available storage in MB from first internal drive on the device (may be less than total physical storage).  Available for Windows Mobile only.</Description>
            <DFFormat>
              <int />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>FreeStorage</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Total free storage in MB from first internal drive on the device.</Description>
            <DFFormat>
              <int />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>TotalRAM</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Total available memory in MB on the device (may be less than total physical memory).</Description>
            <DFFormat>
              <int />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>SMBIOSSerialNumber</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>SMBIOS Serial Number of the device.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.2</MSFT:CspVersion>
            </MSFT:Applicability>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>SMBIOSVersion</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>SMBIOS version of the device.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22000, 10.0.19041.1387, 10.0.19042.1387, 10.0.19043.1387, 10.0.19044.1387</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.2</MSFT:CspVersion>
            </MSFT:Applicability>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>SystemSKU</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the System SKU, as defined in the registry key HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS\SystemSKU.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFType>
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
      </Node>
      <Node>
        <NodeName>WLANMACAddress</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>The MAC address of the active WiFi connection</Description>
          <DFFormat>
            <chr />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>VoLTEServiceSetting</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>The VoLTE service setting on or off. Only exposed to Mobile Operator-based OMA-DM servers.</Description>
          <DFFormat>
            <bool />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>WlanIPv4Address</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>The IPv4 address of the active WiFi connection. Only exposed to Enterprise-based OMA-DM servers.</Description>
          <DFFormat>
            <chr />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>WlanIPv6Address</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>The IPv6 address of the active WiFi connection. Only exposed to Enterprise-based OMA-DM servers.</Description>
          <DFFormat>
            <chr />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>WlanDnsSuffix</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>The DNS suffix of the active WiFi connection. Only exposed to Enterprise-based OMA-DM servers.</Description>
          <DFFormat>
            <chr />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>WlanSubnetMask</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>The subnet mask for the active WiFi connection. Only exposed to Enterprise-based OMA-DM servers.</Description>
          <DFFormat>
            <chr />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DeviceHardwareData</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Added in Windows 10 version 1703. Returns a base64 encoded string of the hardware parameters of a device.</Description>
          <DFFormat>
            <chr />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.1</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[DevDetail configuration service provider reference](devdetail-csp.md)
