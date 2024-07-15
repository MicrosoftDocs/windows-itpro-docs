---
title: DiagnosticLog DDF file
description: View the XML file containing the device description framework (DDF) for the DiagnosticLog configuration service provider.
ms.date: 06/28/2024
---

<!-- Auto-Generated CSP Document -->

# DiagnosticLog DDF file

The following XML file contains the device description framework (DDF) for the DiagnosticLog configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
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
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.10586</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.2</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x88;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;0xD2;</MSFT:EditionAllowList>
      </MSFT:Applicability>
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
          <DDFName />
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
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>
          </NodeName>
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
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:ServerGeneratedUniqueIdentifier />
            </MSFT:DynamicNodeNaming>
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
                <MIME />
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>EVENT_TRACE_FILE_MODE_SEQUENTIAL-Writes events to a log file sequentially. It stops when the file reaches its maximum size.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>2</MSFT:Value>
                  <MSFT:ValueDescription>EVENT_TRACE_FILE_MODE_CIRCULAR-Writes events to a log file. After the file reaches the maximum size, the oldest events are replaced with incoming events.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>START</MSFT:Value>
                  <MSFT:ValueDescription>Start log tracing.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>STOP</MSFT:Value>
                  <MSFT:ValueDescription>Stop log tracing</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="Range">
                <MSFT:Value>[1-2048]</MSFT:Value>
              </MSFT:AllowedValues>
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
                <DDFName />
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>
              </NodeName>
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
                  <DDFName />
                </DFType>
                <MSFT:DynamicNodeNaming>
                  <MSFT:UniqueName>The node name must be a valid provider GUID.</MSFT:UniqueName>
                </MSFT:DynamicNodeNaming>
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
                    <MIME />
                  </DFType>
                  <MSFT:AllowedValues ValueType="None">
                  </MSFT:AllowedValues>
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
                    <MIME />
                  </DFType>
                  <MSFT:AllowedValues ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>1</MSFT:Value>
                      <MSFT:ValueDescription>TRACE_LEVEL_CRITICAL - Abnormal exit or termination events</MSFT:ValueDescription>
                    </MSFT:Enum>
                    <MSFT:Enum>
                      <MSFT:Value>2</MSFT:Value>
                      <MSFT:ValueDescription>TRACE_LEVEL_ERROR - Severe error events</MSFT:ValueDescription>
                    </MSFT:Enum>
                    <MSFT:Enum>
                      <MSFT:Value>3</MSFT:Value>
                      <MSFT:ValueDescription>TRACE_LEVEL_WARNING - Warning events such as allocation failures</MSFT:ValueDescription>
                    </MSFT:Enum>
                    <MSFT:Enum>
                      <MSFT:Value>4</MSFT:Value>
                      <MSFT:ValueDescription>TRACE_LEVEL_INFORMATION - Non-error events, such as entry or exit events</MSFT:ValueDescription>
                    </MSFT:Enum>
                    <MSFT:Enum>
                      <MSFT:Value>5</MSFT:Value>
                      <MSFT:ValueDescription>TRACE_LEVEL_VERBOSE - Detailed information</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:AllowedValues>
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
                    <MIME />
                  </DFType>
                  <MSFT:AllowedValues ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Provider is enabled in the trace session. This is the default.</MSFT:ValueDescription>
                    </MSFT:Enum>
                    <MSFT:Enum>
                      <MSFT:Value>false</MSFT:Value>
                      <MSFT:ValueDescription>Provider is disabled in the trace session.</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:AllowedValues>
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
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>
          </NodeName>
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
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:UniqueName>The node name must be a valid Windows event log channel name, such as "Microsoft-Client-Licensing-Platform%2FAdmin"</MSFT:UniqueName>
            </MSFT:DynamicNodeNaming>
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
                <MIME />
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>Channel is enabled.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>Channel is disabled.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
          <DDFName />
        </DFType>
      </DFProperties>
      <Node>
        <NodeName>MdmConfiguration</NodeName>
        <DFProperties>
          <AccessType>
            <Exec />
            <Get />
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
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.14393</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.3</MSFT:CspVersion>
          </MSFT:Applicability>
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
          <DDFName />
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
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>
          </NodeName>
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
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:UniqueName>The node name must be the name of a registered 'Provider', 'Collector' or 'Channel' node. </MSFT:UniqueName>
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>BlockSizeKB</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>4</DefaultValue>
              <Description>This node is used for setting or getting the block size (in Kilobytes) for the download of assoicated log file. The value range is 1~16. Default value is 4.</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="Range">
                <MSFT:Value>[1-16]</MSFT:Value>
              </MSFT:AllowedValues>
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
                <MIME />
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
                <DDFName />
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
                <DDFName />
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>
              </NodeName>
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
                  <DDFName />
                </DFType>
                <MSFT:DynamicNodeNaming>
                  <MSFT:ClientInventory />
                </MSFT:DynamicNodeNaming>
              </DFProperties>
            </Node>
          </Node>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>Policy</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Contains policy for diagnostic settings.</Description>
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
          <DDFName />
        </DFType>
        <CaseSense>
          <CIS />
        </CaseSense>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.18362</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.4</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>Channels</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Contains policy for Event Log channel settings.</Description>
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
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>
          </NodeName>
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
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:UniqueName>The node name must be a valid Windows event log channel name, such as Microsoft-Client-Licensing-Platform%2FAdmin. When specifying the name in the LocURI, it must be URL encoded, otherwise it may unexpectedly translate into a different URI.</MSFT:UniqueName>
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>MaximumFileSize</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>1</DefaultValue>
              <Description>Maximum size of the channel log file in MB.</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="Range">
                <MSFT:Value>[1-2000000]</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>SDDL</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>SDDL String controlling access to the channel. Default: https://docs.microsoft.com/en-us/windows/desktop/WES/eventmanifestschema-channeltype-complextype</Description>
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
                <MIME />
              </DFType>
              <CaseSense>
                <CS />
              </CaseSense>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>ActionWhenFull</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Action to take when the log file reaches maximum size. "Truncate", "Overwrite", "Archive".</Description>
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
                <MIME />
              </DFType>
              <CaseSense>
                <CIS />
              </CaseSense>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>Truncate</MSFT:Value>
                  <MSFT:ValueDescription>When the log file reaches its maximum file size, new events are not written to the log and are lost.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>Overwrite</MSFT:Value>
                  <MSFT:ValueDescription>When the log file reaches its maximum file size, new events overwrite old events.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>Archive</MSFT:Value>
                  <MSFT:ValueDescription>When the log file reaches its maximum size, the log file is saved to the location specified by the "Archive Location" policy setting. If archive location value is not set, the new file is saved in the same directory as current log file.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Enabled</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>This policy setting specifies whether the channel should be enabled or disabled. Set value to TRUE to enable and FALSE to disable.</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>Enables the channel.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>Disables the channel.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
      </Node>
    </Node>
    <Node>
      <NodeName>DiagnosticArchive</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <Description>Root note for archive definition and collection.</Description>
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
          <DDFName />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.18362</MSFT:OsBuildVersion>
          <MSFT:CspVersion>1.4</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>ArchiveDefinition</NodeName>
        <DFProperties>
          <AccessType>
            <Exec />
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
            <Permanent />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>ArchiveResults</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Pull up the results of the last archive run.</Description>
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
            <MIME />
          </DFType>
          <CaseSense>
            <CIS />
          </CaseSense>
        </DFProperties>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[DiagnosticLog configuration service provider reference](diagnosticlog-csp.md)
