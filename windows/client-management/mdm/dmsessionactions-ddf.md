---
title: DMSessionActions DDF file
description: DMSessionActions DDF file
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/05/2017
ms.reviewer: 
manager: dansimp
---

# DMSessionActions DDF file


This topic shows the OMA DM device description framework (DDF) for the **DMSessionActions** configuration service provider.  

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is the current version for this CSP.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
        <NodeName>DMSessionActions</NodeName>
        <Path>./User/Vendor/MSFT</Path>
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
            <MIME>com.microsoft/1.1/MDM/DMSessionActions</MIME>
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
            <NodeName>CheckinAlertConfiguration</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>Nodes</NodeName>
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
                      <Replace />
                    </AccessType>
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
              </Node>
            </Node>
          </Node>
          <Node>
            <NodeName>AlertData</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
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
            <NodeName>PowerSettings</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Delete />
              </AccessType>
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
              <NodeName>MaxSkippedSessionsInLowPowerState</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Add />
                  <Delete />
                  <Replace />
                </AccessType>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>MaxTimeSessionsSkippedInLowPowerState</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Add />
                  <Delete />
                  <Replace />
                </AccessType>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
          </Node>
        </Node>
      </Node>
      <Node>
        <NodeName>DMSessionActions</NodeName>
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
            <MIME>com.microsoft/1.1/MDM/DMSessionActions</MIME>
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
            <NodeName>CheckinAlertConfiguration</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <ZeroOrOne />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>Nodes</NodeName>
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
                      <Replace />
                    </AccessType>
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
              </Node>
            </Node>
          </Node>
          <Node>
            <NodeName>AlertData</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
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
            <NodeName>PowerSettings</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Delete />
              </AccessType>
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
              <NodeName>MaxSkippedSessionsInLowPowerState</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Add />
                  <Delete />
                  <Replace />
                </AccessType>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>MaxTimeSessionsSkippedInLowPowerState</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Add />
                  <Delete />
                  <Replace />
                </AccessType>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
          </Node>
        </Node>
      </Node>
</MgmtTree>
```
