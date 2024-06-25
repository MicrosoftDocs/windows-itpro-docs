---
title: DevInfo DDF file
description: View the XML file containing the device description framework (DDF) for the DevInfo configuration service provider.
ms.date: 06/19/2024
---

<!-- Auto-Generated CSP Document -->

# DevInfo DDF file

The following XML file contains the device description framework (DDF) for the DevInfo configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>DevInfo</NodeName>
    <Path>.</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>The interior node holding all devinfo objects</Description>
      <DFFormat>
        <node />
      </DFFormat>
      <Occurrence>
        <One />
      </Occurrence>
      <Scope>
        <Permanent />
      </Scope>
      <DFTitle>The interior node holding all devinfo objects</DFTitle>
      <DFType>
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.10586</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x87;0x88;0x88*;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;0xCA;0xCB;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>DevId</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>An unique device identifier. An application-specific global unique device identifier is provided in this node.</Description>
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
      <NodeName>Man</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description> Returns the name of the OEM. For Windows 10 for desktop editions, it returns the SystemManufacturer as defined in HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS\SystemManufacturer. If no name is found, this returns "Unknown".</Description>
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
      <NodeName>Mod</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Returns the name of the hardware device model as specified by the mobile operator. For Windows 10 for desktop editions, it returns the SystemProductName as defined in HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS\SystemProductName. If no name is found, this returns "Unknown".</Description>
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
      <NodeName>DmV</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>The current management client revision of the device.</Description>
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
      <NodeName>Lang</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Returns the current user interface (UI) language setting of the device as defined by RFC1766.</Description>
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
      <NodeName>Ext</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Parent node for nodes extended by Microsoft.</Description>
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
        <NodeName>ICCID</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Retrieves the ICCID of the first adapter.</Description>
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
  </Node>
</MgmtTree>
```

## Related articles

[DevInfo configuration service provider reference](devinfo-csp.md)
