---
title: AccountManagement DDF file
description: View the XML file containing the device description framework (DDF) for the AccountManagement configuration service provider.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

# AccountManagement DDF file

The following XML file contains the device description framework (DDF) for the AccountManagement configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>AccountManagement</NodeName>
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
        <MSFT:OsBuildVersion>10.0.19041</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x88;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>UserProfileManagement</NodeName>
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
        <NodeName>EnableProfileManager</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>false</DefaultValue>
          <Description>Enable profile lifetime mangement for shared or communal device scenarios.</Description>
          <DFFormat>
            <bool />
          </DFFormat>
          <Occurrence>
            <ZeroOrOne />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>Enable profile manager</DFTitle>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>false</MSFT:Value>
              <MSFT:ValueDescription>False</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>true</MSFT:Value>
              <MSFT:ValueDescription>True</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>DeletionPolicy</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>1</DefaultValue>
          <Description>Configures when profiles will be deleted. Allowed values: 0 (delete immediately upon device returning to a state with no currently active users); 1 (delete at storage capacity threshold); 2 (delete at both storage capacity threshold and profile inactivity threshold).</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <ZeroOrOne />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>Profile deletion policy</DFTitle>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>0</MSFT:Value>
              <MSFT:ValueDescription>Delete immediately upon device returning to a state with no currently active users)</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>1</MSFT:Value>
              <MSFT:ValueDescription>Delete at storage capacity threshold</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>2</MSFT:Value>
              <MSFT:ValueDescription>Delete at both storage capacity threshold and profile inactivity threshold</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>StorageCapacityStartDeletion</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>25</DefaultValue>
          <Description>Start deleting profiles when available storage capacity falls below this threshold, given as percent of total storage available for profiles. Profiles that have been inactive the longest will be deleted first.</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <ZeroOrOne />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>Storage capacity threshold to start profile deletion</DFTitle>
          <DFType>
            <MIME />
          </DFType>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>StorageCapacityStopDeletion</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>50</DefaultValue>
          <Description>Stop deleting profiles when available storage capacity is brought up to this threshold, given as percent of total storage available for profiles.</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <ZeroOrOne />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>Storage capacity threshold to stop profile deletion</DFTitle>
          <DFType>
            <MIME />
          </DFType>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ProfileInactivityThreshold</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Delete />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>30</DefaultValue>
          <Description>Start deleting profiles when they have not been logged on during the specified period, given as number of days.</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <ZeroOrOne />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>Profile inactive threshold</DFTitle>
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

[AccountManagement configuration service provider reference](accountmanagement-csp.md)
