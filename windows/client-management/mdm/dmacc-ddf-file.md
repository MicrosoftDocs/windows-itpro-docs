---
title: DMAcc DDF file
description: DMAcc DDF file
ms.assetid: 44dc99aa-2a85-498b-8f52-a81863765606
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/05/2017
---

# DMAcc DDF file


This topic shows the OMA DM device description framework (DDF) for the **DMAcc** configuration service provider. DDF files are used only with OMA DM provisioning XML.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is the current version for this CSP.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC "-//OMA//DTD-DM-DDF 1.2//EN"
    "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
    [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
    <VerDTD>1.2</VerDTD>
    <Node>
        <NodeName>DMAcc</NodeName>
        <Path>./SyncML</Path>
        <DFProperties>
            <AccessType>
                <Get />
            </AccessType>
            <Description>This interior node is a common parent to all OMA DM server account nodes that use OMA DM 1.2 protocol.</Description>
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
                <DDFName>urn:oma:mo:oma-dm-dmacc:1.1</DDFName>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName>*</NodeName>
            <DFProperties>
                <AccessType>
                    <Add />
                    <Get />
                    <Delete />
                    <Replace />
                </AccessType>
                <Description>This interior node acts as a placeholder for zero or more OMA DM server accounts. If this OMA DM server account is bootstrapped using the w7 APPLICATION, the name of this                                node is generated from the 256-bit version of SHA-2 hash of the w7 PROVIDER-ID parm.</Description>
                <DFFormat>
                    <node />
                </DFFormat>
                <Occurrence>
                    <ZeroOrMore />
                </Occurrence>
                <Scope>
                    <Dynamic />
                </Scope>
                <DFType>
                    <DDFName></DDFName>
                </DFType>
            </DFProperties>
            <Node>
                <NodeName>AppID</NodeName>
                <DFProperties>
                    <AccessType>
                        <Add />
                        <Get />
                        <Replace />
                    </AccessType>
                    <Description>The only supported value is w7.</Description>
                    <DFFormat>
                        <chr />
                    </DFFormat>
                    <Occurrence>
                        <One />
                    </Occurrence>
                    <Scope>
                        <Dynamic />
                    </Scope>
                    <DFTitle>Application ID for DM Account MO</DFTitle>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>ServerID</NodeName>
                <DFProperties>
                    <AccessType>
                        <Add />
                        <Get />
                        <Replace />
                    </AccessType>
                    <DFFormat>
                        <chr />
                    </DFFormat>
                    <Occurrence>
                        <One />
                    </Occurrence>
                    <Scope>
                        <Dynamic />
                    </Scope>
                    <DFTitle>Server Identifier</DFTitle>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>Name</NodeName>
                <DFProperties>
                    <AccessType>
                        <Add />
                        <Get />
                        <Replace />
                    </AccessType>
                    <DFFormat>
                        <chr />
                    </DFFormat>
                    <Occurrence>
                        <ZeroOrOne />
                    </Occurrence>
                    <Scope>
                        <Dynamic />
                    </Scope>
                    <DFTitle>Displayable name for the Management Server</DFTitle>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>PrefConRef</NodeName>
                <DFProperties>
                    <AccessType>
                        <Add />
                        <Get />
                        <Replace />
                    </AccessType>
                    <Description>The only supported values include the NAPID of a bootstrapped NAP management object or a connection GUID used by connection manager. If this node is missing, the device                                  will use the default connection provided by connection manager.</Description>
                    <DFFormat>
                        <chr />
                    </DFFormat>
                    <Occurrence>
                        <ZeroOrOne />
                    </Occurrence>
                    <Scope>
                        <Dynamic />
                    </Scope>
                    <DFTitle>Reference to preferred connectivity</DFTitle>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>AppAddr</NodeName>
                <DFProperties>
                    <AccessType>
                        <Add />
                        <Get />
                    </AccessType>
                    <Description>Only the first address provisioned is used.</Description>
                    <DFFormat>
                        <node />
                    </DFFormat>
                    <Occurrence>
                        <One />
                    </Occurrence>
                    <Scope>
                        <Dynamic />
                    </Scope>
                    <DFTitle>A collection of references to DM server address</DFTitle>
                    <DFType>
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                    <NodeName>*</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Get />
                        </AccessType>
                        <DFFormat>
                            <node />
                        </DFFormat>
                        <Occurrence>
                            <One />
                        </Occurrence>
                        <Scope>
                            <Dynamic />
                        </Scope>
                        <DFTitle>The "name" node for AppAddr object</DFTitle>
                        <DFType>
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>Addr</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <chr />
                            </DFFormat>
                            <Occurrence>
                                <One />
                            </Occurrence>
                            <Scope>
                                <Dynamic />
                            </Scope>
                            <DFTitle>Management Server Address</DFTitle>
                            <DFType>
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>AddrType</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <chr />
                            </DFFormat>
                            <Occurrence>
                                <One />
                            </Occurrence>
                            <Scope>
                                <Dynamic />
                            </Scope>
                            <DFTitle>Management Server Address Type</DFTitle>
                            <DFType>
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>Port</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Get />
                            </AccessType>
                            <DFFormat>
                                <node />
                            </DFFormat>
                            <Occurrence>
                                <ZeroOrOne />
                            </Occurrence>
                            <Scope>
                                <Dynamic />
                            </Scope>
                            <DFTitle>A collection of all Port objects</DFTitle>
                            <DFType>
                                <DDFName></DDFName>
                            </DFType>
                        </DFProperties>
                        <Node>
                            <NodeName>*</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Add />
                                    <Get />
                                    <Replace />
                                </AccessType>
                                <DFFormat>
                                    <node />
                                </DFFormat>
                                <Occurrence>
                                    <One />
                                </Occurrence>
                                <Scope>
                                    <Dynamic />
                                </Scope>
                                <DFTitle>The "name" node for a Port object</DFTitle>
                                <DFType>
                                    <DDFName></DDFName>
                                </DFType>
                            </DFProperties>
                            <Node>
                                <NodeName>PortNbr</NodeName>
                                <DFProperties>
                                    <AccessType>
                                        <Add />
                                        <Get />
                                        <Replace />
                                    </AccessType>
                                    <DFFormat>
                                        <chr />
                                    </DFFormat>
                                    <Occurrence>
                                        <One />
                                    </Occurrence>
                                    <Scope>
                                        <Dynamic />
                                    </Scope>
                                    <DFTitle>Port</DFTitle>
                                    <DFType>
                                        <MIME>text/plain</MIME>
                                    </DFType>
                                </DFProperties>
                            </Node>
                        </Node>
                    </Node>
                </Node>
            </Node>
            <Node>
                <NodeName>AAuthPref</NodeName>
                <DFProperties>
                    <AccessType>
                        <Add />
                        <Get />
                        <Replace />
                    </AccessType>
                    <Description>Supported values: BASIC, DIGEST</Description>
                    <DFFormat>
                        <chr />
                    </DFFormat>
                    <Occurrence>
                        <ZeroOrOne />
                    </Occurrence>
                    <Scope>
                        <Dynamic />
                    </Scope>
                    <DFTitle>Application Authentication Type preference</DFTitle>
                    <DFType>
                        <MIME>text/plain</MIME>
                    </DFType>
                </DFProperties>
            </Node>
            <Node>
                <NodeName>AppAuth</NodeName>
                <DFProperties>
                    <AccessType>
                        <Add />
                        <Get />
                    </AccessType>
                    <DFFormat>
                        <node />
                    </DFFormat>
                    <Occurrence>
                        <ZeroOrOne />
                    </Occurrence>
                    <Scope>
                        <Dynamic />
                    </Scope>
                    <DFTitle>A collection of all references to multiple Application Authentication objects</DFTitle>
                    <DFType>
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                    <NodeName>*</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Add />
                            <Get />
                        </AccessType>
                        <DFFormat>
                            <node />
                        </DFFormat>
                        <Occurrence>
                            <OneOrMore />
                        </Occurrence>
                        <Scope>
                            <Dynamic />
                        </Scope>
                        <DFTitle>The "name" node for multiple Application Authentication objects</DFTitle>
                        <DFType>
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>AAuthLevel</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <chr />
                            </DFFormat>
                            <Occurrence>
                                <One />
                            </Occurrence>
                            <Scope>
                                <Dynamic />
                            </Scope>
                            <DFTitle>Application Authentication level</DFTitle>
                            <DFType>
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>AAuthType</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>If AAuthLevel is CLCRED, the supported types include BASIC and DIGEST. If AAuthLevel is SRVCRED, the only supported type is DIGEST.</Description>
                            <DFFormat>
                                <chr />
                            </DFFormat>
                            <Occurrence>
                                <One />
                            </Occurrence>
                            <Scope>
                                <Dynamic />
                            </Scope>
                            <DFTitle>Application Authentication Type</DFTitle>
                            <DFType>
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>AAuthName</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <chr />
                            </DFFormat>
                            <Occurrence>
                                <ZeroOrOne />
                            </Occurrence>
                            <Scope>
                                <Dynamic />
                            </Scope>
                            <DFTitle>Application Authentication Name</DFTitle>
                            <DFType>
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>AAuthSecret</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <chr />
                            </DFFormat>
                            <Occurrence>
                                <ZeroOrOne />
                            </Occurrence>
                            <Scope>
                                <Dynamic />
                            </Scope>
                            <DFTitle>Application Authentication Secret</DFTitle>
                            <DFType>
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>AAuthData</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <bin />
                            </DFFormat>
                            <Occurrence>
                                <ZeroOrOne />
                            </Occurrence>
                            <Scope>
                                <Dynamic />
                            </Scope>
                            <DFTitle>Application Authentication Data</DFTitle>
                            <DFType>
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                </Node>
            </Node>
            <Node>
                <NodeName>Ext</NodeName>
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
                        <Dynamic />
                    </Scope>
                    <DFTitle>Vendor specific information</DFTitle>
                    <DFType>
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                    <NodeName>Microsoft</NodeName>
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
                            <Dynamic />
                        </Scope>
                        <DFTitle>The collection of Microsoft specific settings</DFTitle>
                        <DFType>
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>Role</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>If this node is unspecified, its default value is the access role of the session that created the server account. The value for this node must be a subset of the                                         roles used in creating this server account.</Description>
                            <DFFormat>
                                <int />
                            </DFFormat>
                            <Occurrence>
                                <One />
                            </Occurrence>
                            <Scope>
                                <Dynamic />
                            </Scope>
                            <DFTitle>The security role mask that the DM session should run with</DFTitle>
                            <DFType>
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>ProtoVer</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>This node value corresponds to what the client would put in the VerDTD element of an OMA-DM package. No default value is assumed. The only valid value for this                                           node is 1.1 or 1.2.</Description>
                            <DFFormat>
                                <chr />
                            </DFFormat>
                            <Occurrence>
                                <ZeroOrOne />
                            </Occurrence>
                            <Scope>
                                <Dynamic />
                            </Scope>
                            <DFTitle>The OMA-DM protocol version that the client should use in communicating with the server</DFTitle>
                            <DFType>
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>DefaultEncoding</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Replace />
                                <Get />
                            </AccessType>
                            <Description>This node specifies the encoding that the OMA-DM client will use to encode its first package.  Valid values include "application/vnd.syncml.dm+xml" (for XML) and                                         "application/vnd.syncml.dm+wbxml" (for WBXML).  If this node is left unspecified, the OMA-DM client defaults to "application/vnd.syncml.dm+xml".</Description>
                            <DFFormat>
                                <chr />
                            </DFFormat>
                            <Occurrence>
                                <ZeroOrOne />
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
                        <NodeName>UseHwDevID</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Replace />
                                <Get />
                            </AccessType>
                            <Description>A value of true indicates that, during an OMA-DM session with this server, the value of the ./DevInfo/DevId node is the hardware ID of device (e.g, IMEI for a                                            GSM device, ESN for a CDMA Device, hashed UUID for a non-radio device). The default value of false indicates that the value of ./DevInfo/DevId node is a hash of                                          the UUID of the device.</Description>
                            <DFFormat>
                                <bool />
                            </DFFormat>
                            <Occurrence>
                                <ZeroOrOne />
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
                        <NodeName>ConnRetryFreq</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>This node specifies how many times DM client will retry a connection to the server if the connection fails. The default value is 3 retries.</Description>
                            <DFFormat>
                                <int />
                            </DFFormat>
                            <Occurrence>
                                <ZeroOrOne />
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
                        <NodeName>InitialBackOffTime</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>This node specifies the initial amount of time (in milliseconds) that the DM client waits before attempting a connection retry. After the initial wait, the wait                                          time grows exponentially. The default value is 16000 milliseconds.</Description>
                            <DFFormat>
                                <int />
                            </DFFormat>
                            <Occurrence>
                                <ZeroOrOne />
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
                        <NodeName>MaxBackOffTime</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>This node specifies the maximum number of milliseconds to wait before attempting a connection retry. The default value is 86400000.</Description>
                            <DFFormat>
                                <int />
                            </DFFormat>
                            <Occurrence>
                                <ZeroOrOne />
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
                        <NodeName>BackCompatRetryDisabled</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>This node specifies whether to disable the ability of the DM client to communicate with a down-level server.
                                         Possible Values:
                                         false (default) -- Compatibility with down-level servers is enabled
                                         true -- Compatibility with down-level servers is disabled</Description>
                            <DFFormat>
                                <bool />
                            </DFFormat>
                            <Occurrence>
                                <ZeroOrOne />
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
                        <NodeName>UseNonceResync</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>This node specifies whether the DM client can use the nonce resynchronization protocol when authentication of a server notification fails. If nonce                                                       resynchronization is disabled and authentication of the server notification fails, the notification is dropped.
                                            Possible Values:
                                            false (default) : Nonce resynchronization is disabled.
                                            true : Nonce resynchronization is enabled.</Description>
                            <DFFormat>
                                <bool />
                            </DFFormat>
                            <Occurrence>
                                <ZeroOrOne />
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
                        <NodeName>CRLCheck</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <bool />
                            </DFFormat>
                            <Occurrence>
                                <ZeroOrOne />
                            </Occurrence>
                            <Scope>
                                <Dynamic />
                            </Scope>
                            <DFTitle>CRLCheck</DFTitle>
                            <DFType>
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>DisableOnRoaming</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <bool />
                            </DFFormat>
                            <Occurrence>
                                <ZeroOrOne />
                            </Occurrence>
                            <Scope>
                                <Dynamic />
                            </Scope>
                            <DFTitle>DisableOnRoaming</DFTitle>
                            <DFType>
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>SSLCLIENTCERTSEARCHCRITERIA</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Get />
                                <Replace />
                            </AccessType>
                            <DFFormat>
                                <chr />
                            </DFFormat>
                            <Occurrence>
                                <ZeroOrOne />
                            </Occurrence>
                            <Scope>
                                <Dynamic />
                            </Scope>
                            <DFTitle>SSLCLIENTCERTSEARCHCRITERIA</DFTitle>
                            <DFType>
                                <MIME>text/plain</MIME>
                            </DFType>
                        </DFProperties>
                    </Node>
                    <Node>
                        <NodeName>InitiateSession</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Add />
                                <Replace />
                            </AccessType>
                            <Description>When this node is added, a session is started with the MDM server.</Description>
                            <DFFormat>
                                <null />
                            </DFFormat>
                            <Occurrence>
                                <ZeroOrOne />
                            </Occurrence>
                            <Scope>
                                <Dynamic />
                            </Scope>
                            <DFTitle></DFTitle>
                            <DFType>
                                <DDFName></DDFName>
                            </DFType>
                        </DFProperties>
                    </Node>
                </Node>
            </Node>
        </Node>
    </Node>
</MgmtTree>

```

## Related topics


[DMAcc configuration service provider](dmacc-csp.md)

 

 






