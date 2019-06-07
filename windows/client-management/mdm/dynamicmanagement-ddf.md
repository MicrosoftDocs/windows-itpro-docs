---
title: DynamicManagement DDF file
description: DynamicManagement DDF file
ms.assetid: 7e266db0-2fd9-4412-b428-4550f41a1738
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/05/2017
---

# DynamicManagement DDF file

This topic shows the OMA DM device description framework (DDF) for the **DynamicManagement** configuration service provider. 

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
        <NodeName>DynamicManagement</NodeName>
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
            <DDFName></DDFName>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>NotificationsEnabled</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>False</DefaultValue>
            <Description>A Boolean value that sets if the user is notified of a context change.</Description>
            <DFFormat>
              <bool />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <CaseSense>
              <CIS />
            </CaseSense>
            <DFTitle>NotificationsEnabled</DFTitle>
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>ActiveList</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>A string containing the list of all active ContextIDs on the device.  Delimeter is unicode character 0xF000.</Description>
            <DFFormat>
              <chr />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <CaseSense>
              <CIS />
            </CaseSense>
            <DFTitle>ActiveList</DFTitle>
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Contexts</NodeName>
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
            <CaseSense>
              <CIS />
            </CaseSense>
            <DFTitle>Contexts</DFTitle>
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
              <Description>Node created by the server to define a context.  Maximum amount of characters allowed is 38.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <ZeroOrMore />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <CaseSense>
                <CIS />
              </CaseSense>
              <DFTitle>ContextID</DFTitle>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>SignalDefinition</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Add />
                  <Delete />
                  <Replace />
                </AccessType>
                <Description>Signal Definition XML</Description>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <ZeroOrOne />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFTitle>SignalDefinition</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>SettingsPack</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Add />
                  <Delete />
                  <Replace />
                </AccessType>
                <Description>Settings that get applied when the Context is active.</Description>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <ZeroOrOne />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFTitle>SettingsPack</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>SettingsPackResponse</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <Description>Response from applying a Settings Pack, contains information on each individual action.</Description>
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
                <DFTitle>SettingsPackResponse</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ContextStatus</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                </AccessType>
                <DefaultValue>0</DefaultValue>
                <Description>Reports status of the context.  If there was a failure, SettingsPackResponse should be checked for what exactly failed.</Description>
                <DFFormat>
                  <int />
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
                <DFTitle>ContextStatus</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Altitude</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Add />
                  <Delete />
                  <Replace />
                </AccessType>
                <Description>A value that determines how to handle resolution of applying multiple contexts on the device.  Required, and must be distinct of other priorities.</Description>
                <DFFormat>
                  <int />
                </DFFormat>
                <Occurrence>
                  <ZeroOrOne />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <CaseSense>
                  <CIS />
                </CaseSense>
                <DFTitle>Altitude</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
          </Node>
        </Node>
        <Node>
          <NodeName>AlertsEnabled</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>True</DefaultValue>
            <Description>A Boolean value that sets if when a context fails, the CSP sends an alert to the Server</Description>
            <DFFormat>
              <bool />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <CaseSense>
              <CIS />
            </CaseSense>
            <DFTitle>AlertsEnabled</DFTitle>
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
      </Node>
</MgmtTree>
```
