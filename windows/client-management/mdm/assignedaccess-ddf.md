---
title: AssignedAccess DDF file
description: View the XML file containing the device description framework (DDF) for the AssignedAccess configuration service provider.
ms.date: 06/19/2024
---

<!-- Auto-Generated CSP Document -->

# AssignedAccess DDF file

The following XML file contains the device description framework (DDF) for the AssignedAccess configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>AssignedAccess</NodeName>
    <Path>./Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>Root node for the CSP</Description>
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
        <MSFT:OsBuildVersion>10.0.10240</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x88;0x88*;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;0xCA;0xCB;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>KioskModeApp</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>This node can accept and return json string which comprises of account name, and AUMID for Kiosk mode app.

Example: {"User":"domain\\user", "AUMID":"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"}. 

When configuring kiosk mode app, account name will be used to find the target user. Account name includes domain name and user name. Domain name can be optional if user name is unique across the system. For a local account, domain name should be machine name. When "Get" is executed on this node, domain name is always returned in the output.

This node supports Add, Delete, Replace and Get methods. When there's no configuration, "Get" and "Delete" methods fail. When there's already a configuration for kiosk mode app, "Add" method fails. The data pattern for "Add" and "Replace" is the same.</Description>
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
        <CaseSense>
          <CIS />
        </CaseSense>
        <MSFT:AllowedValues ValueType="None">
        </MSFT:AllowedValues>
        <MSFT:Deprecated />
      </DFProperties>
    </Node>
    <Node>
      <NodeName>Configuration</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>This node accepts an AssignedAccessConfiguration xml as input. Please check out samples and required xsd on MSDN.</Description>
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
        <CaseSense>
          <CIS />
        </CaseSense>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.16299</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="None">
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>Status</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>This read only node contains kiosk health event xml</Description>
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
        <CaseSense>
          <CIS />
        </CaseSense>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
          <MSFT:CspVersion>2.0</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>ShellLauncher</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>This node accepts a ShellLauncherConfiguration xml as input. Please check out samples and required xsd on MSDN.</Description>
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
        <CaseSense>
          <CIS />
        </CaseSense>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
          <MSFT:CspVersion>2.0</MSFT:CspVersion>
          <MSFT:EditionAllowList>0x4;0x1B;0x48;0x54;0x79;0x7A;0x7D;0x7E;0x81;0x82;0xAB;0xAC;0xAF;0xBC;0xBF</MSFT:EditionAllowList>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="None">
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>StatusConfiguration</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>This node accepts a StatusConfiguration xml as input. Please check out samples and required xsd on MSDN.</Description>
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
        <CaseSense>
          <CIS />
        </CaseSense>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
          <MSFT:CspVersion>2.0</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="None">
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[AssignedAccess configuration service provider reference](assignedaccess-csp.md)
