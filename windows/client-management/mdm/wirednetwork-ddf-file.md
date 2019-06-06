---
title: WiredNetwork DDF file
description: This topic shows the OMA DM device description framework (DDF) for the WiredNetwork configuration service provider. 
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/28/2018
ms.reviewer: 
manager: dansimp
---

# WiredNetwork DDF file


This topic shows the OMA DM device description framework (DDF) for the WiredNetwork configuration service provider. This CSP was added in Windows 10, version 1511.  

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
        <NodeName>WiredNetwork</NodeName>
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
            <DDFName></DDFName>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>LanXML</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Add />
              <Delete />
              <Replace />
            </AccessType>
            <Description>XML describing the wired network configuration and follows the LAN_profile schemas https://msdn.microsoft.com/library/windows/desktop/aa816366(v=vs.85).aspx</Description>
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
          <NodeName>EnableBlockPeriod</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Add />
              <Delete />
              <Replace />
            </AccessType>
            <Description> Enable block period (minutes), used to specify the duration for which automatic authentication attempts will be blocked from occurring after a failed authentication attempt.</Description>
            <DFFormat>
              <int />
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
      </Node>
      <Node>
        <NodeName>WiredNetwork</NodeName>
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
          <NodeName>LanXML</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Add />
              <Delete />
              <Replace />
            </AccessType>
            <Description>XML describing the wired network configuration and follows the LAN_profile schemas https://msdn.microsoft.com/library/windows/desktop/aa816366(v=vs.85).aspx</Description>
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
          <NodeName>EnableBlockPeriod</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Add />
              <Delete />
              <Replace />
            </AccessType>
            <Description> Enable block period (minutes), used to specify the duration for which automatic authentication attempts will be blocked from occurring after a failed authentication attempt.</Description>
            <DFFormat>
              <int />
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
      </Node>
</MgmtTree>
```
