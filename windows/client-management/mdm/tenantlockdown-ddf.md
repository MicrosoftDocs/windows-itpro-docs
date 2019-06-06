---
title: TenantLockdown DDF file
description: XML file containing the device description framework
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 08/13/2018
ms.reviewer: 
manager: dansimp
---

# TenantLockdown DDF file 

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

This topic shows the OMA DM device description framework (DDF) for the **TenantLockdown** configuration service provider.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is for Windows 10, version 1809.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
        <NodeName>TenantLockdown</NodeName>
        <Path>./Vendor/MSFT</Path>
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
            <MIME>com.microsoft/1.0/MDM/TenantLockdown</MIME>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>RequireNetworkInOOBE</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>true - Require network in OOBE, false - no network connection requirement in OOBE</Description>
            <DFFormat>
              <bool />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
      </Node>
</MgmtTree>
```
