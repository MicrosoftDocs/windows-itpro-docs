---
title: eUICCs DDF file
description: eUICCs DDF file
ms.assetid: c4cd4816-ad8f-45b2-9b81-8abb18254096
ms.reviewer: 
manager: dansimp
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 03/02/2018
---

# eUICCs DDF file


This topic shows the OMA DM device description framework (DDF) for the **eUICCs** configuration service provider. DDF files are used only with OMA DM provisioning XML.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below if for Windows 10, version 1803.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
    "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
    [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
    <VerDTD>1.2</VerDTD>
    <Node>
        <NodeName>eUICCs</NodeName>
        <Path>./Device/Vendor/MSFT</Path>
        <DFProperties>
            <AccessType>
                <Get />
            </AccessType>
            <Description>Subtree for all embedded UICCs (eUICC)</Description>
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
                <CIS />
            </CaseSense>
            <DFType>
                <MIME>com.microsoft/1.1/MDM/eUICCs</MIME>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName></NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
                <Description>Represents information associated with an eUICC. There is one subtree for each known eUICC, created by the Local Profile Assistant (LPA) when the eUICC is first seen. The node name is meaningful only to the LPA (which associates it with an eUICC ID (EID) in an implementation-specific manner, e.g., this could be a SHA-256 hash of the EID). The node name "Default" represents the currently active eUICC.</Description>
                <DFFormat>
                    <node />
                </DFFormat>
                <Occurrence>
                    <ZeroOrMore />
                </Occurrence>
                <Scope>
                    <Dynamic />
                </Scope>
                <DFTitle>eUICC</DFTitle>
                <DFType>
                    <DDFName></DDFName>
                </DFType>
            </DFProperties>
            <Node>
                <NodeName>Identifier</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>Identifies an eUICC in an implementation-specific manner, e.g., this could be a SHA-256 hash of the EID.</Description>
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
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>IsActive</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>Indicates whether this eUICC is physically present and active. Updated only by the LPA.</Description>
                    <DFFormat>
                        <bool />
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
            <Node>
                <NodeName>Profiles</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>Represents all enterprise-owned profiles.</Description>
                    <DFFormat>
                        <node />
                    </DFFormat>
                    <Occurrence>
                        <One />
                    </Occurrence>
                    <Scope>
                        <Dynamic />
                    </Scope>
                    <DFType>
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                    <NodeName></NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Delete />
                            <Get />
                        </AccessType>
                        <Description>Node representing an enterprise-owned eUICC profile. The node name is the ICCID of the profile (which is a unique identifier). Creation of this subtree triggers an AddProfile request by the LPA (which installs the profile on the eUICC). Removal of this subtree triggers the LPA to delete the profile (if resident on the eUICC).</Description>
                        <DFFormat>
                            <node />
                        </DFFormat>
                        <Occurrence>
                            <ZeroOrMore />
                        </Occurrence>
                        <Scope>
                            <Dynamic />
                        </Scope>
                        <DFTitle>ICCID</DFTitle>
                        <DFType>
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>ServerName</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Get />
                            </AccessType>
                            <Description>Fully qualified domain name of the SM-DP+ that can download this profile. Must be set by the MDM when the ICCID subtree is created.</Description>
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
                            <DFType>
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>MatchingID</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Get />
                            </AccessType>
                            <Description>Matching ID (activation code token) for profile download. Must be set by the MDM when the ICCID subtree is created.</Description>
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
                            <DFType>
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>State</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <DefaultValue>1</DefaultValue>
                            <Description>Current state of the profile (Installing = 1, Installed = 2, Deleting = 3, Error = 4). Queried by the CSP and only updated by the LPA.</Description>
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
                    <Node>
                        <NodeName>IsEnabled</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Add />
                                <Replace />
                            </AccessType>
                            <Description>Indicates whether this profile is enabled. Can be set by the MDM when the ICCID subtree is created. Can also be queried and updated by the CSP.</Description>
                            <DFFormat>
                                <bool />
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
            <Node>
                <NodeName>Policies</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>Device policies associated with the eUICC as a whole (not per-profile).</Description>
                    <DFFormat>
                        <node />
                    </DFFormat>
                    <Occurrence>
                        <One />
                    </Occurrence>
                    <Scope>
                        <Dynamic />
                    </Scope>
                    <DFType>
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                    <NodeName>LocalUIEnabled</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Get />
                            <Replace />
                        </AccessType>
                        <DefaultValue>true</DefaultValue>
                        <Description>Determines whether the local user interface of the LUI is available (true if available, false otherwise). Initially populated by the LPA when the eUICC tree is created, can be queried and changed by the MDM server.</Description>
                        <DFFormat>
                            <bool />
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
            <Node>
                <NodeName>Actions</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>Actions that can be performed on the eUICC as a whole (when it is active).</Description>
                    <DFFormat>
                        <node />
                    </DFFormat>
                    <Occurrence>
                        <One />
                    </Occurrence>
                    <Scope>
                        <Dynamic />
                    </Scope>
                    <DFType>
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                    <NodeName>ResetToFactoryState</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Exec />
                        </AccessType>
                        <Description>An EXECUTE on this node triggers the  LPA to perform an eUICC Memory Reset.</Description>
                        <DFFormat>
                            <chr />
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
                <Node>
                    <NodeName>Status</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Get />
                        </AccessType>
                        <DefaultValue>0</DefaultValue>
                        <Description>Status of most recent operation, as an HRESULT. S_OK indicates success, S_FALSE indicates operation is in progress, other values represent specific errors.</Description>
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
