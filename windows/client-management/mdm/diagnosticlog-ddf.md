---
title: DiagnosticLog DDF
description: DiagnosticLog DDF
ms.assetid: 9DD75EDA-5913-45B4-9BED-20E30CDEBE16
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/05/2017
---

# DiagnosticLog DDF


This topic shows the OMA DM device description framework (DDF) for the DiagnosticLog configuration service provider.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The content below are the latest versions of the DDF files:

-   [DiagnosticLog CSP version 1.2](#version-1-2)
-   [DiagnosticLog CSP version 1.3](#version-1-3)

## <a href="" id="version-1-2"></a>DiagnosticLog CSP version 1.2


```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
    "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
    [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
    <VerDTD>1.2</VerDTD>
    <Node>
        <NodeName>DiagnosticLog</NodeName>
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
                <MIME>com.microsoft/1.2/MDM/DiagnosticLog</MIME>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName>EtwLog</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
                <Description>Root node of all types of event logging nodes that CSP manages.</Description>
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
                <NodeName>Collectors</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>Root node of registered "Collector" nodes.</Description>
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
                            <Add />
                            <Delete />
                            <Get />
                        </AccessType>
                        <Description>Each dynamic node represents a registered 'Collector' node. CSP will maintain an ETW trace session for this collector with its name used as a unique identifier. In a collector, a valid ETW provider can be registered and unregistered. The collector's associated trace session will enable the registered providers in it if the provider's state is 'Enabled'. Each provider's state, trace level and keywords can be controlled separately. The name of this node must not be a valid Windows event channel name. It can be a etw provider guid as long as it is not equal to an already registered 'Provider' node name.</Description>
                        <DFFormat>
                            <node />
                        </DFFormat>
                        <Occurrence>
                            <ZeroOrMore />
                        </Occurrence>
                        <Scope>
                            <Dynamic />
                        </Scope>
                        <DFTitle>CollectorName</DFTitle>
                        <DFType>
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>TraceStatus</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <Description>This node is used for getting the status of this collector node's associated trace session. 1 means "in progress"; 0 means "not started or stopped".</Description>
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
                        <NodeName>TraceLogFileMode</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Replace />
                            </AccessType>
                            <DefaultValue>1</DefaultValue>
                            <Description>This node is used for setting or getting the trace log file mode of this collector node's associated trace session. The only two allowed values are 1 and 2, which are EVENT_TRACE_FILE_MODE_SEQUENTIAL and EVENT_TRACE_FILE_MODE_CIRCULAR. Default value is 1.</Description>
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
                        <NodeName>TraceControl</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Exec />
                                <Get />
                            </AccessType>
                            <Description>This node is to trigger "start" and "stop" of this collector node's associated trace session. "Get" returns the name of this node.</Description>
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
                        <NodeName>LogFileSizeLimitMB</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Replace />
                            </AccessType>
                            <DefaultValue>4</DefaultValue>
                            <Description>This node is used for setting or getting the trace log file size limit(in Megabytes) of this collector node's associated trace session. The value range is 1~2048. Default value is 4.</Description>
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
                        <NodeName>Providers</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <Description>Root node of all providers registered in this collector node.</Description>
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
                                <Description>Each dynamic node represents an ETW provider registered in this collector node. The node name must be a valid provider GUID.</Description>
                                <DFFormat>
                                    <node />
                                </DFFormat>
                                <Occurrence>
                                    <ZeroOrMore />
                                </Occurrence>
                                <Scope>
                                    <Dynamic />
                                </Scope>
                                <DFTitle>ProviderGuid</DFTitle>
                                <DFType>
                                    <DDFName></DDFName>
                                </DFType>
                            </DFProperties>
                            <Node>
                                <NodeName>Keywords</NodeName>
                                <DFProperties>
                                    <AccessType>
                                        <Get />
                                        <Replace />
                                    </AccessType>
                                    <DefaultValue>"0"</DefaultValue>
                                    <Description>This node is used for setting or getting the keywords of the event provider in this collector node's associated trace session. The string is in the form of hexadecimal digits and 16 chars wide. It'll be internally converted into ULONGLONG data type in the CSP. Default value is "0", which means all events from this provider are included. If the associated trace session is in progress, new keywords setting is applied immediately; if not, it'll be applied next time that session is started.</Description>
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
                                <NodeName>TraceLevel</NodeName>
                                <DFProperties>
                                    <AccessType>
                                        <Get />
                                        <Replace />
                                    </AccessType>
                                    <DefaultValue>5</DefaultValue>
                                    <Description>This node is used for setting or getting the trace level of this event provider in this collector node's associated trace session. Default value is 5, which is TRACE_LEVEL_VERBOSE. If the associated trace session is in progress, new trace level setting is applied immediately;if not, it'll be applied next time that session is started.</Description>
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
                                <NodeName>State</NodeName>
                                <DFProperties>
                                    <AccessType>
                                        <Get />
                                        <Replace />
                                    </AccessType>
                                    <DefaultValue>true</DefaultValue>
                                    <Description>This node is used for setting or getting the state of the event provider in this collector node's associated trace session. If the trace session isn't started, changing the value controls whether to enable the provider or not when session is started; if trace session is already started, changing its value causes enabling or disabling the provider in the live trace session. Default value is true.</Description>
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
                </Node>
            </Node>
            <Node>
                <NodeName>Channels</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>Root node of registered "Channel" nodes.</Description>
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
                            <Add />
                            <Delete />
                            <Get />
                        </AccessType>
                        <Description>Each dynamic node represents a registered 'Channel' node. The node name must be a valid Windows event log channel name, e.g. "Microsoft-Client-Licensing-Platform%2FAdmin". When specifying the name in the LocURI, it must be url encoded or it'll be translated into a different URI unexpectedly.</Description>
                        <DFFormat>
                            <node />
                        </DFFormat>
                        <Occurrence>
                            <ZeroOrMore />
                        </Occurrence>
                        <Scope>
                            <Dynamic />
                        </Scope>
                        <DFTitle>ChannelName</DFTitle>
                        <DFType>
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>Export</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Exec />
                                <Get />
                            </AccessType>
                            <Description>This node is to trigger exporting events into a log file from this node's associated Windows event channel. The log file's extension is .evtx, which is the standard extension of windows event channel log. The "Get" command returns the name of this node.</Description>
                            <DFFormat>
                                <null />
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
                        <NodeName>State</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>This node is used for setting or getting the 'Enabled' state of this node's associated windows event channel in the system. Setting it to "TRUE" enables the channel; setting it to "FALSE" disables the channel. </Description>
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
                        <NodeName>Filter</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Replace />
                            </AccessType>
                            <DefaultValue>""</DefaultValue>
                            <Description>This node is used for setting or getting the xpath query string to filter the events when exporting the log file from the channel. Default value is empty string.</Description>
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
                </Node>
            </Node>
        </Node>
        <Node>
            <NodeName>FileDownload</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
                <Description>Root node of all csp nodes that are related to log file download in csp.</Description>
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
                <NodeName>DMChannel</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>Root node of all csp nodes that are used for controlling file download for their associated log file generated by logging csp nodes.</Description>
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
                        <Description>Each dynamic node represents a 'FileContext' node corresponding to a log file generated by one of the logging CSP nodes(underneath 'EtwLog' node). The node name must be the name of a registered 'Provider', 'Collector' or 'Channel' node. The log file and its location will be determined by CSP based on the node name. File download is done by dividing the log file into multiple blocks of configured block size and then sending the blocks as requested by MDM server.</Description>
                        <DFFormat>
                            <node />
                        </DFFormat>
                        <Occurrence>
                            <ZeroOrMore />
                        </Occurrence>
                        <Scope>
                            <Dynamic />
                        </Scope>
                        <DFTitle>FileContext</DFTitle>
                        <DFType>
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>BlockSizeKB</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Replace />
                            </AccessType>
                            <DefaultValue>4</DefaultValue>
                            <Description>This node is used for setting or getting the block size (in Kilobytes) for the download of associated log file. The value range is 1~16. Default value is 4.</Description>
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
                        <NodeName>BlockCount</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <Description>This node is used for getting the total number of blocks for the associated log file. If the log file isn't generated yet, the value returned is -1; if the trace session is in progress, the value returned is -2.</Description>
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
                        <NodeName>BlockIndexToRead</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>This node is used for setting and getting the block index that points to the data block for 'BlockData' node. The value range is 0~(BlockCount-1).</Description>
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
                        <NodeName>BlockData</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <Description>This node is used to get the binary data of the block that 'BlockIndexToRead' node is pointing to.</Description>
                            <DFFormat>
                                <b64 />
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
                    </Node>
                    <Node>
                        <NodeName>DataBlocks</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <Description>Root node of all 'BlockNumber' nodes for the associated log file. The number of its children should be the total block count of the log file. No children nodes exist if 'BlockCount' node's value is less than 0.</Description>
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
                                <Description>Each dynamic node represents a 'BlockNumber' node. The node name is an integer equal to the index of the block which this node stands for. Therefore the node name should be ranging from 0 to (BlockCount -1). It returns the binary data of the block which this node is referring to.</Description>
                                <DFFormat>
                                    <b64 />
                                </DFFormat>
                                <Occurrence>
                                    <ZeroOrMore />
                                </Occurrence>
                                <Scope>
                                    <Dynamic />
                                </Scope>
                                <DFTitle>BlockNumber</DFTitle>
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
</MgmtTree>
```

## <a href="" id="version-1-3"></a>DiagnosticLog CSP version 1.3


```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
    "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
    [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
    <VerDTD>1.2</VerDTD>
    <Node>
        <NodeName>DiagnosticLog</NodeName>
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
                <MIME>com.microsoft/1.3/MDM/DiagnosticLog</MIME>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName>EtwLog</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
                <Description>Root node of all types of event logging nodes that CSP manages.</Description>
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
                <NodeName>Collectors</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>Root node of registered "Collector" nodes.</Description>
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
                            <Add />
                            <Delete />
                            <Get />
                        </AccessType>
                        <Description>Each dynamic node represents a registered 'Collector' node. CSP will maintain an ETW trace session for this collector with its name used as a unique identifier. In a collector, a valid ETW provider can be registered and unregistered. The collector's associated trace session will enable the registered providers in it if the provider's state is 'Enabled'. Each provider's state, trace level and keywords can be controlled separately. The name of this node must not be a valid Windows event channel name. It can be a etw provider guid as long as it is not equal to an already registered 'Provider' node name.</Description>
                        <DFFormat>
                            <node />
                        </DFFormat>
                        <Occurrence>
                            <ZeroOrMore />
                        </Occurrence>
                        <Scope>
                            <Dynamic />
                        </Scope>
                        <DFTitle>CollectorName</DFTitle>
                        <DFType>
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>TraceStatus</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <Description>This node is used for getting the status of this collector node's associated trace session. 1 means "in progress"; 0 means "not started or stopped".</Description>
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
                        <NodeName>TraceLogFileMode</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Replace />
                            </AccessType>
                            <DefaultValue>1</DefaultValue>
                            <Description>This node is used for setting or getting the trace log file mode of this collector node's associated trace session. The only two allowed values are 1 and 2, which are EVENT_TRACE_FILE_MODE_SEQUENTIAL and EVENT_TRACE_FILE_MODE_CIRCULAR. Default value is 1.</Description>
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
                        <NodeName>TraceControl</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Exec />
                                <Get />
                            </AccessType>
                            <Description>This node is to trigger "start" and "stop" of this collector node's associated trace session. "Get" returns the name of this node.</Description>
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
                        <NodeName>LogFileSizeLimitMB</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Replace />
                            </AccessType>
                            <DefaultValue>4</DefaultValue>
                            <Description>This node is used for setting or getting the trace log file size limit(in Megabytes) of this collector node's associated trace session. The value range is 1~2048. Default value is 4.</Description>
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
                        <NodeName>Providers</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <Description>Root node of all providers registered in this collector node.</Description>
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
                                <Description>Each dynamic node represents an ETW provider registered in this collector node. The node name must be a valid provider GUID.</Description>
                                <DFFormat>
                                    <node />
                                </DFFormat>
                                <Occurrence>
                                    <ZeroOrMore />
                                </Occurrence>
                                <Scope>
                                    <Dynamic />
                                </Scope>
                                <DFTitle>ProviderGuid</DFTitle>
                                <DFType>
                                    <DDFName></DDFName>
                                </DFType>
                            </DFProperties>
                            <Node>
                                <NodeName>Keywords</NodeName>
                                <DFProperties>
                                    <AccessType>
                                        <Get />
                                        <Replace />
                                    </AccessType>
                                    <DefaultValue>"0"</DefaultValue>
                                    <Description>This node is used for setting or getting the keywords of the event provider in this collector node's associated trace session. The string is in the form of hexadecimal digits and 16 chars wide. It'll be internally converted into ULONGLONG data type in the CSP. Default value is "0", which means all events from this provider are included. If the associated trace session is in progress, new keywords setting is applied immediately; if not, it'll be applied next time that session is started.</Description>
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
                                <NodeName>TraceLevel</NodeName>
                                <DFProperties>
                                    <AccessType>
                                        <Get />
                                        <Replace />
                                    </AccessType>
                                    <DefaultValue>5</DefaultValue>
                                    <Description>This node is used for setting or getting the trace level of this event provider in this collector node's associated trace session. Default value is 5, which is TRACE_LEVEL_VERBOSE. If the associated trace session is in progress, new trace level setting is applied immediately;if not, it'll be applied next time that session is started.</Description>
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
                                <NodeName>State</NodeName>
                                <DFProperties>
                                    <AccessType>
                                        <Get />
                                        <Replace />
                                    </AccessType>
                                    <DefaultValue>true</DefaultValue>
                                    <Description>This node is used for setting or getting the state of the event provider in this collector node's associated trace session. If the trace session isn't started, changing the value controls whether to enable the provider or not when session is started; if trace session is already started, changing its value causes enabling or disabling the provider in the live trace session. Default value is true.</Description>
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
                </Node>
            </Node>
            <Node>
                <NodeName>Channels</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>Root node of registered "Channel" nodes.</Description>
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
                            <Add />
                            <Delete />
                            <Get />
                        </AccessType>
                        <Description>Each dynamic node represents a registered 'Channel' node. The node name must be a valid Windows event log channel name, e.g. "Microsoft-Client-Licensing-Platform%2FAdmin". When specifying the name in the LocURI, it must be url encoded or it'll be translated into a different URI unexpectedly.</Description>
                        <DFFormat>
                            <node />
                        </DFFormat>
                        <Occurrence>
                            <ZeroOrMore />
                        </Occurrence>
                        <Scope>
                            <Dynamic />
                        </Scope>
                        <DFTitle>ChannelName</DFTitle>
                        <DFType>
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>Export</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Exec />
                                <Get />
                            </AccessType>
                            <Description>This node is to trigger exporting events into a log file from this node's associated Windows event channel. The log file's extension is .evtx, which is the standard extension of windows event channel log. The "Get" command returns the name of this node.</Description>
                            <DFFormat>
                                <null />
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
                        <NodeName>State</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>This node is used for setting or getting the 'Enabled' state of this node's associated windows event channel in the system. Setting it to "TRUE" enables the channel; setting it to "FALSE" disables the channel. </Description>
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
                        <NodeName>Filter</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Replace />
                            </AccessType>
                            <DefaultValue>""</DefaultValue>
                            <Description>This node is used for setting or getting the xpath query string to filter the events when exporting the log file from the channel. Default value is empty string.</Description>
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
                </Node>
            </Node>
        </Node>
        <Node>
            <NodeName>DeviceStateData</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
                <Description>Root node of all types of device state data that CSP exposes.</Description>
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
                <NodeName>MdmConfiguration</NodeName>
                <DFProperties>
                    <AccessType>
                        <Exec />
                    </AccessType>
                    <Description>This node is to trigger snapping of the Device Management state data with "SNAP".</Description>
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
        </Node>
        <Node>
            <NodeName>FileDownload</NodeName>
            <DFProperties>
                <AccessType>
                    <Get />
                </AccessType>
                <Description>Root node of all csp nodes that are related to log file download in csp.</Description>
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
                <NodeName>DMChannel</NodeName>
                <DFProperties>
                    <AccessType>
                        <Get />
                    </AccessType>
                    <Description>Root node of all csp nodes that are used for controlling file download for their associated log file generated by logging csp nodes.</Description>
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
                        <Description>Each dynamic node represents a 'FileContext' node corresponding to a log file generated by one of the logging CSP nodes(underneath 'EtwLog' node). The node name must be the name of a registered 'Provider', 'Collector' or 'Channel' node. The log file and its location will be determined by CSP based on the node name. File download is done by dividing the log file into multiple blocks of configured block size and then sending the blocks as requested by MDM server.</Description>
                        <DFFormat>
                            <node />
                        </DFFormat>
                        <Occurrence>
                            <ZeroOrMore />
                        </Occurrence>
                        <Scope>
                            <Dynamic />
                        </Scope>
                        <DFTitle>FileContext</DFTitle>
                        <DFType>
                            <DDFName></DDFName>
                        </DFType>
                    </DFProperties>
                    <Node>
                        <NodeName>BlockSizeKB</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Replace />
                            </AccessType>
                            <DefaultValue>4</DefaultValue>
                            <Description>This node is used for setting or getting the block size (in Kilobytes) for the download of associated log file. The value range is 1~16. Default value is 4.</Description>
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
                        <NodeName>BlockCount</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <Description>This node is used for getting the total number of blocks for the associated log file. If the log file isn't generated yet, the value returned is -1; if the trace session is in progress, the value returned is -2.</Description>
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
                        <NodeName>BlockIndexToRead</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                                <Replace />
                            </AccessType>
                            <Description>This node is used for setting and getting the block index that points to the data block for 'BlockData' node. The value range is 0~(BlockCount-1).</Description>
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
                        <NodeName>BlockData</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <Description>This node is used to get the binary data of the block that 'BlockIndexToRead' node is pointing to.</Description>
                            <DFFormat>
                                <b64 />
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
                    </Node>
                    <Node>
                        <NodeName>DataBlocks</NodeName>
                        <DFProperties>
                            <AccessType>
                                <Get />
                            </AccessType>
                            <Description>Root node of all 'BlockNumber' nodes for the associated log file. The number of its children should be the total block count of the log file. No children nodes exist if 'BlockCount' node's value is less than 0.</Description>
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
                                <Description>Each dynamic node represents a 'BlockNumber' node. The node name is an integer equal to the index of the block which this node stands for. Therefore the node name should be ranging from 0 to (BlockCount -1). It returns the binary data of the block which this node is referring to.</Description>
                                <DFFormat>
                                    <b64 />
                                </DFFormat>
                                <Occurrence>
                                    <ZeroOrMore />
                                </Occurrence>
                                <Scope>
                                    <Dynamic />
                                </Scope>
                                <DFTitle>BlockNumber</DFTitle>
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
</MgmtTree>
```

## Related topics


[DiagnosticLog configuration service provider](diagnosticlog-csp.md)

 

 






