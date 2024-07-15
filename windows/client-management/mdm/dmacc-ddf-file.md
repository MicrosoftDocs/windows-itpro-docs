---
title: DMAcc DDF file
description: View the XML file containing the device description framework (DDF) for the DMAcc configuration service provider.
ms.date: 06/28/2024
---

<!-- Auto-Generated CSP Document -->

# DMAcc DDF file

The following XML file contains the device description framework (DDF) for the DMAcc configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
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
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.10586</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x62;0x63;0x64;0x65;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x88;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;0xD2;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>
      </NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
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
        <DFTitle>AccountUID</DFTitle>
        <DFType>
          <DDFName />
        </DFType>
        <MSFT:DynamicNodeNaming>
          <MSFT:ClientInventory />
        </MSFT:DynamicNodeNaming>
      </DFProperties>
      <Node>
        <NodeName>AppID</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Get />
            <Replace />
          </AccessType>
          <DefaultValue>w7</DefaultValue>
          <Description>Specifies the application identifier for the OMA DM account.. The only supported value is w7.</Description>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>w7</MSFT:Value>
              <MSFT:ValueDescription>The only supported value.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
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
          <Description>Specifies the OMA DM server's unique identifier for the current OMA DM account. This value is case-sensitive.</Description>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
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
          <Description>Specifies the display name of the application.</Description>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="None">
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AppAddr</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Get />
          </AccessType>
          <Description>Interior node for DM server address.</Description>
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
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Get />
            </AccessType>
            <Description>Defines the OMA DM server address. Only one server address can be configured. When mapping the w7 APPLICATION configuration service provider to the DMAcc Configuration Service Provider, the name of this element is "1". This is the first DM address encountered in the w7 APPLICATION configuration service provider, other DM accounts are ignored.</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>ObjectName</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:ClientInventory />
            </MSFT:DynamicNodeNaming>
          </DFProperties>
          <Node>
            <NodeName>Addr</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specifies the address of the OMA DM account. The type of address stored is specified by the AddrType element.</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
              <DefaultValue>URI</DefaultValue>
              <Description>Specifies the format and interpretation of the Addr node value. The default is "URI". The default value of "URI" specifies that the OMA DM account address in Addr is a URI address. A value of "IPv4" specifies that the OMA DM account address in Addr is an IP address.</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>URI</MSFT:Value>
                  <MSFT:ValueDescription>The OMA DM account address in Addr is a URI address.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>IPv4</MSFT:Value>
                  <MSFT:ValueDescription>The OMA DM account address in Addr is an IP address.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Port</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Get />
              </AccessType>
              <Description>Interior node for port information.</Description>
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
                <DDFName />
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>
              </NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>Only one port number can be configured. When mapping the w7 APPLICATION configuration service provider to the DMAcc Configuration Service Provider, the name of this element is "1".</Description>
                <DFFormat>
                  <node />
                </DFFormat>
                <Occurrence>
                  <One />
                </Occurrence>
                <Scope>
                  <Dynamic />
                </Scope>
                <DFTitle>ObjectName</DFTitle>
                <DFType>
                  <DDFName />
                </DFType>
                <MSFT:DynamicNodeNaming>
                  <MSFT:ClientInventory />
                </MSFT:DynamicNodeNaming>
              </DFProperties>
              <Node>
                <NodeName>PortNbr</NodeName>
                <DFProperties>
                  <AccessType>
                    <Add />
                    <Get />
                    <Replace />
                  </AccessType>
                  <Description>Specifies the port number of the OMA MD account address. This must be a decimal number that fits within the range of a 16-bit unsigned integer.</Description>
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
                    <MIME />
                  </DFType>
                  <MSFT:AllowedValues ValueType="None">
                  </MSFT:AllowedValues>
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
          <Description>Specifies the application authentication preference. Supported values: BASIC, DIGEST. If this value is empty, the client attempts to use the authentication mechanism negotiated in the previous session if one exists. If the value is empty, no previous session exists, and MD5 credentials exist, clients try MD5 authorization first. If the criteria are not met then the client tries BASIC authorization first.</Description>
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
            <MIME />
          </DFType>
          <MSFT:AllowedValues ValueType="ENUM">
            <MSFT:Enum>
              <MSFT:Value>BASIC</MSFT:Value>
              <MSFT:ValueDescription>The client attempts BASIC authentication.</MSFT:ValueDescription>
            </MSFT:Enum>
            <MSFT:Enum>
              <MSFT:Value>DIGEST</MSFT:Value>
              <MSFT:ValueDescription>The client attempts MD5 authentication.</MSFT:ValueDescription>
            </MSFT:Enum>
          </MSFT:AllowedValues>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>AppAuth</NodeName>
        <DFProperties>
          <AccessType>
            <Add />
            <Get />
          </AccessType>
          <Description>Defines authentication settings.</Description>
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
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>
          </NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Get />
            </AccessType>
            <Description>Defines one set of authentication settings. When mapping the w7 APPLICATION configuration service provider to the DMAcc Configuration Service Provider, the name of this element is same name as the AAuthLevel value ("CLRED" or "SRVCRED").</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <OneOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>ObjectName</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:ClientInventory />
            </MSFT:DynamicNodeNaming>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
          </DFProperties>
          <Node>
            <NodeName>AAuthLevel</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specifies the application authentication level. A value of "CLCRED" indicates that the credentials client will authenticate itself to the OMA DM server at the OMA DM protocol level. A value of "SRVCRED" indicates that the credentials server will authenticate itself to the OMA DM Client at the OMA DM protocol level.</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>CLCRED</MSFT:Value>
                  <MSFT:ValueDescription>The credentials client will authenticate itself to the OMA DM server at the OMA DM protocol level.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>SRVCRED</MSFT:Value>
                  <MSFT:ValueDescription>The credentials server will authenticate itself to the OMA DM Client at the OMA DM protocol level.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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
              <Description>Specifies the authentication type. If AAuthLevel is CLCRED, the supported types include BASIC and DIGEST. If AAuthLevel is SRVCRED, the only supported type is DIGEST.</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>BASIC</MSFT:Value>
                  <MSFT:ValueDescription>BASIC</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>DIGEST</MSFT:Value>
                  <MSFT:ValueDescription>DIGEST</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
              <MSFT:DependencyBehavior>
                <MSFT:DependencyGroup FriendlyId="AAuthlevelDependency">
                  <MSFT:DependencyChangedAllowedValues ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>DIGEST</MSFT:Value>
                      <MSFT:ValueDescription>DIGEST</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyChangedAllowedValues>
                  <MSFT:Dependency Type="DependsOn">
                    <MSFT:DependencyUri>SyncML/DMAcc/{AccountUID}/AppAuth/{ObjectName}/AAuthLevel</MSFT:DependencyUri>
                    <MSFT:DependencyAllowedValue ValueType="ENUM">
                      <MSFT:Enum>
                        <MSFT:Value>SRVCRED</MSFT:Value>
                        <MSFT:ValueDescription>SRVCRED</MSFT:ValueDescription>
                      </MSFT:Enum>
                    </MSFT:DependencyAllowedValue>
                  </MSFT:Dependency>
                </MSFT:DependencyGroup>
              </MSFT:DependencyBehavior>
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
              <Description>Specifies the authentication name.</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AAuthSecret</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Replace />
              </AccessType>
              <Description>Specifies the password or secret used for authentication.</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AAuthData</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Replace />
              </AccessType>
              <Description>Specifies the next nonce used for authentication. "Nonce" refers to a number used once. It is often a random or pseudo-random number issued in an authentication protocol to ensure that old communications cannot be reused in repeat attacks.</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
          <Description>Defines a set of extended parameters. This element holds vendor-specific information about the OMA DM account and is created automatically when the OMA DM account is created.</Description>
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
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>Microsoft</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Defines a set of Microsoft-specific extended parameters. This element is created automatically when the OMA DM account is created.</Description>
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
              <DDFName />
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="Flag">
                <MSFT:Enum>
                  <MSFT:Value>4</MSFT:Value>
                  <MSFT:ValueDescription>SECROLE_OPERATOR</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>8</MSFT:Value>
                  <MSFT:ValueDescription>SECROLE_MANAGER</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>16</MSFT:Value>
                  <MSFT:ValueDescription>SECROLE_USER_AUTH</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>128</MSFT:Value>
                  <MSFT:ValueDescription>SECROLE_OPERATOR_TPS</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>1.1</MSFT:Value>
                  <MSFT:ValueDescription>1.1</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1.2</MSFT:Value>
                  <MSFT:ValueDescription>1.2</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>DefaultEncoding</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Get />
                <Replace />
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>application/vnd.syncml.dm+xml</MSFT:Value>
                  <MSFT:ValueDescription>XML is used</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>application/vnd.syncml.dm+wbxml</MSFT:Value>
                  <MSFT:ValueDescription>WBXML is used</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>UseHwDevID</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>0</DefaultValue>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>An application-specific GUID is returned for the ./DevInfo/DevID rather than the hardware device ID.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>The hardware device ID will be provided for the ./DevInfo/DevID element and the Source LocURI for the OMA DM package that is sent to the server.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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
              <DefaultValue>3</DefaultValue>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
              <DefaultValue>16000</DefaultValue>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
              <DefaultValue>86400000</DefaultValue>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
              <DefaultValue>0</DefaultValue>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>Backward-compatible retries are enabled.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>Backward-compatible retries are disabled.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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
              <DefaultValue>0</DefaultValue>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>The client does not try to authenticate the notification with the backup server nonce if authentication to the stored nonce fails.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>The client initiates a DM session if the backup server nonce is received after authentication failed.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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
              <Description>Allows connection to the DM server to check the Certificate Revocation List (CRL). Set to true to enable SSL revocation.</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>False</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>True</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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
              <Description>Determines whether the OMA DM client should be launched when roaming.</Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>False</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>True</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
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
              <Description><![CDATA[The SSLCLIENTCERTSEARCHCRITERIA parameter is used to specify the client certificate search criteria. This parameter supports search by subject attribute and certificate stores. If any other criteria are provided, it is ignored. The string is a concatenation of name/value pairs, each member of the pair delimited by the "&" character. The name and values are delimited by the "=" character. If there are multiple values, each value is delimited by the Unicode character "U+F000". If the name or value contains characters not in the UNRESERVED set (as specified in RFC2396), then those characters are URI-escaped per the RFC. The supported names are Subject and Stores; wildcard certificate search is not supported. Stores specifies which certificate stores the DM client will search to find the SSL client certificate. The valid store value is My%5CUser. The store name is not case sensitive. Subject specifies the certificate to search for. For example, to specify that you want a certificate with a particular Subject attribute (“CN=Tester,O=Microsoft”), use the following:]]></Description>
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
                <MIME />
              </DFType>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
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
              <DFType>
                <DDFName />
              </DFType>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.1</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="None">
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
        </Node>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[DMAcc configuration service provider reference](dmacc-csp.md)
