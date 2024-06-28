---
title: WiredNetwork DDF file
description: View the XML file containing the device description framework (DDF) for the WiredNetwork configuration service provider.
ms.date: 06/28/2024
---

<!-- Auto-Generated CSP Document -->

# WiredNetwork DDF file

The following XML file contains the device description framework (DDF) for the WiredNetwork configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>WiredNetwork</NodeName>
    <Path>./User/Vendor/MSFT</Path>
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
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;0xD2;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>LanXML</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>XML describing the wired network configuration and follows the LAN_profile schemas https://msdn.microsoft.com/en-us/library/windows/desktop/aa816366(v=vs.85).aspx</Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="None">
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>EnableBlockPeriod</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description> Enable block period (minutes), used to specify the duration for which automatic authentication attempts will be blocked from occurring after a failed authentication attempt.</Description>
        <DFFormat>
          <int />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="Range">
          <MSFT:Value>[0-4294967295]</MSFT:Value>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
  </Node>
  <Node>
    <NodeName>WiredNetwork</NodeName>
    <Path>./Device/Vendor/MSFT</Path>
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
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;0xD2;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>LanXML</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>XML describing the wired network configuration and follows the LAN_profile schemas https://msdn.microsoft.com/en-us/library/windows/desktop/aa816366(v=vs.85).aspx</Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="None">
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>EnableBlockPeriod</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description> Enable block period (minutes), used to specify the duration for which automatic authentication attempts will be blocked from occurring after a failed authentication attempt.</Description>
        <DFFormat>
          <int />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="Range">
          <MSFT:Value>[0-4294967295]</MSFT:Value>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[WiredNetwork configuration service provider reference](wirednetwork-csp.md)
