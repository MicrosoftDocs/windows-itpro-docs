---
title: Accounts DDF file
description: XML file containing the device description framework
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.date: 04/17/2018
ms.reviewer: 
manager: dansimp
---

# Accounts CSP 


This topic shows the OMA DM device description framework (DDF) for the **Accounts** configuration service provider.

The XML below is for Windows 10, version 1803.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
        <NodeName>Accounts</NodeName>
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
            <MIME>com.microsoft/1.0/MDM/Accounts</MIME> 
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>Domain</NodeName>
          <DFProperties>
            <AccessType>
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
            <NodeName>ComputerName</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
              </AccessType>
              <Description>This node specifies the name for a device.  This setting can be managed remotely. A couple of macros can be embedded within the value for dynamic substitution:  %RAND:&lt;# of digits>% and %SERIAL%.  Examples: (a) "Test%RAND:6%" will generate a name "Test" followed by 6 random digits (e.g., "Test123456").  (b) "Foo%SERIAL%", will generate a name "Foo" followed by the serial number derived from device's ID. The server must explicitly reboot the device for this value to take effect.</Description>
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
              <DFTitle>ComputerName</DFTitle>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>Users</NodeName>
          <DFProperties>
            <AccessType>
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
            <NodeName></NodeName>
            <DFProperties>
              <AccessType>
              </AccessType>
              <Description>This node specifies the username for a new local user account.  This setting can be managed remotely.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>UserName</DFTitle>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>Password</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                </AccessType>
                <Description>This node specifies the password for a new local user account.  This setting can be managed remotely. </Description>
                <DFFormat>
                  <chr />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFTitle>Password</DFTitle>
                <DFType>
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>LocalUserGroup</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                </AccessType>
                <DefaultValue>1</DefaultValue>
                <Description>This optional node specifies the local user group that a local user account should be joined to.  If the node is not set, the new local user account is joined just to the Standard Users group.  Set the value to 2 for Administrators group. This setting can be managed remotely.</Description>
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
