---
title: AllJoynManagement DDF
description: AllJoynManagement DDF
ms.assetid: 540C2E60-A041-4749-A027-BBAF0BB046E4
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.date: 12/05/2017
---

# AllJoynManagement DDF


This topic shows the OMA DM device description framework (DDF) for the **AllJoynManagement** configuration service provider. This CSP was added in Windows 10, version 1511.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
    "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
    [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
    <VerDTD>1.2</VerDTD>
    <Node>
        <NodeName>AllJoynManagement</NodeName>
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
            <NodeName>Services</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
                <Description>This is the list of AllJoyn Objects that are discovered on the AllJoyn bus.  Only AllJoyn Objects that expose the "com.microsoft.alljoynmanagement.config" will be shown here.</Description>
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
                <NodeName></NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>The Unique AllJoyn About Device ID, a GUID, that Hosts one or more configurable objects
.
</Description>
                    <DFFormat>
                        <node />
                    </DFFormat>
                    <Occurrence>
                        <ZeroOrMore />
                    </Occurrence>
                    <Scope>
                        <Dynamic />
                    </Scope>
                    <DFTitle>ServiceID</DFTitle>
                    <DFType>
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                    <NodeName>Port</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Get />
                        </AccessType>
                        <Description>The set of Ports that this AllJoyn Object uses to communicate configuration settings through.  

Typically, only one port is used for communication, but it is possible that additional ports may be specified.</Description>
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
                                <Get />
                            </AccessType>
                            <Description>The AllJoyn Port Number to communicate on.  This is specified by the Configurable AllJoyn Object and is reflected here.</Description>
                            <DFFormat>
                                <node />
                            </DFFormat>
                            <Occurrence>
                                <One />
                            </Occurrence>
                            <Scope>
                                <Dynamic />
                            </Scope>
                            <DFTitle>PortNum</DFTitle>
                            <DFType>
                                <DDFName></DDFName>
                            </DFType>
                        </DFProperties>
                        <Node>
                            <NodeName>CfgObject</NodeName>
                            <DFProperties>
                                <AccessType>
                                    <Get />
                                </AccessType>
                                <Description>The set of configurable interfaces that are available on the Port of the AllJoyn Object</Description>
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
                                        <Get />
                                    </AccessType>
                                    <Description>The remainder of this URI is an escaped path to the Configurable AllJoyn Object Hosted by the parent ServiceID and Accessible by the parent PortNum.

For example an AllJoyn Bridge with the Microsoft specific AllJoyn Configuration Interface "\ASBService\BridgeConfig" would be specified in the URI as: %2FASBService%2FBridgeConfig
</Description>
                                    <DFFormat>
                                        <b64 />
                                    </DFFormat>
                                    <Occurrence>
                                        <OneOrMore />
                                    </Occurrence>
                                    <Scope>
                                        <Dynamic />
                                    </Scope>
                                    <DFTitle>CfgObjectPath</DFTitle>
                                    <DFType>
                                        <DDFName></DDFName>
                                    </DFType>
                                </DFProperties>
                            </Node>
                        </Node>
                    </Node>
                </Node>
            </Node>
        </Node>
        <Node>
            <NodeName>Credentials</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
                <Description>This is the Credential Store.  An Administrator can set credentials for each AllJoyn device that requires authentication at this node.  
If a SYNCML request arrives in the CSP to replace or query a configuration item on an AllJoyn Object that requires authentication, then the CSP will use the Credentials stored here during the authentication phase.

</Description>
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
                <NodeName></NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>This is the same ServiceID as specified in the \AllJoynManagement\Services\ServiceID URI.

It is typically implemented as a GUID.</Description>
                    <DFFormat>
                        <node />
                    </DFFormat>
                    <Occurrence>
                        <ZeroOrMore />
                    </Occurrence>
                    <Scope>
                        <Dynamic />
                    </Scope>
                    <CaseSense>
                        <CIS />
                    </CaseSense>
                    <DFTitle>ServiceID</DFTitle>
                    <DFType>
                        <DDFName></DDFName>
                    </DFType>
                </DFProperties>
                <Node>
                    <NodeName>Key</NodeName>
                    <DFProperties>
                        <AccessType>
                            <Get />
                            <Replace />
                        </AccessType>
                        <Description>An Alphanumeric KEY value that conforms to the AllJoyn SRP KEYX Authentication Standard</Description>
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
                            <CS />
                        </CaseSense>
                        <DFType>
                            <MIME>text/plain</MIME>
                        </DFType>
                    </DFProperties>
                </Node>
            </Node>
        </Node>
        <Node>
            <NodeName>Firewall</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
                <Description>Firewall setting for the AllJoyn service (AJRouter.dll).</Description>
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
                <NodeName>PublicProfile</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                        <Replace />
                    </AccessType>
                    <Description>Boolean value to enable or disable the AllJoyn router service (AJRouter.dll) for Public network profile.</Description>
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
                <NodeName>PrivateProfile</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>Boolean value indicating whether AllJoyn router service (AJRouter.dll) is enabled for Private network profile.</Description>
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
    </Node>
</MgmtTree>
```

## Related topics


[AllJoynManagement configuration service provider](alljoynmanagement-csp.md)

 

 






