---
title: MultiSIM DDF file
description: XML file containing the device description framework
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 02/27/2018
ms.reviewer: 
manager: dansimp
---

# MultiSIM CSP 


This topic shows the OMA DM device description framework (DDF) for the **MultiSIM** configuration service provider.

The XML below is for Windows 10, version 1803.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
        <NodeName>MultiSIM</NodeName>
        <Path>./Device/Vendor/MSFT</Path>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Subtree for multi-SIM management.</Description>
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
            <MIME>com.microsoft/1.0/MDM/MultiSIM</MIME>
            <DDFName></DDFName>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName></NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Node representing a Mobile Broadband Modem. The node name is the Modem ID. Modem ID is a GUID without curly braces, with exception of "Embedded" which represents the embedded Modem.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>ModemID</DFTitle>
            <DFType>
              <DDFName></DDFName>
            </DFType>
          </DFProperties>
          <Node>
            <NodeName>Identifier</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Modem ID.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IsEmbedded</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Indicates whether this Modem is embedded or external.</Description>
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
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Slots</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Represents all SIM slots in the Modem.</Description>
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
                </AccessType>
                <Description>Node representing a SIM Slot. The node name is the Slot ID. SIM Slot ID format is "0", "1", etc., with exception of "Embedded" which represents the embedded Slot.</Description>
                <DFFormat>
                  <node />
                </DFFormat>
                <Occurrence>
                  <ZeroOrMore />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFTitle>SlotID</DFTitle>
                <DFType>
                  <DDFName></DDFName>
                </DFType>
              </DFProperties>
              <Node>
                <NodeName>Identifier</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Slot ID.</Description>
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
                <NodeName>IsEmbedded</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Indicates whether this Slot is embedded or a physical SIM slot.</Description>
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
                    <MIME>text/plain</MIME>
                  </DFType>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>IsSelected</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                  </AccessType>
                  <Description>Indicates whether this Slot is selected or not.</Description>
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
                    <MIME>text/plain</MIME>
                  </DFType>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>State</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                  </AccessType>
                  <Description>Slot state (Unknown = 0, OffEmpty = 1, Off = 2, Empty = 3, NotReady = 4, Active = 5, Error = 6, ActiveEsim = 7, ActiveEsimNoProfile = 8)</Description>
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
          <Node>
            <NodeName>Policies</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Policies associated with the Modem.</Description>
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
              <NodeName>SlotSelectionEnabled</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                </AccessType>
                <DefaultValue>true</DefaultValue>
                <Description>Determines whether the user is allowed to change slots in the Cellular settings UI. Default is true.</Description>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
          </Node>
        </Node>
      </Node>
</MgmtTree>
```
