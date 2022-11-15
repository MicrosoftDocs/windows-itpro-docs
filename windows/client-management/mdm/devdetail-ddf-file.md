---
title: DevDetail DDF file
description: Learn about the OMA DM device description framework (DDF) for the DevDetail configuration service provider.
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/03/2020
---

# DevDetail DDF file

This topic shows the OMA DM device description framework (DDF) for the **DevDetail** configuration service provider. DDF files are used only with OMA DM provisioning XML.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-ddf.md).

The XML below is the current version for this CSP.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC "-//OMA//DTD-DM-DDF 1.2//EN"
    "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
    [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <Node>
    <NodeName>DevDetail</NodeName>
    <Path>.</Path>
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
        <DDFName>urn:oma:mo:oma-dm-devdetail:1.2</DDFName>
      </DFType>
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
          <DDFName></DDFName>
        </DFType>
      </DFProperties>
      <Node>
        <NodeName>MaxDepth</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
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
            <MIME>text/plain</MIME>
          </DFType>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>MaxTotLen</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
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
            <MIME>text/plain</MIME>
          </DFType>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>MaxSegLen</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
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
            <MIME>text/plain</MIME>
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
        <Description>Device model name, as specified and tracked by the manufacturer</Description>
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
          <MIME>text/plain</MIME>
        </DFType>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>OEM</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Name of OEM</Description>
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
          <MIME>text/plain</MIME>
        </DFType>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>FwV</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Provide the version of OEM ROM region.</Description>
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
          <MIME>text/plain</MIME>
        </DFType>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>HwV</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Returns the hardware version.</Description>
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
          <MIME>text/plain</MIME>
        </DFType>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>LrgObj</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>
          Large object isn't supported. The data for this node is "false".
        </Description>
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
          <MIME>text/plain</MIME>
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
          <DDFName></DDFName>
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
            <DDFName></DDFName>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>MobileID</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Indicates the subscriber ID registered with the cellular network. For GSM and UMTS networks, the value returned is the IMSI value; for other networks, SyncML Status code 404 is returned.</Description>
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
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>RadioSwV</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Version of the software radio stack</Description>
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
              <MIME>text/plain</MIME>
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
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>CommercializationOperator</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Name of operator with whom the device was commercialized.</Description>
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
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ProcessorArchitecture</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Processor architecture of the device, as returned by the GetSystemInfo API.</Description>
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
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ProcessorType</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Processor type of the device, as returned by the GetSystemInfo API.</Description>
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
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>OSPlatform</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Name of the operating system platform.</Description>
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
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>LocalTime</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Returns the UTC time formatted per ISO8601. Example: 2003-06-16T18:37:44Z.</Description>
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
              <MIME>text/plain</MIME>
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
            <Description>User-specified device name</Description>
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
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DNSComputerName</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>This node specifies the DNS name for a device. This setting can be managed remotely. A couple of macros can be embedded within the value for dynamic substitution: %RAND:&lt;# of digits&gt;% and %SERIAL%. Examples: (a) "Test%RAND:6%" will generate a name "Test" followed by 6 random digits (e.g., "Test123456").  (b) "Foo%SERIAL%", will generate a name "Foo" followed by the serial number derived from device's ID. If both macros are in the string, the RANDOM macro will take priority over the SERIAL macro (SERIAL will be ignored). The server must explicitly reboot the device for this value to take effect. This value has a maximum allowed length of 63 characters as per DNS standards.</Description>
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
              <MIME>text/plain</MIME>
            </DFType>
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
              <MIME>text/plain</MIME>
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
              <MIME>text/plain</MIME>
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
              <MIME>text/plain</MIME>
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
            <MIME>text/plain</MIME>
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
            <MIME>text/plain</MIME>
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
            <MIME>text/plain</MIME>
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
            <MIME>text/plain</MIME>
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
            <MIME>text/plain</MIME>
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
            <MIME>text/plain</MIME>
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
            <MIME>text/plain</MIME>
          </DFType>
        </DFProperties>
      </Node>
    </Node>
  </Node>
</MgmtTree>

```
