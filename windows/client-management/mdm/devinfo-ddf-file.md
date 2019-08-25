---
title: DevInfo DDF file
description: DevInfo DDF file
ms.assetid: beb07cc6-4133-4c0f-aa05-64db2b4a004f
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/05/2017
---

# DevInfo DDF file


This topic shows the OMA DM device description framework (DDF) for the **DevInfo** configuration service provider. DDF files are used only with OMA DM provisioning XML.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is the current version for this CSP.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC "-//OMA//DTD-DM-DDF 1.2//EN"
    "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
    [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
    <VerDTD>1.2</VerDTD>
    <Node>
        <NodeName>DevInfo</NodeName>
        <Path>.</Path>
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
            <DFTitle>The interior node holding all devinfo objects</DFTitle>
            <DFType>
                <DDFName>urn:oma:mo:oma-dm-devinfo:1.0</DDFName>
            </DFType>
            <MSFT:RWAccess>1</MSFT:RWAccess>
        </DFProperties>
        <Node>
            <NodeName>DevId</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
                <Description>An unique device identifier. An application-specific global unique device identifier is provided in this node.</Description>
                <DFFormat>
                    <chr />
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
                <MSFT:RWAccess>1</MSFT:RWAccess>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>Man</NodeName>
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
                    <Permanent />
                </Scope>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
                <MSFT:RWAccess>1</MSFT:RWAccess>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>Mod</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
                <Description>Device model name, as specified and tracked by the mobile operator</Description>
                <DFFormat>
                    <chr />
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
                <MSFT:RWAccess>1</MSFT:RWAccess>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>DmV</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
                <Description>The current management client revision of the device.</Description>
                <DFFormat>
                    <chr />
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
                <MSFT:RWAccess>1</MSFT:RWAccess>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>Lang</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
                <Description>The current language at the device user interface.</Description>
                <DFFormat>
                    <chr />
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
                <MSFT:RWAccess>1</MSFT:RWAccess>
            </DFProperties>
        </Node>
    </Node>
</MgmtTree>
```

## Related topics


[DevInfo configuration service provider](devinfo-csp.md)

 

 






