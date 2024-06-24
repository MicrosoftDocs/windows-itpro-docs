---
title: SharedPC DDF file
description: View the XML file containing the device description framework (DDF) for the SharedPC configuration service provider.
ms.date: 06/19/2024
---

<!-- Auto-Generated CSP Document -->

# SharedPC DDF file

The following XML file contains the device description framework (DDF) for the SharedPC configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>SharedPC</NodeName>
    <Path>./Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>The root node for the SharedPC configuration service provider.</Description>
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
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;0xCA;0xCB;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>EnableSharedPCMode</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>false</DefaultValue>
        <Description>Setting this node to "true" triggers the action to configure a device to Shared PC mode.</Description>
        <DFFormat>
          <bool />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Enable shared PC mode</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>false</MSFT:Value>
            <MSFT:ValueDescription>Not configured</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>true</MSFT:Value>
            <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>EnableSharedPCModeWithOneDriveSync</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>false</DefaultValue>
        <Description>Setting this node to “1” triggers the action to configure a device to Shared PC mode with OneDrive sync turned on</Description>
        <DFFormat>
          <bool />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Enable Shared PC mode with OneDrive sync</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.2</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>false</MSFT:Value>
            <MSFT:ValueDescription>Not configured</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>true</MSFT:Value>
            <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>EnableWindowsInsiderPreviewFlighting</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>false</DefaultValue>
        <Description>Setting this node to “1” enables Windows Insider Preview flighting and the ability to receive insider preview builds.</Description>
        <DFFormat>
          <bool />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Enable WIP Flighting</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.2</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>false</MSFT:Value>
            <MSFT:ValueDescription>Not configured</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>true</MSFT:Value>
            <MSFT:ValueDescription>WIP builds are Enabled</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>SetEduPolicies</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>false</DefaultValue>
        <Description>Set a list of EDU policies.</Description>
        <DFFormat>
          <bool />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Set EDU policies</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>false</MSFT:Value>
            <MSFT:ValueDescription>Not configured</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>true</MSFT:Value>
            <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>SetPowerPolicies</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>false</DefaultValue>
        <Description>Set a list of power policies. If used, this value must be set before the action on the EnableSharedPCMode node is taken.</Description>
        <DFFormat>
          <bool />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Set power policies</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>false</MSFT:Value>
            <MSFT:ValueDescription>Not configured</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>true</MSFT:Value>
            <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>MaintenanceStartTime</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>0</DefaultValue>
        <Description>Daily start time of maintenance hour. Given in minutes from midnight. Default is 0 (12am).  If used, this value must be set before the action on the EnableSharedPCMode node is taken.</Description>
        <DFFormat>
          <int />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Maintenance start time</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="Range">
          <MSFT:Value>[0-1440]</MSFT:Value>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>SignInOnResume</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>false</DefaultValue>
        <Description>Require signing in on waking up from sleep. If used, this value must be set before the action on the EnableSharedPCMode node is taken.</Description>
        <DFFormat>
          <bool />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Sign-in on resume</DFTitle>
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
      <NodeName>SleepTimeout</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>300</DefaultValue>
        <Description>The amount of time before the PC sleeps, giving in seconds. 0 means the PC never sleeps. Default is 5 minutes. If used, this value must be set before the action on the EnableSharedPCMode node is taken.</Description>
        <DFFormat>
          <int />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Sleep timeout</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="Range">
          <MSFT:Value>[0-4294967295]</MSFT:Value>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>EnableAccountManager</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>false</DefaultValue>
        <Description>Enable the account manager for shared PC mode. If used, this value must be set before the action on the EnableSharedPCMode node is taken.</Description>
        <DFFormat>
          <bool />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Enable account manager</DFTitle>
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
      <NodeName>AccountModel</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>0</DefaultValue>
        <Description>Configures which type of accounts are allowed to use the PC. Allowed values: 0 (only guest), 1 (domain-joined only), 2 (domain-joined and guest). If used, this value must be set before the action on the EnableSharedPCMode node is taken.</Description>
        <DFFormat>
          <int />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Account model</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>0</MSFT:Value>
            <MSFT:ValueDescription>Only guest accounts are allowed.</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>1</MSFT:Value>
            <MSFT:ValueDescription>Only domain-joined accounts are allowed.</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>2</MSFT:Value>
            <MSFT:ValueDescription>Domain-joined and guest accounts are allowed.</MSFT:ValueDescription>
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
        <Description>Configures when accounts will be deleted. Allowed values: 0 (delete immediately), 1 (delete at disk space threshold), 2 (Delete at disk space threshold and inactive threshold). If used, this value must be set before the action on the EnableSharedPCMode node is taken.</Description>
        <DFFormat>
          <int />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Account deletion policy</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>0</MSFT:Value>
            <MSFT:ValueDescription>Delete immediately.</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>1</MSFT:Value>
            <MSFT:ValueDescription>Delete at disk space threshold</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>2</MSFT:Value>
            <MSFT:ValueDescription>Delete at disk space threshold and inactive threshold</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>DiskLevelDeletion</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>25</DefaultValue>
        <Description>Accounts will start being deleted when available disk space falls below this threshold, given as percent of total disk capacity. Accounts that have been inactive the longest will be deleted first. If used, this value must be set before the action on the EnableSharedPCMode node is taken.</Description>
        <DFFormat>
          <int />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Disk space threshold for account deletion</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="Range">
          <MSFT:Value>[0-100]</MSFT:Value>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>DiskLevelCaching</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>50</DefaultValue>
        <Description>Stop deleting accounts when available disk space reaches this threshold, given as percent of total disk capacity. If used, this value must be set before the action on the EnableSharedPCMode node is taken.</Description>
        <DFFormat>
          <int />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Disk space threshold for account caching</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="Range">
          <MSFT:Value>[0-100]</MSFT:Value>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>RestrictLocalStorage</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>false</DefaultValue>
        <Description>Restricts the user from using local storage. This node is optional. If used, this value must be set before the action on the EnableSharedPCMode node is taken.</Description>
        <DFFormat>
          <bool />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Restrict local storage</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
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
      <NodeName>KioskModeAUMID</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>Specifies the AUMID of the app to use with assigned access. If used, this value must be set before the action on the EnableSharedPCMode node is taken.</Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Kiosk mode AUMID</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="None">
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>KioskModeUserTileDisplayText</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>Specifies the display text for the account shown on the sign-in screen which launches the app specified by KioskModeAUMID. If used, this value must be set before the action on the EnableSharedPCMode node is taken.</Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Kiosk mode user tile display text</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="None">
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>InactiveThreshold</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>30</DefaultValue>
        <Description>Accounts will start being deleted when they have not been logged on during the specified period, given as number of days.</Description>
        <DFFormat>
          <int />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Account inactive threshold</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="Range">
          <MSFT:Value>[0-4294967295]</MSFT:Value>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>MaxPageFileSizeMB</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>1024</DefaultValue>
        <Description>Maximum size of the paging file in MB. Applies only to systems with less than 32 GB storage and at least 3 GB of RAM. If used, this value must be set before the action on the EnableSharedPCMode node is taken.</Description>
        <DFFormat>
          <int />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>Maximum PageFile size</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.1</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="Range">
          <MSFT:Value>[0-32768]</MSFT:Value>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[SharedPC configuration service provider reference](sharedpc-csp.md)
