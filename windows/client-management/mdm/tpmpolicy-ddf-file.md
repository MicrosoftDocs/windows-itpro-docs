---
title: TPMPolicy DDF file
description: Learn about the OMA DM device description framework (DDF) for the TPMPolicy configuration service provider (CSP).
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 12/05/2017
ms.reviewer:
manager: aaroncz
---

# TPMPolicy DDF file


This topic shows the OMA DM device description framework (DDF) for the **TPMPolicy** configuration service provider. The TPMPolicy CSP was added in Windows 10, version 1703.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-ddf.md).

The XML below is the current version for this CSP.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
    "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
    [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
    <VerDTD>1.2</VerDTD>
    <Node>
        <NodeName>TPMPolicy</NodeName>
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
                <MIME>com.microsoft/1.0/MDM/TPMPolicy</MIME>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName>IsActiveZeroExhaust</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DefaultValue>False</DefaultValue>
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
