---
title: NodeCache DDF file
description: NodeCache DDF file
ms.assetid: d7605098-12aa-4423-89ae-59624fa31236
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 12/05/2017
---

# NodeCache DDF file


This topic shows the OMA DM device description framework (DDF) for the **NodeCache** configuration service provider. DDF files are used only with OMA DM provisioning XML.

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
            <MIME>com.microsoft/1.2/MDM/NodeCache</MIME>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName></NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Add />
              <Delete />
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
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>CacheVersion</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
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
                <MIME>text/plain</MIME>
              </DFType>
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
                <MIME>text/plain</MIME>
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
                <MIME>text/plain</MIME>
              </DFType>
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
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName></NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Add />
                  <Delete />
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
                  <DDFName></DDFName>
                </DFType>
              </DFProperties>
              <Node>
                <NodeName>NodeURI</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Add />
                    <Delete />
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
                    <MIME>text/plain</MIME>
                  </DFType>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>ExpectedValue</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Add />
                    <Delete />
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
                    <MIME>text/plain</MIME>
                  </DFType>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>AutoSetExpectedValue</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Add />
                    <Delete />
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
                    <MIME>text/plain</MIME>
                  </DFType>
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
            <MIME>com.microsoft/1.2/MDM/NodeCache</MIME>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName></NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Add />
              <Delete />
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
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>CacheVersion</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
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
                <MIME>text/plain</MIME>
              </DFType>
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
                <MIME>text/plain</MIME>
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
                <MIME>text/plain</MIME>
              </DFType>
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
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName></NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Add />
                  <Delete />
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
                  <DDFName></DDFName>
                </DFType>
              </DFProperties>
              <Node>
                <NodeName>NodeURI</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Add />
                    <Delete />
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
                    <MIME>text/plain</MIME>
                  </DFType>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>ExpectedValue</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Add />
                    <Delete />
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
                    <MIME>text/plain</MIME>
                  </DFType>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>AutoSetExpectedValue</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Add />
                    <Delete />
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
                    <MIME>text/plain</MIME>
                  </DFType>
                </DFProperties>
              </Node>
            </Node>
          </Node>
        </Node>
      </Node>
</MgmtTree>
```

## Related topics


[NodeCache configuration service provider](nodecache-csp.md)

 

 






