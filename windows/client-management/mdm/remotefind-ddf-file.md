---
title: RemoteFind DDF file
description: This topic shows the OMA DM device description framework (DDF) for the RemoteFind configuration service provider. DDF files are used only with OMA DM provisioning XML.
ms.assetid: 5864CBB8-2030-459E-BCF6-9ACB69206FEA
ms.reviewer: 
manager: dansimp
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/05/2017
---

# RemoteFind DDF file


This topic shows the OMA DM device description framework (DDF) for the **RemoteFind** configuration service provider. DDF files are used only with OMA DM provisioning XML.

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
        <NodeName>RemoteFind</NodeName>
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
                <DDFName></DDFName>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName>DesiredAccuracy</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DefaultValue>50</DefaultValue>
                <DFFormat>
                    <int />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <CaseSense>
                    <CS />
                </CaseSense>
                <DFTitle>DesiredAccuracy</DFTitle>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>MaximumAge</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DefaultValue>60</DefaultValue>
                <DFFormat>
                    <int />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <CaseSense>
                    <CS />
                </CaseSense>
                <DFTitle>MaximumAge</DFTitle>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>Timeout</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                    <Replace />
                </AccessType>
                <DefaultValue>7</DefaultValue>
                <DFFormat>
                    <int />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Permanent />
                </Scope>
                <CaseSense>
                    <CS />
                </CaseSense>
                <DFTitle>Timeout</DFTitle>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
        <Node>
            <NodeName>Location</NodeName>
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
                    <CS />
                </CaseSense>
                <DFTitle>Location</DFTitle>
                <DFType>
                    <DDFName></DDFName>
                </DFType>
            </DFProperties>
            <Node>
                <NodeName>Latitude</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <DFFormat>
                        <float />
                    </DFFormat>
                    <Occurrence>
                        <One />
                    </Occurrence>
                    <Scope>
                        <Permanent />
                    </Scope>
                    <CaseSense>
                        <CS />
                    </CaseSense>
                    <DFTitle>Latitude</DFTitle>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>Longitude</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <DFFormat>
                        <float />
                    </DFFormat>
                    <Occurrence>
                        <One />
                    </Occurrence>
                    <Scope>
                        <Permanent />
                    </Scope>
                    <CaseSense>
                        <CS />
                    </CaseSense>
                    <DFTitle>Longitude</DFTitle>
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
                    </AccessType>
                    <DFFormat>
                        <float />
                    </DFFormat>
                    <Occurrence>
                        <One />
                    </Occurrence>
                    <Scope>
                        <Permanent />
                    </Scope>
                    <CaseSense>
                        <CS />
                    </CaseSense>
                    <DFTitle>Altitude</DFTitle>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>Accuracy</NodeName>
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
                    <CaseSense>
                        <CS />
                    </CaseSense>
                    <DFTitle>Accuracy</DFTitle>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>AltitudeAccuracy</NodeName>
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
                    <CaseSense>
                        <CS />
                    </CaseSense>
                    <DFTitle>AltitudeAccuracy</DFTitle>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>Age</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <DFFormat>
                        <time />
                    </DFFormat>
                    <Occurrence>
                        <One />
                    </Occurrence>
                    <Scope>
                        <Permanent />
                    </Scope>
                    <CaseSense>
                        <CS />
                    </CaseSense>
                    <DFTitle>Age</DFTitle>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
        </Node>
    </Node>
</MgmtTree>
```

 

 






