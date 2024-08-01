---
title: eUICCs DDF file
description: View the XML file containing the device description framework (DDF) for the eUICCs configuration service provider.
ms.date: 06/28/2024
---

<!-- Auto-Generated CSP Document -->

# eUICCs DDF file

The following XML file contains the device description framework (DDF) for the eUICCs configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>eUICCs</NodeName>
    <Path>./Device/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>Subtree for all embedded UICCs (eUICC)</Description>
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
      <CaseSense>
        <CIS />
      </CaseSense>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.16299</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>
      </NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Represents information associated with an eUICC. There is one subtree for each known eUICC, created by the Local Profile Assistant (LPA) when the eUICC is first seen. The node name is the eUICC ID (EID). The node name "Default" represents the currently active eUICC.</Description>
        <DFFormat>
          <node />
        </DFFormat>
        <Occurrence>
          <ZeroOrMore />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>eUICC</DFTitle>
        <DFType>
          <DDFName />
        </DFType>
        <MSFT:DynamicNodeNaming>
          <MSFT:UniqueName>The eUICC ID (EID) associated with the device.</MSFT:UniqueName>
        </MSFT:DynamicNodeNaming>
      </DFProperties>
      <Node>
        <NodeName>Identifier</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>The unique eUICC identifier (EID).</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>IsActive</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Indicates whether this eUICC is physically present and active. Updated only by the LPA.</Description>
          <DFFormat>
            <bool />
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
        <NodeName>PPR1Allowed</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Indicates whether the download of a profile with Profile Policy Rule 1 (PPR1) is allowed. If the eUICC has already a profile (regardless of its origin and policy rules associated with it), then the download of a profile with PPR1 is not allowed.</Description>
          <DFFormat>
            <bool />
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
        <NodeName>PPR1AlreadySet</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Indicates whether the eUICC has already a profile with Profile Policy Rule 1 (PPR1).</Description>
          <DFFormat>
            <bool />
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
        <NodeName>DownloadServers</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Represents servers used for bulk provisioning and eSIM discovery.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
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
              <Replace />
            </AccessType>
            <Description>Node representing a bulk download/discovery server. The node name is the fully qualified domain name of the server that will be used. Creation of this subtree triggers a discovery request.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>ServerName</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:UniqueName>ServerName used for the discovery operation.</MSFT:UniqueName>
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>DiscoveryState</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DefaultValue>1</DefaultValue>
              <Description>Current state of the discovery operation for this server (Requested = 1, Executing = 2, Completed = 3, Failed = 4).</Description>
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
            <NodeName>AutoEnable</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Get />
                <Replace />
              </AccessType>
              <Description>Indicates whether the discovered profile must be enabled automatically after install. This must be set by the MDM when the ServerName subtree is created.</Description>
              <DFFormat>
                <bool />
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
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>Disable</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>Enable</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IsDiscoveryServer</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>Indicates whether the server is a discovery server or if it is used for bulk download. A discovery server is used every time a user requests a profile discovery operation. Optional, default value is false.</Description>
              <DFFormat>
                <bool />
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
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.0</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>Is Not Discovery Server</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>Is Discovery Server</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
      </Node>
      <Node>
        <NodeName>Profiles</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Represents all enterprise-owned eSIM profiles.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
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
              <Replace />
            </AccessType>
            <Description>Node representing an enterprise-owned eSIM profile. The node name is the ICCID of the profile (which is a unique identifier). Creation of this subtree triggers an AddProfile request by the LPA (which installs the profile on the eUICC). Removal of this subtree triggers the LPA to delete the profile (if resident on the eUICC).</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>ICCID</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:UniqueName>ICCID of the profile.</MSFT:UniqueName>
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>ServerName</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Get />
                <Replace />
              </AccessType>
              <Description>Fully qualified domain name of the server that can download this eSIM profile. Must be set by the MDM when the ICCID subtree is created.</Description>
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
            </DFProperties>
          </Node>
          <Node>
            <NodeName>MatchingID</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Get />
                <Replace />
              </AccessType>
              <Description>Matching ID (activation code token) for eSIM profile download. Must be set by the MDM when the ICCID subtree is created.</Description>
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
              <MSFT:AllowedValues ValueType="RegEx">
                <MSFT:Value>^([0-9a-fA-F]{5}-){3}[0-9a-fA-F]{5}$</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>State</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DefaultValue>1</DefaultValue>
              <Description>Current state of the eSIM profile (Installing = 1, Installed = 2, Deleting = 3, Error = 4).</Description>
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
            <NodeName>IsEnabled</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Get />
                <Replace />
              </AccessType>
              <Description>Indicates whether this eSIM profile is enabled. Can be set by both the MDM and the CSP.</Description>
              <DFFormat>
                <bool />
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
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.17134</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.0</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>PPR1Set</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Profile Policy Rule 1 (PPR1) indicates whether disabling of this profile is not allowed (true if not allowed, false otherwise).</Description>
              <DFFormat>
                <bool />
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
            <NodeName>PPR2Set</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Profile Policy Rule 2 (PPR2) indicates whether deletion of this profile is not allowed (true if not allowed, false otherwise).</Description>
              <DFFormat>
                <bool />
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
            <NodeName>ErrorDetail</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>Detailed error if the profile download and install procedure failed (None = 0, CardGeneralFailure = 1, ConfirmationCodeMissing = 3, ForbiddenByPolicy = 5, InvalidMatchingId = 6, NoEligibleProfileForThisDevice = 7, NotEnoughSpaceOnCard = 8, ProfileEidMismatch = 10, ProfileNotAvailableForNewBinding = 11, ProfileNotReleasedByOperator = 12, RemoteServerGeneralFailure = 13, RemoteServerUnreachable = 14).</Description>
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
        </Node>
      </Node>
      <Node>
        <NodeName>Policies</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Device policies associated with the eUICC as a whole (not per-profile).</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>LocalUIEnabled</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>Determines whether or not the user can make changes to the eSIM through the user interface.</Description>
            <DFFormat>
              <bool />
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
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
      </Node>
      <Node>
        <NodeName>Actions</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Actions that can be performed on the eUICC as a whole.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFType>
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>ResetToFactoryState</NodeName>
          <DFProperties>
            <AccessType>
              <Exec />
            </AccessType>
            <Description>This triggers an eUICC Memory Reset, which erases all the eSIM profiles in the eUICC.</Description>
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
          <NodeName>Status</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <DefaultValue>0</DefaultValue>
            <Description>Status of most recent operation, as an HRESULT. S_OK indicates success, S_FALSE indicates operation is in progress, other values represent specific errors.</Description>
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
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[eUICCs configuration service provider reference](euiccs-csp.md)
