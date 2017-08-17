---
title: DeviceManageability DDF
description: This topic shows the OMA DM device description framework (DDF) for the DeviceManageability configuration service provider. This CSP was added in Windows 10, version 1607.
ms.assetid: D7FA8D51-95ED-40D2-AA84-DCC4BBC393AB
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 06/19/2017
---

# DeviceManageability DDF


This topic shows the OMA DM device description framework (DDF) for the DeviceManageability configuration service provider. This CSP was added in Windows 10, version 1607.

You can download the DDF files from the links below:

- [Download all the DDF files for Windows 10, version 1703](http://download.microsoft.com/download/C/7/C/C7C94663-44CF-4221-ABCA-BC895F42B6C2/Windows10_1703_DDF_download.zip)
- [Download all the DDF files for Windows 10, version 1607](http://download.microsoft.com/download/2/3/E/23E27D6B-6E23-4833-B143-915EDA3BDD44/Windows10_1607_DDF.zip)

The XML below is the current version for this CSP.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
        <NodeName>DeviceManageability</NodeName>
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
            <MIME>com.microsoft/1.0/MDM/DeviceManageability</MIME>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>Capabilities</NodeName>
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
            <NodeName>CSPVersions</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Returns the versions of all configuration service providers (CSP) for MDM. </Description>
              <DFFormat>
                <xml />
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
      </Node>
</MgmtTree>

```

 

 






