---
title: eUICCs DDF file
description: Learn about the OMA DM device description framework (DDF) for the eUICCs configuration service provider (CSP).
ms.assetid: c4cd4816-ad8f-45b2-9b81-8abb18254096
ms.reviewer: 
manager: dansimp
ms.author: dansimp
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

```xml
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
                <MIME>com.microsoft/1.2/MDM/eUICCs</MIME>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName></NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
                <Description>Represents information associated with an eUICC. There is one subtree for each known eUICC, created by the Local Profile Assistant (LPA) when the eUICC is first seen. The node name is the eUICC ID (EID). The node name "Default" represents the currently active eUICC.</Description>
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
                    <Description>The EID.</Description>
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
                <NodeName>PPR1Allowed</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>Indicates whether the download of a profile with PPR1 is allowed. If the eUICC has already a profile (regardless of its origin and policy rules associated with it), then the download of a profile with PPR1 is not allowed.</Description>
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
                <NodeName>PPR1AlreadySet</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>Indicates whether the eUICC has already a profile with PPR1.</Description>
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
                <NodeName>DownloadServers</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>Represents default SM-DP+ discovery requests.</Description>
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
                            <Replace />
                        </AccessType>
                        <Description>Node representing the discovery operation for a server name. The node name is the fully qualified domain name of the SM-DP+ server that will be used for profile discovery. Creation of this subtree triggers a discovery request.</Description>
                        <DFFormat>
                            <node />
                        </DFFormat>
                        <Occurrence>
                            <ZeroOrMore />
                        </Occurrence>
                        <Scope>
                            <Dynamic />
                        </Scope>
                        <DFTitle>ServerName</DFTitle>
                        <DFType>
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>DiscoveryState</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <DefaultValue>1</DefaultValue>
                            <Description>Current state of the discovery operation for the parent ServerName (Requested = 1, Executing = 2, Completed = 3, Failed = 4). Queried by the CSP and only updated by the LPA.</Description>
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
                        <NodeName>AutoEnable</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>Indicates whether the discovered profile must be enabled automatically after install. This must be set by the MDM when the ServerName subtree is created.</Description>
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
                            <Replace />
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
                                <Replace />
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
                                <Replace />
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
                    <Node>
                        <NodeName>PPR1Set</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <Description>This profile policy rule indicates whether disabling of this profile is not allowed (true if not allowed, false otherwise).</Description>
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
                        <NodeName>PPR2Set</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <Description>This profile policy rule indicates whether deletion of this profile is not allowed (true if not allowed, false otherwise).</Description>
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
                        <NodeName>ErrorDetail</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <DefaultValue>0</DefaultValue>
                            <Description>Detailed error if the profile download and install procedure failed (None = 0, CardGeneralFailure = 1, ConfirmationCodeMissing = 3, ForbiddenByPolicy = 5, InvalidMatchingId = 6, NoEligibleProfileForThisDevice = 7, NotEnoughSpaceOnCard = 8, ProfileEidMismatch = 10, ProfileNotAvailableForNewBinding = 11, ProfileNotReleasedByOperator = 12, RemoteServerGeneralFailure = 13, RemoteServerUnreachable = 14).</Description>
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
