---
title: NodeCache DDF file
description: View the XML file containing the device description framework (DDF) for the NodeCache configuration service provider.
ms.date: 06/19/2024
---

<!-- Auto-Generated CSP Document -->

# NodeCache DDF file

The following XML file contains the device description framework (DDF) for the NodeCache configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>NodeCache</NodeName>
    <Path>./User/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>The root node for the NodeCache object.</Description>
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
        <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.1</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x87;0x88;0x88*;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;0xCA;0xCB;</MSFT:EditionAllowList>
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
        <Description>Group settings per DM server. Each group of settings is distinguished by the server's Provider ID. It should be the same DM server PROVIDER-ID value that was supplied through the w7 APPLICATION configuration service provider XML during the enrollment process. In Windows Phone 8, only one enterprise management server is supported. That is, there should be only one ProviderID node under NodeCache.</Description>
        <DFFormat>
          <node />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>ProviderID</DFTitle>
        <DFType>
          <DDFName />
        </DFType>
        <MSFT:DynamicNodeNaming>
          <MSFT:UniqueName> It should be the same DM server PROVIDER-ID value that was supplied through the w7 APPLICATION configuration service provider XML during the enrollment process.</MSFT:UniqueName>
        </MSFT:DynamicNodeNaming>
      </DFProperties>
      <Node>
        <NodeName>CacheVersion</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Get />
            <Replace />
          </AccessType>
          <Description>Character string representing the cache version set by the server.</Description>
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
        <NodeName>ChangedNodes</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>List of nodes whose values do not match their expected values as specified in /NodeID/ExpectedValue</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ChangedNodesData</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>XML containing nodes whose values do not match their expected values as specified in /NodeID/ExpectedValue</Description>
          <DFFormat>
            <xml />
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
            <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.1</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>Nodes</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Root node for cached nodes</Description>
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
            </AccessType>
            <Description>Information about each cached node is stored under NodeID as specified by the server. This value must not contain a comma.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>NodeID</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:ServerGeneratedUniqueIdentifier />
            </MSFT:DynamicNodeNaming>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
          <Node>
            <NodeName>NodeURI</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
              </AccessType>
              <Description>This node's value is a complete OMA DM node URI. It can specify either an interior or leaf node in the device management tree.</Description>
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
            <NodeName>ExpectedValue</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
              </AccessType>
              <Description>This is the value that the server expects to be on the device. When the configuration service provider initiates a session, it checks the expected value against the node's actual value.</Description>
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
            <NodeName>AutoSetExpectedValue</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
              </AccessType>
              <Description>This will automatically set the value on the device to match the node's actual value. The node is specified in NodeURI.</Description>
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
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.1</MSFT:CspVersion>
              </MSFT:Applicability>
            </DFProperties>
          </Node>
        </Node>
      </Node>
    </Node>
  </Node>
  <Node>
    <NodeName>NodeCache</NodeName>
    <Path>./Device/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>The root node for the NodeCache object.</Description>
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
        <MSFT:OsBuildVersion>10.0.10586</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x77;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x87;0x88;0x88*;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xB4;0xBC;0xBD;0xBF;0xCA;0xCB;</MSFT:EditionAllowList>
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
        <Description>Group settings per DM server. Each group of settings is distinguished by the server's Provider ID. It should be the same DM server PROVIDER-ID value that was supplied through the w7 APPLICATION configuration service provider XML during the enrollment process. In Windows Phone 8, only one enterprise management server is supported. That is, there should be only one ProviderID node under NodeCache.</Description>
        <DFFormat>
          <node />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>ProviderID</DFTitle>
        <DFType>
          <DDFName />
        </DFType>
        <MSFT:DynamicNodeNaming>
          <MSFT:UniqueName> It should be the same DM server PROVIDER-ID value that was supplied through the w7 APPLICATION configuration service provider XML during the enrollment process.</MSFT:UniqueName>
        </MSFT:DynamicNodeNaming>
      </DFProperties>
      <Node>
        <NodeName>CacheVersion</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Get />
            <Replace />
          </AccessType>
          <Description>Character string representing the cache version set by the server.</Description>
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
        <NodeName>ChangedNodes</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>List of nodes whose values do not match their expected values as specified in /NodeID/ExpectedValue</Description>
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
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ChangedNodesData</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>XML containing nodes whose values do not match their expected values as specified in /NodeID/ExpectedValue</Description>
          <DFFormat>
            <xml />
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
            <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.1</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>Nodes</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Root node for cached nodes</Description>
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
            </AccessType>
            <Description>Information about each cached node is stored under NodeID as specified by the server. This value must not contain a comma.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>NodeID</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:ServerGeneratedUniqueIdentifier />
            </MSFT:DynamicNodeNaming>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
          <Node>
            <NodeName>NodeURI</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
              </AccessType>
              <Description>This node's value is a complete OMA DM node URI. It can specify either an interior or leaf node in the device management tree.</Description>
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
            <NodeName>ExpectedValue</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
              </AccessType>
              <Description>This is the value that the server expects to be on the device. When the configuration service provider initiates a session, it checks the expected value against the node's actual value.</Description>
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
            <NodeName>AutoSetExpectedValue</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
              </AccessType>
              <Description>This will automatically set the value on the device to match the node's actual value. The node is specified in NodeURI.</Description>
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
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.1</MSFT:CspVersion>
              </MSFT:Applicability>
            </DFProperties>
          </Node>
        </Node>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[NodeCache configuration service provider reference](nodecache-csp.md)
