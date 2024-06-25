---
title: DeviceManageability DDF file
description: View the XML file containing the device description framework (DDF) for the DeviceManageability configuration service provider.
ms.date: 06/19/2024
---

<!-- Auto-Generated CSP Document -->

# DeviceManageability DDF file

The following XML file contains the device description framework (DDF) for the DeviceManageability configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>DeviceManageability</NodeName>
    <Path>./Device/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Add />
        <Delete />
        <Get />
      </AccessType>
      <Description>Root node to group information about runtime MDM configuration capability on the target device.</Description>
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
        <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x87;0x88;0x88*;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;0xCA;0xCB;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>Capabilities</NodeName>
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
        <NodeName>CSPVersions</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Returns the versions of all configuration service providers (CSP) for MDM. </Description>
          <DFFormat>
            <xml />
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
      <NodeName>Provider</NodeName>
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
        <DFTitle>Provider</DFTitle>
        <DFType>
          <DDFName />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>
        </NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
          </AccessType>
          <Description>Provider ID String of the Configuration Source</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>ProviderID</DFTitle>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>Provider ID String of the Configuration Source</MSFT:UniqueName>
          </MSFT:DynamicNodeNaming>
        </DFProperties>
        <Node>
          <NodeName>ConfigInfo</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Configuration Info string value set by the config source. Recommended to be used during sync session.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>ConfigInfo</DFTitle>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>PayloadTransfer</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Payload Transfer string value set by the config source. Recommended to be used during sync session.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>PayloadTransfer</DFTitle>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621, 10.0.22000.918, 10.0.19044.2193, 10.0.19043.2193, 10.0.19042.2193</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.1</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>EnrollmentInfo</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Enrollment Info string value set by the config source. Recommended to sent to server during MDM enrollment.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>EnrollmentInfo</DFTitle>
            <DFType>
              <MIME />
            </DFType>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[DeviceManageability configuration service provider reference](devicemanageability-csp.md)
