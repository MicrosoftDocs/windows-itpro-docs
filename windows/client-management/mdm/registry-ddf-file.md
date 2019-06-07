---
title: Registry DDF file
description: Registry DDF file
ms.assetid: 29b5cc07-f349-4567-8a77-387d816a9d15
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# Registry DDF file


This topic shows the OMA DM device description framework (DDF) for the **Registry** configuration service provider. DDF files are used only with OMA DM provisioning XML.

``` syntax
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
    <VerDTD>1.2</VerDTD>
    <Node>
        <NodeName>Registry</NodeName>
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
            <Description>The root node of registry</Description>
        </DFProperties>
        <Node>
            <NodeName>HKCR</NodeName>
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
                <Description>HK_CLASSES_ROOT portion of device registry.</Description>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>HKCU</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
                <DFFormat>
                    <node />
                </DFFormat>
                <Occurrence>
                    <ZeroOrMore />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <Description>HK_CURRENT_USER portion of device registry.</Description>
             </DFProperties>
        </Node>
        <Node>
            <NodeName>HKLM</NodeName>
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
                <Description>HK_LOCAL_MACHINE portion of device registry.</Description>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>HKU</NodeName>
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
                <Description>HK_USERS portion of device registry.</Description>
            </DFProperties>
        </Node>
    </Node>
</MgmtTree>
```

## Related topics


[Registry configuration service provider](registry-csp.md)

 

 






