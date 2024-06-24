---
title: ApplicationControl DDF file
description: View the XML file containing the device description framework (DDF) for the ApplicationControl configuration service provider.
ms.date: 06/19/2024
---

<!-- Auto-Generated CSP Document -->

# ApplicationControl DDF file

The following XML file contains the device description framework (DDF) for the ApplicationControl configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>ApplicationControl</NodeName>
    <Path>./Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>Root Node of the ApplicationControl CSP</Description>
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
        <MSFT:OsBuildVersion>10.0.18362</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x87;0x88;0x88*;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;0xCA;0xCB;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>Policies</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Beginning of a Subtree that contains all policies.</Description>
        <DFFormat>
          <node />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFTitle>Policies</DFTitle>
        <DFType>
          <DDFName />
        </DFType>
      </DFProperties>
      <Node>
        <NodeName>
        </NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>The GUID of the Policy</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>Policy GUID</DFTitle>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>The ApplicationControl CSP enforces that the "ID" segment of a given policy URI is the same GUID as the policy ID in the policy blob.</MSFT:UniqueName>
          </MSFT:DynamicNodeNaming>
        </DFProperties>
        <Node>
          <NodeName>Policy</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>The policy binary encoded as base64. Supported value is a binary file, converted from the policy XML file by the ConvertFrom-CIPolicy cmdlet.</Description>
            <DFFormat>
              <b64 />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>Policy</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>PolicyInfo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Information Describing the Policy indicated by the GUID</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>PolicyInfo</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>Version</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Version of the Policy indicated by the GUID, as a string. When parsing use a uint64 as the containing data type</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>Version</DFTitle>
              <DFType>
                <MIME />
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IsBasePolicy</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>TRUE/FALSE if the Policy is a Base Policy versus a Supplemental Policy</Description>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>IsBasePolicy</DFTitle>
              <DFType>
                <MIME />
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IsSystemPolicy</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>TRUE/FALSE if the Policy is a System Policy, that is a policy managed by Microsoft as part of the OS</Description>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>IsSystemPolicy</DFTitle>
              <DFType>
                <MIME />
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IsEffective</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Whether the Policy indicated by the GUID is Effective on the system (loaded by the enforcement engine and in effect)</Description>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>IsEffective</DFTitle>
              <DFType>
                <MIME />
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IsDeployed</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Whether the Policy indicated by the GUID is deployed on the system (on the physical machine)</Description>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>IsDeployed</DFTitle>
              <DFType>
                <MIME />
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IsAuthorized</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Whether the Policy indicated by the GUID is authorized to be loaded by the enforcement engine on the system </Description>
              <DFFormat>
                <bool />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>IsAuthorized</DFTitle>
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
              <Description>The Current Status of the Policy Indicated by the Policy GUID</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>Status</DFTitle>
              <DFType>
                <MIME />
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>FriendlyName</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The FriendlyName of the Policy Indicated by the Policy GUID</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>FriendlyName</DFTitle>
              <DFType>
                <MIME />
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>BasePolicyId</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The BasePolicyId of the Policy Indicated by the Policy GUID</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>BasePolicyId</DFTitle>
              <DFType>
                <MIME />
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>PolicyOptions</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The PolicyOptions of the Policy Indicated by the Policy GUID</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>PolicyOptions</DFTitle>
              <DFType>
                <MIME />
              </DFType>
            </DFProperties>
          </Node>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>Tokens</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Beginning of a Subtree that contains all tokens.</Description>
        <DFFormat>
          <node />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFTitle>Tokens</DFTitle>
        <DFType>
          <DDFName />
        </DFType>
      </DFProperties>
      <Node>
        <NodeName>
        </NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Arbitrary ID used to differentiate tokens</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrMore />
          </Occurrence>
          <Scope>
            <Dynamic />
          </Scope>
          <DFTitle>ID</DFTitle>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:DynamicNodeNaming>
            <MSFT:UniqueName>The ApplicationControl CSP enforces that the "ID" segment of a given token URI is unique.</MSFT:UniqueName>
          </MSFT:DynamicNodeNaming>
        </DFProperties>
        <Node>
          <NodeName>Token</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Delete />
              <Get />
              <Replace />
            </AccessType>
            <Description>The token binary encoded as base64. Supported value is a binary file, obtained from the OneCoreDeviceUnlockService.</Description>
            <DFFormat>
              <b64 />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>Token</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>TokenInfo</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Information Describing the Token indicated by the corresponding ID.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>TokenInfo</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>Status</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The Current Status of the Token Indicated by the Token ID</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>Status</DFTitle>
              <DFType>
                <MIME />
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Type</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>The Type of Token Indicated by the Token ID</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>Type</DFTitle>
              <DFType>
                <MIME />
              </DFType>
            </DFProperties>
          </Node>
        </Node>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[ApplicationControl configuration service provider reference](applicationcontrol-csp.md)
