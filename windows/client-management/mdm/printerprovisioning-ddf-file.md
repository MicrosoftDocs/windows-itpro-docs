---
title: PrinterProvisioning DDF file
description: View the XML file containing the device description framework (DDF) for the PrinterProvisioning configuration service provider.
ms.date: 06/19/2024
---

<!-- Auto-Generated CSP Document -->

# PrinterProvisioning DDF file

The following XML file contains the device description framework (DDF) for the PrinterProvisioning configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>PrinterProvisioning</NodeName>
    <Path>./User/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>Printer Provisioning</Description>
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
        <MSFT:OsBuildVersion>10.0.22000, 10.0.19044.1806, 10.0.19043.1806, 10.0.19042.1806</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x87;0x88;0x88*;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;0xCA;0xCB;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>UPPrinterInstalls</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>This setting will take the action on the specified user account to install or uninstall the specified printer. Install action is selected by default.</Description>
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
        <NodeName>
        </NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
          </AccessType>
          <Description>Identifies the Universal Print printer, by its Share ID, you wish to install on the targeted user account. The printer's Share ID can be found in the printer's properties via the Universal Print portal. Note: the targeted user account must have access rights to both the printer and to the Universal Print service.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <OneOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>PrinterSharedID</DFTitle>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>PrinterSharedID from the Universal Print system, which is used to discover and install Univeral Print printer</MSFT:UniqueName>
          </MSFT:DynamicNodeNaming>
        </DFProperties>
        <Node>
          <NodeName>CloudDeviceID</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Identifies the Universal Print printer, by its Printer ID, you wish to install on the targeted user account. The printer's Printer ID can be found in the printer's properties via the Universal Print portal. Note: the targeted user account must have access rights to both the printer and to the Universal Print service.</Description>
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
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Install</NodeName>
          <DFProperties>
            <AccessType>
              <Exec />
              <Get />
            </AccessType>
            <Description>Support async execute. Install Universal Print printer.</Description>
            <DFFormat>
              <null />
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
          <NodeName>Status</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>1 finished installation successfully, 2 installation in progress after receiving execute cmd,  4 installation failed, 8 installation initial status, 32 unknown (not used).</Description>
            <DFFormat>
              <int />
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
          <NodeName>ErrorCode</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>HRESULT of the last installation returned code.</Description>
            <DFFormat>
              <int />
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
          <NodeName>PrinterSharedName</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>Identifies the Universal Print printer, by its Share Name, you wish to install on the targeted user account. The printer's Share Name can be found in the printer's properties via the Universal Print portal. Note: the targeted user account must have access rights to both the printer and to the Universal Print service.</Description>
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

[PrinterProvisioning configuration service provider reference](printerprovisioning-csp.md)
