---
title: CloudDesktop DDF file
description: View the XML file containing the device description framework (DDF) for the CloudDesktop configuration service provider.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

# CloudDesktop DDF file

The following XML file contains the device description framework (DDF) for the CloudDesktop configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>CloudDesktop</NodeName>
    <Path>./User/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>The CloudDesktop configuration service provider is used to configure different Cloud PC related scenarios.</Description>
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
        <MSFT:OsBuildVersion>99.9.99999</MSFT:OsBuildVersion>
        <MSFT:CspVersion>2.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x30;0x31;0x7E;0x87;0x88;0x88*;0xA1;0xA2;0xA4;0xA5;0xB4;0xBC;0xBD;0xBF;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>EnablePhysicalDeviceAccessOnCtrlAltDel</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>false</DefaultValue>
        <Description>Configuring this node gives access to the physical devices used to boot to Cloud PCs from the Ctrl+Alt+Del page for specified users. This node supports these options: 0. Not enabled 1. Enabled.</Description>
        <DFFormat>
          <bool />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Enable access to physical device on CtrlAltDel page</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>false</MSFT:Value>
            <MSFT:ValueDescription>Access to physical device on CtrlAltDel page disabled</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>true</MSFT:Value>
            <MSFT:ValueDescription>Access to physical device on CtrlAltDel page enabled</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>EnablePhysicalDeviceAccessOnErrorScreens</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>false</DefaultValue>
        <Description>Configuring this node gives access to the physical devices used to boot to Cloud PCs from the error screens for specified users. This node supports these options: 0. Not enabled 1. Enabled.</Description>
        <DFFormat>
          <bool />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Enable access to physical device on error screens</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>false</MSFT:Value>
            <MSFT:ValueDescription>Access to physical device on error screens disabled</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>true</MSFT:Value>
            <MSFT:ValueDescription>Access to physical device on error screens enabled</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
  </Node>
  <Node>
    <NodeName>CloudDesktop</NodeName>
    <Path>./Device/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>The CloudDesktop configuration service provider is used to configure different Cloud PC related scenarios.</Description>
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
        <MSFT:OsBuildVersion>10.0.22621.3374</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x30;0x31;0x7E;0x87;0x88;0x88*;0xA1;0xA2;0xA4;0xA5;0xB4;0xBC;0xBD;0xBF;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>BootToCloudPCEnhanced</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>0</DefaultValue>
        <Description>This node allows to configure different kinds of Boot to Cloud mode. Boot to cloud mode enables users to seamlessly sign-in to a Cloud PC. For using this feature, Cloud Provider application must be installed on the PC and the user must have a Cloud PC provisioned. This node supports the below options: 0. Not Configured. 1. Enable Boot to Cloud Shared PC Mode: Boot to Cloud Shared PC mode allows multiple users to sign-in on the device and use for shared purpose. 2. Enable Boot to Cloud Dedicated Mode (Cloud only): Dedicated mode allows user to sign-in on the device using various authentication mechanism configured by their organization (For ex. PIN, Biometrics etc). This mode preserves user personalization, including their profile picture and username in local machine, and facilitates fast account switching.</Description>
        <DFFormat>
          <int />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Boot to Cloud PC Enhanced</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22621.3374</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.0</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>0</MSFT:Value>
            <MSFT:ValueDescription>Not Configured</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>1</MSFT:Value>
            <MSFT:ValueDescription>Enable Boot to Cloud Shared PC Mode</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>2</MSFT:Value>
            <MSFT:ValueDescription>Enable Boot to Cloud Dedicated Mode (Cloud only)</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>EnableBootToCloudSharedPCMode</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>false</DefaultValue>
        <Description>Setting this node to "true" configures boot to cloud for Shared PC mode. Boot to cloud mode enables users to seamlessly sign-in to a Cloud PC. Shared PC mode allows multiple users to sign-in on the device and use for shared purpose. For enabling Boot to Cloud Shared PC feature, Cloud Provider application must be installed on the PC and the user must have a Cloud PC provisioned.</Description>
        <DFFormat>
          <bool />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Enable boot to cloud shared PC mode</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>88.8.88888</MSFT:OsBuildVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>false</MSFT:Value>
            <MSFT:ValueDescription>Not configured</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>true</MSFT:Value>
            <MSFT:ValueDescription>Boot to cloud shared pc mode enabled</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
        <MSFT:Deprecated />
      </DFProperties>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[CloudDesktop configuration service provider reference](clouddesktop-csp.md)
