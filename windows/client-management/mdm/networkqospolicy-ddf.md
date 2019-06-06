---
title: NetworkQoSPolicy DDF
description: This topic shows the OMA DM device description framework (DDF) for the NetworkQoSPolicy configuration service provider. DDF files are used only with OMA DM provisioning XML.
ms.assetid:
ms.reviewer: 
manager: dansimp
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/05/2017
---

# NetworkQoSPolicy DDF

This topic shows the OMA DM device description framework (DDF) for the **NetworkQoSPolicy** configuration service provider. DDF files are used only with OMA DM provisioning XML.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is the current version for this CSP.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
        <NodeName>NetworkQoSPolicy</NodeName>
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
            <MIME>com.microsoft/1.0/MDM/NetworkQoSPolicy</MIME>
            <DDFName></DDFName>
          </DFType>
        </DFProperties>
        <Node>
            <NodeName>Version</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Version information.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFTitle>Version</DFTitle>
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName></NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Add />
              <Delete />
              <Replace />
            </AccessType>
            <Description>The value of this node should be a policy name.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>Name</DFTitle>
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>PolicyStore</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
                <Add />
                <Delete />
              </AccessType>
              <Description>The location where the QoS policy is stored.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>PolicyStore</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IPProtocolMatchCondition</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
                <Add />
                <Delete />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>Specifies the IP protocol used to match the network traffic. Valid values are 0: Both TCP and UDP (default), 1: TCP, 2: UDP.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>IPProtocolMatchCondition</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AppPathNameMatchCondition</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
                <Add />
                <Delete />
              </AccessType>
              <Description>Specifies the name of an application to be used to match the network traffic, such as application.exe or %ProgramFiles%\application.exe.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>AppPathNameMatchCondition</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>SourcePortMatchCondition</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
                <Add />
                <Delete />
              </AccessType>
              <Description>Specifies a single port or a range of ports to be used to match the network traffic. Valid values are [first port number]-[last port number] or [port number].</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>SourcePortMatchCondition</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>DestinationPortMatchCondition</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
                <Add />
                <Delete />
              </AccessType>
              <Description>Specifies a single port or a range of ports to be used to match the network traffic. Valid values are [first port number]-[last port number] or [port number].</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>DestinationPortMatchCondition</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>PriorityValue8021Action</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
                <Add />
                <Delete />
              </AccessType>
              <Description>The IEEE 802.1p value to apply to matching network traffice. Valid values are 0-7.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>PriorityValue8021Action</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>DSCPAction</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
                <Add />
                <Delete />
              </AccessType>
              <Description>The differentiated services code point (DSCP) value to apply to matching network traffic. Valid values are 0-63.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>DSCPAction</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
        </Node>
      </Node>
</MgmtTree>
```

 

 






