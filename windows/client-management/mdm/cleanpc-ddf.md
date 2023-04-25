---
title: CleanPC DDF
description: Learn about the OMA DM device description framework (DDF) for the CleanPC configuration service provider. DDF files are used only with OMA DM provisioning XML.
ms.reviewer:
manager: aaroncz
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 12/05/2017
---

# CleanPC DDF

This topic shows the OMA DM device description framework (DDF) for the **CleanPC** configuration service provider. DDF files are used only with OMA DM provisioning XML.

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
        <NodeName>CleanPC</NodeName>
        <Path>./Device/Vendor/MSFT</Path>
        <DFProperties>
            <AccessType>
                <Get />
            </AccessType>
            <Description>Allow removal of user installed and pre-installed applications, with option to persist user data.</Description>
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
                <MIME>com.microsoft/1.0/MDM/CleanPC</MIME>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName>CleanPCWithoutRetainingUserData</NodeName>
            <DFProperties>
                <AccessType>
                    <Exec />
                </AccessType>
                <Description>CleanPC operation without any retention of User data.</Description>
                <DFFormat>
                    <int />
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
        <Node>
            <NodeName>CleanPCRetainingUserData</NodeName>
            <DFProperties>
                <AccessType>
                    <Exec />
                </AccessType>
                <Description>CleanPC operation with retention of User data.</Description>
                <DFFormat>
                    <int />
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

## Related topics

[CleanPC configuration service provider](cleanpc-csp.md)
