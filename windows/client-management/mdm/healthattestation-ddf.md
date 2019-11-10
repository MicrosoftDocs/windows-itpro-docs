---
title: HealthAttestation DDF
description: HealthAttestation DDF
ms.assetid: D20AC78D-D2D4-434B-B9FD-294BCD9D1DDE
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/05/2017
---

# HealthAttestation DDF


This topic shows the OMA DM device description framework (DDF) for the **HealthAttestation** configuration service provider. DDF files are used only with OMA DM provisioning XML.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is the current version for this CSP.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
    "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
    [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
    <VerDTD>1.2</VerDTD>
    <Node>
        <NodeName>HealthAttestation</NodeName>
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
                <MIME>com.microsoft/1.2/MDM/HealthAttestation</MIME>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName>VerifyHealth</NodeName>
            <DFProperties>
                <AccessType>
                    <Exec />
                </AccessType>
                <DFFormat>
                    <null />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>Status</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
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
            <NodeName>ForceRetrieve</NodeName>
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
        <Node>
            <NodeName>Certificate</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
                <DFFormat>
                    <b64 />
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
        </Node>
        <Node>
            <NodeName>Nonce</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DefaultValue>\0</DefaultValue>
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
            </DFProperties>
        </Node>
        <Node>
            <NodeName>CorrelationID</NodeName>
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
            </DFProperties>
        </Node>
        <Node>
            <NodeName>HASEndpoint</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DFFormat>
                    <chr />
                </DFFormat>
                <Scope>
                    <Permanent />
                </Scope>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>TpmReadyStatus</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
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


[HealthAttestation configuration service provider](healthattestation-csp.md)

 

 






