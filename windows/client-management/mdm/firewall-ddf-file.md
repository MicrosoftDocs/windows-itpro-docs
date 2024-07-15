---
title: Firewall DDF file
description: View the XML file containing the device description framework (DDF) for the Firewall configuration service provider.
ms.date: 06/28/2024
---

<!-- Auto-Generated CSP Document -->

# Firewall DDF file

The following XML file contains the device description framework (DDF) for the Firewall configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>Firewall</NodeName>
    <Path>./Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <Description>Root node for the Firewall configuration service provider.</Description>
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
        <MSFT:OsBuildVersion>10.0.16299</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x88;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;0xD2;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>MdmStore</NodeName>
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
          <DDFName />
        </DFType>
      </DFProperties>
      <Node>
        <NodeName>Global</NodeName>
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
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>PolicyVersionSupported</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Value that contains the maximum policy version that the server host can accept. The version number is two octets in size. The lowest-order octet is the minor version; the second-to-lowest octet is the major version. This value is not merged and is always a fixed value for a particular firewall and advanced security components software build.</Description>
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
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>CurrentProfiles</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>Value that contains a bitmask of the current enforced profiles that are maintained by the server firewall host. See FW_PROFILE_TYPE for the bitmasks that are used to identify profile types. This value is available only in the dynamic store; therefore, it is not merged and has no merge law.</Description>
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
              <MIME />
            </DFType>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DisableStatefulFtp</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is an on/off switch. If off, the firewall performs stateful File Transfer Protocol (FTP) filtering to allow secondary connections. FALSE means off; TRUE means on, so the stateful FTP is disabled. The merge law for this option is to let "on" values win.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Stateful FTP enabled</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Stateful FTP disabled</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>SaIdleTime</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>300</DefaultValue>
            <Description>This value configures the security association idle time, in seconds. Security associations are deleted after network traffic is not seen for this specified period of time. The value MUST be in the range of 300 to 3,600 inclusive. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, use the local store value.</Description>
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
              <MSFT:Value>[300-3600]</MSFT:Value>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>PresharedKeyEncoding</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>1</DefaultValue>
            <Description>Specifies the preshared key encoding that is used. MUST be a valid value from the PRESHARED_KEY_ENCODING_VALUES enumeration. Default is 1 [UTF-8].  The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, use the local store value.</Description>
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
                <MSFT:Value>0</MSFT:Value>
                <MSFT:ValueDescription>FW_GLOBAL_CONFIG_PRESHARED_KEY_ENCODING_NONE:  Preshared key is not encoded. Instead, it is kept in its wide-character format. This symbolic constant has a value of 0.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>FW_GLOBAL_CONFIG_PRESHARED_KEY_ENCODING_UTF_8:  Encode the preshared key using UTF-8. This symbolic constant has a value of 1.</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>IPsecExempt</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>0x0</DefaultValue>
            <Description>This value configures IPsec exceptions and MUST be a combination of the valid flags that are defined in IPSEC_EXEMPT_VALUES; therefore, the maximum value MUST always be IPSEC_EXEMPT_MAX-1 for servers supporting a schema version of 0x0201 and IPSEC_EXEMPT_MAX_V2_0-1 for servers supporting a schema version of 0x0200. If the maximum value is exceeded when the method RRPC_FWSetGlobalConfig (Opnum 4) is called, the method returns ERROR_INVALID_PARAMETER. This error code is returned if no other preceding error is discovered.   The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, use the local store value.</Description>
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
            <MSFT:AllowedValues ValueType="Flag">
              <MSFT:Enum>
                <MSFT:Value>0x0</MSFT:Value>
                <MSFT:ValueDescription>FW_GLOBAL_CONFIG_IPSEC_EXEMPT_NONE:  No IPsec exemptions.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>0x1</MSFT:Value>
                <MSFT:ValueDescription>FW_GLOBAL_CONFIG_IPSEC_EXEMPT_NEIGHBOR_DISC:  Exempt neighbor discover IPv6 ICMP type-codes from IPsec.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>0x2</MSFT:Value>
                <MSFT:ValueDescription>FW_GLOBAL_CONFIG_IPSEC_EXEMPT_ICMP:  Exempt ICMP from IPsec.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>0x4</MSFT:Value>
                <MSFT:ValueDescription>FW_GLOBAL_CONFIG_IPSEC_EXEMPT_ROUTER_DISC:  Exempt router discover IPv6 ICMP type-codes from IPsec.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>0x8</MSFT:Value>
                <MSFT:ValueDescription>FW_GLOBAL_CONFIG_IPSEC_EXEMPT_DHCP:  Exempt both IPv4 and IPv6 DHCP traffic from IPsec.</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>CRLcheck</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>This value specifies how certificate revocation list (CRL) verification is enforced. The value MUST be 0, 1, or 2. A value of 0 disables CRL checking. A value of 1 specifies that CRL checking is attempted and that certificate validation fails only if the certificate is revoked. Other failures that are encountered during CRL checking (such as the revocation URL being unreachable) do not cause certificate validation to fail. A value of 2 means that checking is required and that certificate validation fails if any error is encountered during CRL processing.  The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, use the local store value.</Description>
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
                <MSFT:Value>0</MSFT:Value>
                <MSFT:ValueDescription>Disables CRL checking</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>Specifies that CRL checking is attempted and that certificate validation fails only if the certificate is revoked. Other failures that are encountered during CRL checking (such as the revocation URL being unreachable) do not cause certificate validation to fail.</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>2</MSFT:Value>
                <MSFT:ValueDescription>Means that checking is required and that certificate validation fails if any error is encountered during CRL processing</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>PolicyVersion</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>This value contains the policy version of the policy store being managed. This value is not merged and therefore, has no merge law.</Description>
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
          </DFProperties>
        </Node>
        <Node>
          <NodeName>BinaryVersionSupported</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>This value contains the binary version of the structures and data types that are supported by the server. This value is not merged. In addition, this value is always a fixed value for a specific firewall and advanced security component's software build. This value identifies a policy configuration option that is supported only on servers that have a schema version of 0x0201.</Description>
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
          </DFProperties>
        </Node>
        <Node>
          <NodeName>OpportunisticallyMatchAuthSetPerKM</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <Description>This value is used as an on/off switch. When this option is false, keying modules MUST ignore the entire authentication set if they do not support all of the authentication suites specified in the set. When this option is true, keying modules MUST ignore only the authentication suites that they don’t support. For schema versions 0x0200, 0x0201, and 0x020A, this value is invalid and MUST NOT be used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>FALSE</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>TRUE</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>EnablePacketQueue</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>0x0</DefaultValue>
            <Description>This value specifies how scaling for the software on the receive side is enabled for both the encrypted receive and clear text forward path for the IPsec tunnel gateway scenario. Use of this option also ensures that the packet order is preserved. The data type for this option value is a integer and is a combination of flags. A value of 0x00 indicates that all queuing is to be disabled. A value of 0x01 specifies that inbound encrypted packets are to be queued. A value of 0x02 specifies that packets are to be queued after decryption is performed for forwarding.</Description>
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
            <MSFT:AllowedValues ValueType="Flag">
              <MSFT:Enum>
                <MSFT:Value>0x0</MSFT:Value>
                <MSFT:ValueDescription>Indicates that all queuing is to be disabled</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>0x1</MSFT:Value>
                <MSFT:ValueDescription>Specifies that inbound encrypted packets are to be queued</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>0x2</MSFT:Value>
                <MSFT:ValueDescription>Specifies that packets are to be queued after decryption is performed for forwarding</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
      </Node>
      <Node>
        <NodeName>DomainProfile</NodeName>
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
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>EnableFirewall</NodeName>
          <DFProperties>
            <AccessType>
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>This value is an on/off switch for the firewall and advanced security enforcement. If this value is false, the server MUST NOT block any network traffic, regardless of other policy settings.  The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Disable Firewall</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DisableStealthMode</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is an on/off switch. When this option is false, the server operates in stealth mode. The firewall rules used to enforce stealth mode are implementation-specific. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Use Stealth Mode</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Disable Stealth Mode</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="EnableFirewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Shielded</NodeName>
          <DFProperties>
            <AccessType>
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is used as an on/off switch. If this value is on and EnableFirewall is on, the server MUST block all incoming traffic regardless of other policy settings.  The merge law for this option is to let "on" values win.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Shielding Off</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Shielding On</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DisableUnicastResponsesToMulticastBroadcast</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is used as an on/off switch. If it is true, unicast responses to multicast broadcast traffic is blocked.  The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Unicast Responses Not Blocked</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Unicast Responses Blocked</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>EnableLogDroppedPackets</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is used as an on/off switch. If this value is on, the firewall logs all the dropped packets. The merge law for this option is to let "on" values win.</Description>
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
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.0</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Disable Logging Of Dropped Packets</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Enable Logging Of Dropped Packets</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>EnableLogSuccessConnections</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is used as an on/off switch. If this value is on, the firewall logs all successful inbound connections. The merge law for this option is to let "on" values win.</Description>
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
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.0</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Disable Logging Of Successful Connections</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Enable Logging Of Successful Connections</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>EnableLogIgnoredRules</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is used as an on/off switch. The server MAY use this value in an implementation-specific way to control logging of events if a rule is not enforced for any reason. The merge law for this option is to let "on" values win.</Description>
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
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.0</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Disable Logging Of Ignored Rules</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Enable Logging Of Ignored Rules</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>LogMaxFileSize</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>1024</DefaultValue>
            <Description>This value specifies the size, in kilobytes, of the log file where dropped packets and successful connections are logged. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured, otherwise the MdmStore value wins if it is configured, otherwise the local store value is used.</Description>
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
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.0</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="Range">
              <MSFT:Value>[0-4294967295]</MSFT:Value>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>LogFilePath</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>%systemroot%\system32\LogFiles\Firewall\pfirewall.log</DefaultValue>
            <Description>This value is a string that represents a file path to the log where the firewall logs dropped packets and successful connections. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured, otherwise the MdmStore value wins if it is configured, otherwise the local store value is used.</Description>
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
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.0</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DisableInboundNotifications</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is an on/off switch. If this value is false, the firewall MAY display a notification to the user when an application is blocked from listening on a port. If this value is on, the firewall MUST NOT display such a notification.  The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Firewall May Display Notification</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Firewall Must Not Display Notification</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>AuthAppsAllowUserPrefMerge</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>This value is used as an on/off switch. If this value is false, authorized application firewall rules in the local store are ignored and not enforced.  The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>AuthAppsAllowUserPrefMerge Off</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>AuthAppsAllowUserPrefMerge On</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>GlobalPortsAllowUserPrefMerge</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>This value is used as an on/off switch. If this value is false, global port firewall rules in the local store are ignored and not enforced. The setting only has meaning if it is set or enumerated in the Group Policy store or if it is enumerated from the GroupPolicyRSoPStore.  The merge law for this option is to let the value GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>GlobalPortsAllowUserPrefMerge Off</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>GlobalPortsAllowUserPrefMerge On</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>AllowLocalPolicyMerge</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>This value is used as an on/off switch. If this value is false, firewall rules from the local store are ignored and not enforced.  The merge law for this option is to always use the value of the GroupPolicyRSoPStore. This value is valid for all schema versions.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>AllowLocalPolicyMerge Off</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>AllowLocalPolicyMerge On</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>AllowLocalIpsecPolicyMerge</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>This value is an on/off switch. If this value is false, connection security rules from the local store are ignored and not enforced, regardless of the schema version and connection security rule version.   The merge law for this option is to always use the value of the GroupPolicyRSoPStore.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>AllowLocalIpsecPolicyMerge Off</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>AllowLocalIpsecPolicyMerge On</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DefaultOutboundAction</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>0</DefaultValue>
            <Description>This value is the action that the firewall does by default (and evaluates at the very end) on outbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 0 [Allow]. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>0</MSFT:Value>
                <MSFT:ValueDescription>Allow Outbound By Default</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>Block Outbound By Default</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DefaultInboundAction</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>1</DefaultValue>
            <Description>This value is the action that the firewall does by default (and evaluates at the very end) on inbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 1 [Block]. The merge law for this option is to let the value of the GroupPolicyRSoPStore.win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>0</MSFT:Value>
                <MSFT:ValueDescription>Allow Inbound By Default</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>Block Inbound By Default</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DisableStealthModeIpsecSecuredPacketExemption</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>This value is an on/off switch. This option is ignored if DisableStealthMode is on. Otherwise, when this option is true, the firewall's stealth mode rules MUST NOT prevent the host computer from responding to unsolicited network traffic if that traffic is secured by IPsec.  The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used. For schema versions 0x0200, 0x0201, and 0x020A, this value is invalid and MUST NOT be used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>FALSE</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>TRUE</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
      </Node>
      <Node>
        <NodeName>PrivateProfile</NodeName>
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
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>EnableFirewall</NodeName>
          <DFProperties>
            <AccessType>
              <Add />
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>This value is an on/off switch for the firewall and advanced security enforcement. If this value is false, the server MUST NOT block any network traffic, regardless of other policy settings.  The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Disable Firewall</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DisableStealthMode</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is an on/off switch. When this option is false, the server operates in stealth mode. The firewall rules used to enforce stealth mode are implementation-specific. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Use Stealth Mode</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Disable Stealth Mode</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Shielded</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is used as an on/off switch. If this value is on and EnableFirewall is on, the server MUST block all incoming traffic regardless of other policy settings.  The merge law for this option is to let "on" values win.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Shielding Off</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Shielding On</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DisableUnicastResponsesToMulticastBroadcast</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is used as an on/off switch. If it is true, unicast responses to multicast broadcast traffic is blocked.  The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Unicast Responses Not Blocked</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Unicast Responses Blocked</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>EnableLogDroppedPackets</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is used as an on/off switch. If this value is on, the firewall logs all the dropped packets. The merge law for this option is to let "on" values win.</Description>
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
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.0</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Disable Logging Of Dropped Packets</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Enable Logging Of Dropped Packets</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>EnableLogSuccessConnections</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is used as an on/off switch. If this value is on, the firewall logs all successful inbound connections. The merge law for this option is to let "on" values win.</Description>
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
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.0</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Disable Logging Of Successful Connections</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Enable Logging Of Successful Connections</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>EnableLogIgnoredRules</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is used as an on/off switch. The server MAY use this value in an implementation-specific way to control logging of events if a rule is not enforced for any reason. The merge law for this option is to let "on" values win.</Description>
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
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.0</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Disable Logging Of Ignored Rules</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Enable Logging Of Ignored Rules</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>LogMaxFileSize</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>1024</DefaultValue>
            <Description>This value specifies the size, in kilobytes, of the log file where dropped packets and successful connections are logged. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured, otherwise the MdmStore value wins if it is configured, otherwise the local store value is used.</Description>
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
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.0</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="Range">
              <MSFT:Value>[0-4294967295]</MSFT:Value>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>LogFilePath</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>%systemroot%\system32\LogFiles\Firewall\pfirewall.log</DefaultValue>
            <Description>This value is a string that represents a file path to the log where the firewall logs dropped packets and successful connections. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured, otherwise the MdmStore value wins if it is configured, otherwise the local store value is used.</Description>
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
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.0</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DisableInboundNotifications</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is an on/off switch. If this value is false, the firewall MAY display a notification to the user when an application is blocked from listening on a port. If this value is on, the firewall MUST NOT display such a notification.  The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Firewall May Display Notification</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Firewall Must Not Display Notification</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>AuthAppsAllowUserPrefMerge</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>This value is used as an on/off switch. If this value is false, authorized application firewall rules in the local store are ignored and not enforced.  The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>AuthAppsAllowUserPrefMerge Off</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>AuthAppsAllowUserPrefMerge On</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>GlobalPortsAllowUserPrefMerge</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>This value is used as an on/off switch. If this value is false, global port firewall rules in the local store are ignored and not enforced. The setting only has meaning if it is set or enumerated in the Group Policy store or if it is enumerated from the GroupPolicyRSoPStore.  The merge law for this option is to let the value GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>GlobalPortsAllowUserPrefMerge Off</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>GlobalPortsAllowUserPrefMerge On</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>AllowLocalPolicyMerge</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>This value is used as an on/off switch. If this value is false, firewall rules from the local store are ignored and not enforced.  The merge law for this option is to always use the value of the GroupPolicyRSoPStore. This value is valid for all schema versions.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>AllowLocalPolicyMerge Off</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>AllowLocalPolicyMerge On</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>AllowLocalIpsecPolicyMerge</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>This value is an on/off switch. If this value is false, connection security rules from the local store are ignored and not enforced, regardless of the schema version and connection security rule version.   The merge law for this option is to always use the value of the GroupPolicyRSoPStore.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>AllowLocalIpsecPolicyMerge Off</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>AllowLocalIpsecPolicyMerge On</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DefaultOutboundAction</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>0</DefaultValue>
            <Description>This value is the action that the firewall does by default (and evaluates at the very end) on outbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 0 [Allow]. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>0</MSFT:Value>
                <MSFT:ValueDescription>Allow Outbound By Default</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>Block Outbound By Default</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DefaultInboundAction</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>1</DefaultValue>
            <Description>This value is the action that the firewall does by default (and evaluates at the very end) on inbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 1 [Block]. The merge law for this option is to let the value of the GroupPolicyRSoPStore.win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>0</MSFT:Value>
                <MSFT:ValueDescription>Allow Inbound By Default</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>Block Inbound By Default</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DisableStealthModeIpsecSecuredPacketExemption</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>This value is an on/off switch. This option is ignored if DisableStealthMode is on. Otherwise, when this option is true, the firewall's stealth mode rules MUST NOT prevent the host computer from responding to unsolicited network traffic if that traffic is secured by IPsec.  The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used. For schema versions 0x0200, 0x0201, and 0x020A, this value is invalid and MUST NOT be used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>FALSE</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>TRUE</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
      </Node>
      <Node>
        <NodeName>PublicProfile</NodeName>
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
            <DDFName />
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>EnableFirewall</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>This value is an on/off switch for the firewall and advanced security enforcement. If this value is false, the server MUST NOT block any network traffic, regardless of other policy settings.  The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Disable Firewall</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DisableStealthMode</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is an on/off switch. When this option is false, the server operates in stealth mode. The firewall rules used to enforce stealth mode are implementation-specific. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Use Stealth Mode</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Disable Stealth Mode</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>Shielded</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is used as an on/off switch. If this value is on and EnableFirewall is on, the server MUST block all incoming traffic regardless of other policy settings.  The merge law for this option is to let "on" values win.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Shielding Off</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Shielding On</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DisableUnicastResponsesToMulticastBroadcast</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is used as an on/off switch. If it is true, unicast responses to multicast broadcast traffic is blocked.  The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Unicast Responses Not Blocked</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Unicast Responses Blocked</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>EnableLogDroppedPackets</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is used as an on/off switch. If this value is on, the firewall logs all the dropped packets. The merge law for this option is to let "on" values win.</Description>
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
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.0</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Disable Logging Of Dropped Packets</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Enable Logging Of Dropped Packets</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>EnableLogSuccessConnections</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is used as an on/off switch. If this value is on, the firewall logs all successful inbound connections. The merge law for this option is to let "on" values win.</Description>
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
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.0</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Disable Logging Of Successful Connections</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Enable Logging Of Successful Connections</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>EnableLogIgnoredRules</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is used as an on/off switch. The server MAY use this value in an implementation-specific way to control logging of events if a rule is not enforced for any reason. The merge law for this option is to let "on" values win.</Description>
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
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.0</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="ENUM">
              <MSFT:Enum>
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Disable Logging Of Ignored Rules</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Enable Logging Of Ignored Rules</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>LogMaxFileSize</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>1024</DefaultValue>
            <Description>This value specifies the size, in kilobytes, of the log file where dropped packets and successful connections are logged. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured, otherwise the MdmStore value wins if it is configured, otherwise the local store value is used.</Description>
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
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.0</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="Range">
              <MSFT:Value>[0-4294967295]</MSFT:Value>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>LogFilePath</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>%systemroot%\system32\LogFiles\Firewall\pfirewall.log</DefaultValue>
            <Description>This value is a string that represents a file path to the log where the firewall logs dropped packets and successful connections. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured, otherwise the MdmStore value wins if it is configured, otherwise the local store value is used.</Description>
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
            <MSFT:Applicability>
              <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
              <MSFT:CspVersion>1.0</MSFT:CspVersion>
            </MSFT:Applicability>
            <MSFT:AllowedValues ValueType="None">
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DisableInboundNotifications</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>false</DefaultValue>
            <Description>This value is an on/off switch. If this value is false, the firewall MAY display a notification to the user when an application is blocked from listening on a port. If this value is on, the firewall MUST NOT display such a notification.  The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>Firewall May Display Notification</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>Firewall Must Not Display Notification</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>AuthAppsAllowUserPrefMerge</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>This value is used as an on/off switch. If this value is false, authorized application firewall rules in the local store are ignored and not enforced.  The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>AuthAppsAllowUserPrefMerge Off</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>AuthAppsAllowUserPrefMerge On</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>GlobalPortsAllowUserPrefMerge</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>This value is used as an on/off switch. If this value is false, global port firewall rules in the local store are ignored and not enforced. The setting only has meaning if it is set or enumerated in the Group Policy store or if it is enumerated from the GroupPolicyRSoPStore.  The merge law for this option is to let the value GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>GlobalPortsAllowUserPrefMerge Off</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>GlobalPortsAllowUserPrefMerge On</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>AllowLocalPolicyMerge</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>This value is used as an on/off switch. If this value is false, firewall rules from the local store are ignored and not enforced.  The merge law for this option is to always use the value of the GroupPolicyRSoPStore. This value is valid for all schema versions.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>AllowLocalPolicyMerge Off</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>AllowLocalPolicyMerge On</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>AllowLocalIpsecPolicyMerge</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>This value is an on/off switch. If this value is false, connection security rules from the local store are ignored and not enforced, regardless of the schema version and connection security rule version.   The merge law for this option is to always use the value of the GroupPolicyRSoPStore.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>AllowLocalIpsecPolicyMerge Off</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>AllowLocalIpsecPolicyMerge On</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DefaultOutboundAction</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>0</DefaultValue>
            <Description>This value is the action that the firewall does by default (and evaluates at the very end) on outbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 0 [Allow]. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>0</MSFT:Value>
                <MSFT:ValueDescription>Allow Outbound By Default</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>Block Outbound By Default</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DefaultInboundAction</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>1</DefaultValue>
            <Description>This value is the action that the firewall does by default (and evaluates at the very end) on inbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 1 [Block]. The merge law for this option is to let the value of the GroupPolicyRSoPStore.win if it is configured; otherwise, the local store value is used.</Description>
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
                <MSFT:Value>0</MSFT:Value>
                <MSFT:ValueDescription>Allow Inbound By Default</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>1</MSFT:Value>
                <MSFT:ValueDescription>Block Inbound By Default</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
        <Node>
          <NodeName>DisableStealthModeIpsecSecuredPacketExemption</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
              <Replace />
            </AccessType>
            <DefaultValue>true</DefaultValue>
            <Description>This value is an on/off switch. This option is ignored if DisableStealthMode is on. Otherwise, when this option is true, the firewall's stealth mode rules MUST NOT prevent the host computer from responding to unsolicited network traffic if that traffic is secured by IPsec.  The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it is configured; otherwise, the local store value is used. For schema versions 0x0200, 0x0201, and 0x020A, this value is invalid and MUST NOT be used.</Description>
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
                <MSFT:Value>false</MSFT:Value>
                <MSFT:ValueDescription>FALSE</MSFT:ValueDescription>
              </MSFT:Enum>
              <MSFT:Enum>
                <MSFT:Value>true</MSFT:Value>
                <MSFT:ValueDescription>TRUE</MSFT:ValueDescription>
              </MSFT:Enum>
            </MSFT:AllowedValues>
            <MSFT:DependencyBehavior>
              <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                <MSFT:Dependency Type="DependsOn">
                  <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall</MSFT:DependencyUri>
                  <MSFT:DependencyAllowedValue ValueType="ENUM">
                    <MSFT:Enum>
                      <MSFT:Value>true</MSFT:Value>
                      <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                    </MSFT:Enum>
                  </MSFT:DependencyAllowedValue>
                </MSFT:Dependency>
              </MSFT:DependencyGroup>
            </MSFT:DependencyBehavior>
          </DFProperties>
        </Node>
      </Node>
      <Node>
        <NodeName>HyperVVMSettings</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>Settings for the Windows Firewall for Hyper-V containers. Each setting applies on a per-VM Creator basis.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrOne />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
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
            <Description>VM Creator ID that these settings apply to. Valid format is a GUID</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>VMCreatorId</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:ServerGeneratedUniqueIdentifier />
            </MSFT:DynamicNodeNaming>
            <MSFT:AllowedValues ValueType="RegEx">
              <MSFT:Value>\{[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}\}</MSFT:Value>
            </MSFT:AllowedValues>
            <MSFT:AtomicRequired />
          </DFProperties>
          <Node>
            <NodeName>EnableFirewall</NodeName>
            <DFProperties>
              <AccessType>
                <Replace />
              </AccessType>
              <DefaultValue>true</DefaultValue>
              <Description>This value is an on/off switch for the Hyper-V Firewall. This value controls the settings for all profiles. It is recommended to instead use the profile setting value under the profile subtree.</Description>
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
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>Disable Hyper-V Firewall</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>Enable Hyper-V Firewall</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>DefaultOutboundAction</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>0</DefaultValue>
              <Description>This value is the action that the Hyper-V Firewall does by default (and evaluates at the very end) on outbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 0 [Allow]. This value controls the settings for all profiles. It is recommended to instead use the profile setting value under the profile subtree.</Description>
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
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>Allow Outbound By Default</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>Block Outbound By Default</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
              <MSFT:DependencyBehavior>
                <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                  <MSFT:Dependency Type="DependsOn">
                    <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/EnableFirewall</MSFT:DependencyUri>
                    <MSFT:DependencyAllowedValue ValueType="ENUM">
                      <MSFT:Enum>
                        <MSFT:Value>true</MSFT:Value>
                        <MSFT:ValueDescription>Enable Hyper-V Firewall</MSFT:ValueDescription>
                      </MSFT:Enum>
                    </MSFT:DependencyAllowedValue>
                  </MSFT:Dependency>
                </MSFT:DependencyGroup>
              </MSFT:DependencyBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>DefaultInboundAction</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>1</DefaultValue>
              <Description>This value is the action that the Hyper-V Firewall does by default (and evaluates at the very end) on inbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 1 [Block]. This value controls the settings for all profiles. It is recommended to instead use the profile setting value under the profile subtree.</Description>
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
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>Allow Inbound By Default</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>Block Inbound By Default</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
              <MSFT:DependencyBehavior>
                <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                  <MSFT:Dependency Type="DependsOn">
                    <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/EnableFirewall</MSFT:DependencyUri>
                    <MSFT:DependencyAllowedValue ValueType="ENUM">
                      <MSFT:Enum>
                        <MSFT:Value>true</MSFT:Value>
                        <MSFT:ValueDescription>Enable Hyper-V Firewall</MSFT:ValueDescription>
                      </MSFT:Enum>
                    </MSFT:DependencyAllowedValue>
                  </MSFT:Dependency>
                </MSFT:DependencyGroup>
              </MSFT:DependencyBehavior>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>EnableLoopback</NodeName>
            <DFProperties>
              <AccessType>
                <Replace />
              </AccessType>
              <DefaultValue>false</DefaultValue>
              <Description>This value is an on/off switch for loopback traffic. This determines if this VM is able to send/receive loopback traffic to other VMs or the host.</Description>
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
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>Disable loopback</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>Enable loopback</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AllowHostPolicyMerge</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>true</DefaultValue>
              <Description>This value is used as an on/off switch. If this value is true, applicable host firewall rules and settings will be applied to Hyper-V Firewall.</Description>
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
                <MIME />
              </DFType>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.25398, 10.0.22621.2352</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.0</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="ENUM">
                <MSFT:Enum>
                  <MSFT:Value>false</MSFT:Value>
                  <MSFT:ValueDescription>AllowHostPolicyMerge Off</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>true</MSFT:Value>
                  <MSFT:ValueDescription>AllowHostPolicyMerge On</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>DomainProfile</NodeName>
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
                <DDFName />
              </DFType>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.25398, 10.0.22621.2352</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.0</MSFT:CspVersion>
              </MSFT:Applicability>
            </DFProperties>
            <Node>
              <NodeName>EnableFirewall</NodeName>
              <DFProperties>
                <AccessType>
                  <Replace />
                </AccessType>
                <DefaultValue>true</DefaultValue>
                <Description>This value is an on/off switch for the Hyper-V Firewall enforcement.</Description>
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
                    <MSFT:Value>false</MSFT:Value>
                    <MSFT:ValueDescription>Disable Firewall</MSFT:ValueDescription>
                  </MSFT:Enum>
                  <MSFT:Enum>
                    <MSFT:Value>true</MSFT:Value>
                    <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DefaultOutboundAction</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                </AccessType>
                <DefaultValue>0</DefaultValue>
                <Description>This value is the action that the Hyper-V Firewall does by default (and evaluates at the very end) on outbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 0 [Allow].</Description>
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
                    <MSFT:Value>0</MSFT:Value>
                    <MSFT:ValueDescription>Allow Outbound By Default</MSFT:ValueDescription>
                  </MSFT:Enum>
                  <MSFT:Enum>
                    <MSFT:Value>1</MSFT:Value>
                    <MSFT:ValueDescription>Block Outbound By Default</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:AllowedValues>
                <MSFT:DependencyBehavior>
                  <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                    <MSFT:Dependency Type="DependsOn">
                      <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/DomainProfile/EnableFirewall</MSFT:DependencyUri>
                      <MSFT:DependencyAllowedValue ValueType="ENUM">
                        <MSFT:Enum>
                          <MSFT:Value>true</MSFT:Value>
                          <MSFT:ValueDescription>Enable Hyper-V Firewall</MSFT:ValueDescription>
                        </MSFT:Enum>
                      </MSFT:DependencyAllowedValue>
                    </MSFT:Dependency>
                  </MSFT:DependencyGroup>
                </MSFT:DependencyBehavior>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DefaultInboundAction</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                </AccessType>
                <DefaultValue>1</DefaultValue>
                <Description>This value is the action that the Hyper-V Firewall does by default (and evaluates at the very end) on inbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 1 [Block].</Description>
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
                    <MSFT:Value>0</MSFT:Value>
                    <MSFT:ValueDescription>Allow Inbound By Default</MSFT:ValueDescription>
                  </MSFT:Enum>
                  <MSFT:Enum>
                    <MSFT:Value>1</MSFT:Value>
                    <MSFT:ValueDescription>Block Inbound By Default</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:AllowedValues>
                <MSFT:DependencyBehavior>
                  <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                    <MSFT:Dependency Type="DependsOn">
                      <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/DomainProfile/EnableFirewall</MSFT:DependencyUri>
                      <MSFT:DependencyAllowedValue ValueType="ENUM">
                        <MSFT:Enum>
                          <MSFT:Value>true</MSFT:Value>
                          <MSFT:ValueDescription>Enable Hyper-V Firewall</MSFT:ValueDescription>
                        </MSFT:Enum>
                      </MSFT:DependencyAllowedValue>
                    </MSFT:Dependency>
                  </MSFT:DependencyGroup>
                </MSFT:DependencyBehavior>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>AllowLocalPolicyMerge</NodeName>
              <DFProperties>
                <AccessType>
                  <Replace />
                </AccessType>
                <DefaultValue>true</DefaultValue>
                <Description>This value is used as an on/off switch. If this value is false, Hyper-V Firewall rules from the local store are ignored and not enforced.</Description>
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
                    <MSFT:Value>false</MSFT:Value>
                    <MSFT:ValueDescription>AllowLocalPolicyMerge Off</MSFT:ValueDescription>
                  </MSFT:Enum>
                  <MSFT:Enum>
                    <MSFT:Value>true</MSFT:Value>
                    <MSFT:ValueDescription>AllowLocalPolicyMerge On</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:AllowedValues>
                <MSFT:DependencyBehavior>
                  <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                    <MSFT:Dependency Type="DependsOn">
                      <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/DomainProfile/EnableFirewall</MSFT:DependencyUri>
                      <MSFT:DependencyAllowedValue ValueType="ENUM">
                        <MSFT:Enum>
                          <MSFT:Value>true</MSFT:Value>
                          <MSFT:ValueDescription>Enable Hyper-V Firewall</MSFT:ValueDescription>
                        </MSFT:Enum>
                      </MSFT:DependencyAllowedValue>
                    </MSFT:Dependency>
                  </MSFT:DependencyGroup>
                </MSFT:DependencyBehavior>
              </DFProperties>
            </Node>
          </Node>
          <Node>
            <NodeName>PrivateProfile</NodeName>
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
                <DDFName />
              </DFType>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.25398, 10.0.22621.2352</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.0</MSFT:CspVersion>
              </MSFT:Applicability>
            </DFProperties>
            <Node>
              <NodeName>EnableFirewall</NodeName>
              <DFProperties>
                <AccessType>
                  <Replace />
                </AccessType>
                <DefaultValue>true</DefaultValue>
                <Description>This value is an on/off switch for the Hyper-V Firewall enforcement.</Description>
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
                    <MSFT:Value>false</MSFT:Value>
                    <MSFT:ValueDescription>Disable Firewall</MSFT:ValueDescription>
                  </MSFT:Enum>
                  <MSFT:Enum>
                    <MSFT:Value>true</MSFT:Value>
                    <MSFT:ValueDescription>Enable Firewall</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DefaultOutboundAction</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                </AccessType>
                <DefaultValue>0</DefaultValue>
                <Description>This value is the action that the Hyper-V Firewall does by default (and evaluates at the very end) on outbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 0 [Allow].</Description>
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
                    <MSFT:Value>0</MSFT:Value>
                    <MSFT:ValueDescription>Allow Outbound By Default</MSFT:ValueDescription>
                  </MSFT:Enum>
                  <MSFT:Enum>
                    <MSFT:Value>1</MSFT:Value>
                    <MSFT:ValueDescription>Block Outbound By Default</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:AllowedValues>
                <MSFT:DependencyBehavior>
                  <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                    <MSFT:Dependency Type="DependsOn">
                      <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/PrivateProfile/EnableFirewall</MSFT:DependencyUri>
                      <MSFT:DependencyAllowedValue ValueType="ENUM">
                        <MSFT:Enum>
                          <MSFT:Value>true</MSFT:Value>
                          <MSFT:ValueDescription>Enable Hyper-V Firewall</MSFT:ValueDescription>
                        </MSFT:Enum>
                      </MSFT:DependencyAllowedValue>
                    </MSFT:Dependency>
                  </MSFT:DependencyGroup>
                </MSFT:DependencyBehavior>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DefaultInboundAction</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                </AccessType>
                <DefaultValue>1</DefaultValue>
                <Description>This value is the action that the Hyper-V Firewall does by default (and evaluates at the very end) on inbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 1 [Block].</Description>
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
                    <MSFT:Value>0</MSFT:Value>
                    <MSFT:ValueDescription>Allow Inbound By Default</MSFT:ValueDescription>
                  </MSFT:Enum>
                  <MSFT:Enum>
                    <MSFT:Value>1</MSFT:Value>
                    <MSFT:ValueDescription>Block Inbound By Default</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:AllowedValues>
                <MSFT:DependencyBehavior>
                  <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                    <MSFT:Dependency Type="DependsOn">
                      <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/PrivateProfile/EnableFirewall</MSFT:DependencyUri>
                      <MSFT:DependencyAllowedValue ValueType="ENUM">
                        <MSFT:Enum>
                          <MSFT:Value>true</MSFT:Value>
                          <MSFT:ValueDescription>Enable Hyper-V Firewall</MSFT:ValueDescription>
                        </MSFT:Enum>
                      </MSFT:DependencyAllowedValue>
                    </MSFT:Dependency>
                  </MSFT:DependencyGroup>
                </MSFT:DependencyBehavior>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>AllowLocalPolicyMerge</NodeName>
              <DFProperties>
                <AccessType>
                  <Replace />
                </AccessType>
                <DefaultValue>true</DefaultValue>
                <Description>This value is used as an on/off switch. If this value is false, Hyper-V Firewall rules from the local store are ignored and not enforced.</Description>
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
                    <MSFT:Value>false</MSFT:Value>
                    <MSFT:ValueDescription>AllowLocalPolicyMerge Off</MSFT:ValueDescription>
                  </MSFT:Enum>
                  <MSFT:Enum>
                    <MSFT:Value>true</MSFT:Value>
                    <MSFT:ValueDescription>AllowLocalPolicyMerge On</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:AllowedValues>
                <MSFT:DependencyBehavior>
                  <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                    <MSFT:Dependency Type="DependsOn">
                      <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/PrivateProfile/EnableFirewall</MSFT:DependencyUri>
                      <MSFT:DependencyAllowedValue ValueType="ENUM">
                        <MSFT:Enum>
                          <MSFT:Value>true</MSFT:Value>
                          <MSFT:ValueDescription>Enable Hyper-V Firewall</MSFT:ValueDescription>
                        </MSFT:Enum>
                      </MSFT:DependencyAllowedValue>
                    </MSFT:Dependency>
                  </MSFT:DependencyGroup>
                </MSFT:DependencyBehavior>
              </DFProperties>
            </Node>
          </Node>
          <Node>
            <NodeName>PublicProfile</NodeName>
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
                <DDFName />
              </DFType>
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.25398, 10.0.22621.2352</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.0</MSFT:CspVersion>
              </MSFT:Applicability>
            </DFProperties>
            <Node>
              <NodeName>EnableFirewall</NodeName>
              <DFProperties>
                <AccessType>
                  <Replace />
                </AccessType>
                <DefaultValue>true</DefaultValue>
                <Description>This value is an on/off switch for the Hyper-V Firewall enforcement.</Description>
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
                    <MSFT:Value>false</MSFT:Value>
                    <MSFT:ValueDescription>Disable Hyper-V Firewall</MSFT:ValueDescription>
                  </MSFT:Enum>
                  <MSFT:Enum>
                    <MSFT:Value>true</MSFT:Value>
                    <MSFT:ValueDescription>Enable Hyper-V Firewall</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DefaultOutboundAction</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                </AccessType>
                <DefaultValue>0</DefaultValue>
                <Description>This value is the action that the Hyper-V Firewall does by default (and evaluates at the very end) on outbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 0 [Allow].</Description>
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
                    <MSFT:Value>0</MSFT:Value>
                    <MSFT:ValueDescription>Allow Outbound By Default</MSFT:ValueDescription>
                  </MSFT:Enum>
                  <MSFT:Enum>
                    <MSFT:Value>1</MSFT:Value>
                    <MSFT:ValueDescription>Block Outbound By Default</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:AllowedValues>
                <MSFT:DependencyBehavior>
                  <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                    <MSFT:Dependency Type="DependsOn">
                      <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/PublicProfile/EnableFirewall</MSFT:DependencyUri>
                      <MSFT:DependencyAllowedValue ValueType="ENUM">
                        <MSFT:Enum>
                          <MSFT:Value>true</MSFT:Value>
                          <MSFT:ValueDescription>Enable Hyper-V Firewall</MSFT:ValueDescription>
                        </MSFT:Enum>
                      </MSFT:DependencyAllowedValue>
                    </MSFT:Dependency>
                  </MSFT:DependencyGroup>
                </MSFT:DependencyBehavior>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DefaultInboundAction</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                </AccessType>
                <DefaultValue>1</DefaultValue>
                <Description>This value is the action that the Hyper-V Firewall does by default (and evaluates at the very end) on inbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 1 [Block].</Description>
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
                    <MSFT:Value>0</MSFT:Value>
                    <MSFT:ValueDescription>Allow Inbound By Default</MSFT:ValueDescription>
                  </MSFT:Enum>
                  <MSFT:Enum>
                    <MSFT:Value>1</MSFT:Value>
                    <MSFT:ValueDescription>Block Inbound By Default</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:AllowedValues>
                <MSFT:DependencyBehavior>
                  <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                    <MSFT:Dependency Type="DependsOn">
                      <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/PublicProfile/EnableFirewall</MSFT:DependencyUri>
                      <MSFT:DependencyAllowedValue ValueType="ENUM">
                        <MSFT:Enum>
                          <MSFT:Value>true</MSFT:Value>
                          <MSFT:ValueDescription>Enable Hyper-V Firewall</MSFT:ValueDescription>
                        </MSFT:Enum>
                      </MSFT:DependencyAllowedValue>
                    </MSFT:Dependency>
                  </MSFT:DependencyGroup>
                </MSFT:DependencyBehavior>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>AllowLocalPolicyMerge</NodeName>
              <DFProperties>
                <AccessType>
                  <Replace />
                </AccessType>
                <DefaultValue>true</DefaultValue>
                <Description>This value is used as an on/off switch. If this value is false, Hyper-V Firewall rules from the local store are ignored and not enforced.</Description>
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
                    <MSFT:Value>false</MSFT:Value>
                    <MSFT:ValueDescription>AllowLocalPolicyMerge Off</MSFT:ValueDescription>
                  </MSFT:Enum>
                  <MSFT:Enum>
                    <MSFT:Value>true</MSFT:Value>
                    <MSFT:ValueDescription>AllowLocalPolicyMerge On</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:AllowedValues>
                <MSFT:DependencyBehavior>
                  <MSFT:DependencyGroup FriendlyId="Enable Firewall">
                    <MSFT:Dependency Type="DependsOn">
                      <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/PublicProfile/EnableFirewall</MSFT:DependencyUri>
                      <MSFT:DependencyAllowedValue ValueType="ENUM">
                        <MSFT:Enum>
                          <MSFT:Value>true</MSFT:Value>
                          <MSFT:ValueDescription>Enable Hyper-V Firewall</MSFT:ValueDescription>
                        </MSFT:Enum>
                      </MSFT:DependencyAllowedValue>
                    </MSFT:Dependency>
                  </MSFT:DependencyGroup>
                </MSFT:DependencyBehavior>
              </DFProperties>
            </Node>
          </Node>
        </Node>
      </Node>
      <Node>
        <NodeName>FirewallRules</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>A list of rules controlling traffic through the Windows Firewall.  Each Rule ID is ORed.  Within each rule ID each Filter type is AND'ed.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrOne />
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
              <Replace />
            </AccessType>
            <Description>Unique alpha numeric identifier for the rule.  The rule name must not include a forward slash (/).</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>FirewallRuleName</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:ServerGeneratedUniqueIdentifier />
            </MSFT:DynamicNodeNaming>
            <MSFT:AllowedValues ValueType="RegEx">
              <MSFT:Value>^[^|/]*$</MSFT:Value>
            </MSFT:AllowedValues>
            <MSFT:AtomicRequired />
          </DFProperties>
          <Node>
            <NodeName>App</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Rules that control connections for an app, program or service.

Specified based on the intersection of the following nodes.

PackageFamilyName
FilePath
FQBN
ServiceName</Description>
              <DFFormat>
                <node />
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
            </DFProperties>
            <Node>
              <NodeName>PackageFamilyName</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>PackageFamilyName - This App/Id value represents the PackageFamilyName of the app. The PackageFamilyName is the unique name of a Microsoft Store application.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>FilePath</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>FilePath - This App/Id value represents the full file path of the app. For example, C:\Windows\System\Notepad.exe.</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Fqbn</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>Fully Qualified Binary Name</Description>
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
              </DFProperties>
            </Node>
            <Node>
              <NodeName>ServiceName</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>This is a service name, and is used in cases when a service, not an application, must be sending or receiving traffic.</Description>
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
              </DFProperties>
            </Node>
          </Node>
          <Node>
            <NodeName>Protocol</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>0-255 number representing the ip protocol (TCP = 6, UDP = 17).  If not specified the default is All.</Description>
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
                <MSFT:Value>[0-255]</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>LocalPortRanges</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>
                    Comma Separated list of ranges for eg. 100-120,200,300-320.  If not specified the default is All.
                    When setting this field in a firewall rule, the protocol field must also be set, to either 6 (TCP) or 17 (UDP).
                  </Description>
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
              <MSFT:AllowedValues ValueType="RegEx">
                <MSFT:Value>^[0-9,-]+$</MSFT:Value>
                <MSFT:List Delimiter="," />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RemotePortRanges</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>
                    Comma Separated list of ranges for eg. 100-120,200,300-320.  If not specified the default is All.
                    When setting this field in a firewall rule, the protocol field must also be set, to either 6 (TCP) or 17 (UDP).
                  </Description>
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
              <MSFT:AllowedValues ValueType="RegEx">
                <MSFT:Value>^[0-9,-]+$</MSFT:Value>
                <MSFT:List Delimiter="," />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>IcmpTypesAndCodes</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>
                    String value. Multiple ICMP type+code pairs can be included in the string by separating each value with a ",". If more than one ICMP type+code pair is specified, the strings must be separated by a comma.
                    To specify all ICMP types and codes, use the "*" character. For specific ICMP types and codes, use the ":" to separate the type and code.
                    The following are valid examples: 3:4 or 1:*. The "*" character can be used to represent any code. The "*" character can't be used to specify any type, examples such as "*:4" or "*:*" are invalid.

                    When setting this field in a firewall rule, the protocol field must also be set, to either 1 (ICMP) or 58 (IPv6-ICMP).
                  </Description>
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
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.20348</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.0</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="None">
                <MSFT:List Delimiter="," />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>LocalAddressRanges</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Consists of one or more comma-delimited tokens specifying the local addresses covered by the rule. "*" is the default value.
Valid tokens include:
"*" indicates any local address. If present, this must be the only token included.

A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask not a network prefix is specified, the subnet mask defaults to 255.255.255.255.
A valid IPv6 address.
An IPv4 address range in the format of "start address - end address" with no spaces included.
An IPv6 address range in the format of "start address - end address" with no spaces included.  If not specified the default is All.</Description>
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
              <MSFT:AllowedValues ValueType="None">
                <MSFT:List Delimiter="," />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RemoteAddressRanges</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Consists of one or more comma-delimited tokens specifying the remote addresses covered by the rule. The default value is "*". Valid tokens include:
"*" indicates any remote address. If present, this must be the only token included.
"Defaultgateway"
"DHCP"
"DNS"
"WINS"
"Intranet"
"RemoteCorpNetwork"
"Internet"
"PlayToRenderers"
"LocalSubnet" indicates any local address on the local subnet. This token is not case-sensitive.
A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask not a network prefix is specified, the subnet mask defaults to 255.255.255.255.
A valid IPv6 address.
An IPv4 address range in the format of "start address - end address" with no spaces included.
An IPv6 address range in the format of "start address - end address" with no spaces included.  If not specified the default is All.</Description>
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
              <MSFT:AllowedValues ValueType="None">
                <MSFT:List Delimiter="," />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RemoteAddressDynamicKeywords</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Comma separated list of Dynamic Keyword Address Ids (GUID strings) specifying the remote addresses covered by the rule.</Description>
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
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.22000, 10.0.19044.1706, 10.0.19043.1706, 10.0.19042.1706</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.0</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="RegEx">
                <MSFT:Value>\{[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}\}</MSFT:Value>
                <MSFT:List Delimiter="," />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Description</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specifies the description of the rule.</Description>
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
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Enabled</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description>Indicates whether the rule is enabled or disabled. If the rule must be enabled, this value must be set to true.
If not specified - a new rule is disabled by default.</Description>
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
                  <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Profiles</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description>Specifies the profiles to which the rule belongs: Domain, Private, Public.  See FW_PROFILE_TYPE for the bitmasks that are used to identify profile types.  If not specified, the default is All.</Description>
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
              <MSFT:AllowedValues ValueType="Flag">
                <MSFT:Enum>
                  <MSFT:Value>0x1</MSFT:Value>
                  <MSFT:ValueDescription>FW_PROFILE_TYPE_DOMAIN:  This value represents the profile for networks that are connected to domains.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>0x2</MSFT:Value>
                  <MSFT:ValueDescription>FW_PROFILE_TYPE_STANDARD:  This value represents the standard profile for networks. These networks are classified as private by the administrators in the server host. The classification happens the first time the host connects to the network. Usually these networks are behind Network Address Translation (NAT) devices, routers, and other edge devices, and they are in a private location, such as a home or an office. AND FW_PROFILE_TYPE_PRIVATE:  This value represents the profile for private networks, which is represented by the same value as that used for FW_PROFILE_TYPE_STANDARD.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>0x4</MSFT:Value>
                  <MSFT:ValueDescription>FW_PROFILE_TYPE_PUBLIC:  This value represents the profile for public networks. These networks are classified as public by the administrators in the server host. The classification happens the first time the host connects to the network. Usually these networks are those at airports, coffee shops, and other public places where the peers in the network or the network administrator are not trusted.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>0x7FFFFFFF</MSFT:Value>
                  <MSFT:ValueDescription>FW_PROFILE_TYPE_ALL:  This value represents all these network sets and any future network sets.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>0x80000000</MSFT:Value>
                  <MSFT:ValueDescription>FW_PROFILE_TYPE_CURRENT:  This value represents the current profiles to which the firewall and advanced security components determine the host is connected at the moment of the call. This value can be specified only in method calls, and it cannot be combined with other flags.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Action</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Specifies the action for the rule.</Description>
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
              <NodeName>Type</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                </AccessType>
                <DefaultValue>1</DefaultValue>
                <Description>Specifies the action the rule enforces:
0 - Block
1 - Allow</Description>
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
                    <MSFT:Value>0</MSFT:Value>
                    <MSFT:ValueDescription>Block</MSFT:ValueDescription>
                  </MSFT:Enum>
                  <MSFT:Enum>
                    <MSFT:Value>1</MSFT:Value>
                    <MSFT:ValueDescription>Allow</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
          </Node>
          <Node>
            <NodeName>Direction</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>OUT</DefaultValue>
              <Description>The rule is enabled based on the traffic direction as following.

IN - the rule applies to inbound traffic.
OUT - the rule applies to outbound traffic.

If not specified the detault is OUT.</Description>
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
                  <MSFT:Value>IN</MSFT:Value>
                  <MSFT:ValueDescription>The rule applies to inbound traffic.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>OUT</MSFT:Value>
                  <MSFT:ValueDescription>The rule applies to outbound traffic.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>InterfaceTypes</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>All</DefaultValue>
              <Description>
                    String value. Multiple interface types can be included in the string by separating each value with a ",". Acceptable values are "RemoteAccess", "Wireless", "Lan", "MBB", and "All".
                    If more than one interface type is specified, the strings must be separated by a comma.
                  </Description>
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
                  <MSFT:Value>RemoteAccess</MSFT:Value>
                  <MSFT:ValueDescription>RemoteAccess</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>Wireless</MSFT:Value>
                  <MSFT:ValueDescription>Wireless</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>Lan</MSFT:Value>
                  <MSFT:ValueDescription>Lan</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>MBB</MSFT:Value>
                  <MSFT:ValueDescription>MobileBroadband</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>All</MSFT:Value>
                  <MSFT:ValueDescription>All</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:List Delimiter="," />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>EdgeTraversal</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Indicates whether edge traversal is enabled or disabled for this rule.

The EdgeTraversal property indicates that specific inbound traffic is allowed to tunnel through NATs and other edge devices using the Teredo tunneling technology. In order for this setting to work correctly, the application or service with the inbound firewall rule needs to support IPv6. The primary application of this setting allows listeners on the host to be globally addressable through a Teredo IPv6 address.

New rules have the EdgeTraversal property disabled by default.
</Description>
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
                  <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>LocalUserAuthorizedList</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specifies the list of authorized local users for the app container.
This is a string in Security Descriptor Definition Language (SDDL) format..</Description>
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
              <MSFT:AllowedValues ValueType="SDDL">
                <MSFT:List Delimiter="," />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>PolicyAppId</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description> Specifies one WDAC tag. This is a string that can contain any alphanumeric character and any of the characters ":", "/", ".", and "_". A PolicyAppId and ServiceName cannot be specified in the same rule. </Description>
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
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.19045.2913, 10.0.22621.1635, 10.0.22000.1880</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.1</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="RegEx">
                <MSFT:Value>^[A-Za-z0-9_.:/]+$</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Status</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Provides information about the specific verrsion of the rule in deployment for monitoring purposes.</Description>
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
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Name</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specifies the friendly name of the firewall rule.</Description>
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
            </DFProperties>
          </Node>
        </Node>
      </Node>
      <Node>
        <NodeName>HyperVFirewallRules</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>A list of rules controlling traffic through the Windows Firewall for Hyper-V containers.  Each Rule ID is ORed.  Within each rule ID each Filter type is AND'ed.</Description>
          <DFFormat>
            <node />
          </DFFormat>
          <Occurrence>
            <ZeroOrOne />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFType>
            <DDFName />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.22621</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
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
            <Description>Unique alpha numeric identifier for the rule.  The rule name must not include a forward slash (/).</Description>
            <DFFormat>
              <node />
            </DFFormat>
            <Occurrence>
              <ZeroOrMore />
            </Occurrence>
            <Scope>
              <Dynamic />
            </Scope>
            <DFTitle>FirewallRuleName</DFTitle>
            <DFType>
              <DDFName />
            </DFType>
            <MSFT:DynamicNodeNaming>
              <MSFT:ServerGeneratedUniqueIdentifier />
            </MSFT:DynamicNodeNaming>
            <MSFT:AllowedValues ValueType="RegEx">
              <MSFT:Value>^[^|/]*$</MSFT:Value>
            </MSFT:AllowedValues>
            <MSFT:AtomicRequired />
          </DFProperties>
          <Node>
            <NodeName>Priority</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>This value represents the order of rule enforcement. A lower priority rule is evaluated first. If not specified, block rules are evaluated before allow rules. If priority is configured, it is highly recommended to configure the value for ALL rules to ensure expected evaluation of rules.</Description>
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
                <MSFT:Value>[0-65535]</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Direction</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>OUT</DefaultValue>
              <Description>The rule is enabled based on the traffic direction as following.

IN - the rule applies to inbound traffic.
OUT - the rule applies to outbound traffic.

If not specified the detault is OUT.</Description>
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
                  <MSFT:Value>IN</MSFT:Value>
                  <MSFT:ValueDescription>The rule applies to inbound traffic.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>OUT</MSFT:Value>
                  <MSFT:ValueDescription>The rule applies to outbound traffic.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>VMCreatorId</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>This field specifies the VM Creator ID that this rule is applicable to. A NULL GUID will result in this rule applying to all VM creators.
                  </Description>
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
              <MSFT:AllowedValues ValueType="RegEx">
                <MSFT:Value>\{[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}\}</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Protocol</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>0-255 number representing the ip protocol (TCP = 6, UDP = 17).  If not specified the default is All.</Description>
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
                <MSFT:Value>[0-255]</MSFT:Value>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>LocalAddressRanges</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Consists of one or more comma-delimited tokens specifying the local addresses covered by the rule. "*" is the default value.
Valid tokens include:
"*" indicates any local address. If present, this must be the only token included.

A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask not a network prefix is specified, the subnet mask defaults to 255.255.255.255.
A valid IPv6 address.
An IPv4 address range in the format of "start address - end address" with no spaces included.
An IPv6 address range in the format of "start address - end address" with no spaces included.  If not specified the default is All.</Description>
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
              <MSFT:AllowedValues ValueType="None">
                <MSFT:List Delimiter="," />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>LocalPortRanges</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Comma Separated list of ranges for eg. 100-120,200,300-320.  If not specified the default is All.</Description>
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
              <MSFT:AllowedValues ValueType="RegEx">
                <MSFT:Value>^[0-9,-]+$</MSFT:Value>
                <MSFT:List Delimiter="," />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RemoteAddressRanges</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Consists of one or more comma-delimited tokens specifying the remote addresses covered by the rule. The default value is "*". Valid tokens include:
"*" indicates any remote address. If present, this must be the only token included.
A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask not a network prefix is specified, the subnet mask defaults to 255.255.255.255.
A valid IPv6 address.
An IPv4 address range in the format of "start address - end address" with no spaces included.
An IPv6 address range in the format of "start address - end address" with no spaces included.  If not specified the default is All.</Description>
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
              <MSFT:AllowedValues ValueType="None">
                <MSFT:List Delimiter="," />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RemotePortRanges</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description> Comma Separated list of ranges for eg. 100-120,200,300-320.  If not specified the default is All.</Description>
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
              <MSFT:AllowedValues ValueType="RegEx">
                <MSFT:Value>^[0-9,-]+$</MSFT:Value>
                <MSFT:List Delimiter="," />
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Action</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <DefaultValue>1</DefaultValue>
              <Description>Specifies the action the rule enforces:
0 - Block
1 - Allow</Description>
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
                  <MSFT:Value>0</MSFT:Value>
                  <MSFT:ValueDescription>Block</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>Allow</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Enabled</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description>Indicates whether the rule is enabled or disabled. If the rule must be enabled, this value must be set to true.
If not specified - a new rule is disabled by default.</Description>
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
                  <MSFT:ValueDescription>Disabled</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>1</MSFT:Value>
                  <MSFT:ValueDescription>Enabled</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Status</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
              </AccessType>
              <Description>Provides information about the specific version of the rule in deployment for monitoring purposes.</Description>
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
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Profiles</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Replace />
              </AccessType>
              <Description>Specifies the profiles to which the rule belongs: Domain, Private, Public.  See FW_PROFILE_TYPE for the bitmasks that are used to identify profile types.  If not specified, the default is All.</Description>
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
              <MSFT:Applicability>
                <MSFT:OsBuildVersion>10.0.25398, 10.0.22621.2352</MSFT:OsBuildVersion>
                <MSFT:CspVersion>1.0</MSFT:CspVersion>
              </MSFT:Applicability>
              <MSFT:AllowedValues ValueType="Flag">
                <MSFT:Enum>
                  <MSFT:Value>0x1</MSFT:Value>
                  <MSFT:ValueDescription>FW_PROFILE_TYPE_DOMAIN:  This value represents the profile for networks that are connected to domains.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>0x2</MSFT:Value>
                  <MSFT:ValueDescription>FW_PROFILE_TYPE_STANDARD:  This value represents the standard profile for networks. These networks are classified as private by the administrators in the server host. The classification happens the first time the host connects to the network. Usually these networks are behind Network Address Translation (NAT) devices, routers, and other edge devices, and they are in a private location, such as a home or an office. AND FW_PROFILE_TYPE_PRIVATE:  This value represents the profile for private networks, which is represented by the same value as that used for FW_PROFILE_TYPE_STANDARD.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>0x4</MSFT:Value>
                  <MSFT:ValueDescription>FW_PROFILE_TYPE_PUBLIC:  This value represents the profile for public networks. These networks are classified as public by the administrators in the server host. The classification happens the first time the host connects to the network. Usually these networks are those at airports, coffee shops, and other public places where the peers in the network or the network administrator are not trusted.</MSFT:ValueDescription>
                </MSFT:Enum>
                <MSFT:Enum>
                  <MSFT:Value>0x7FFFFFFF</MSFT:Value>
                  <MSFT:ValueDescription>FW_PROFILE_TYPE_ALL:  This value represents all these network sets and any future network sets.</MSFT:ValueDescription>
                </MSFT:Enum>
              </MSFT:AllowedValues>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>Name</NodeName>
            <DFProperties>
              <AccessType>
                <Add />
                <Delete />
                <Get />
                <Replace />
              </AccessType>
              <Description>Specifies the friendly name of the Hyper-V Firewall rule.</Description>
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
            </DFProperties>
          </Node>
        </Node>
      </Node>
      <Node>
        <NodeName>DynamicKeywords</NodeName>
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
            <DDFName />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.22000, 10.0.19044.1706, 10.0.19043.1706, 10.0.19042.1706</MSFT:OsBuildVersion>
            <MSFT:CspVersion>1.0</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
        <Node>
          <NodeName>Addresses</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <Description>A list of dynamic keyword addresses for use within firewall rules. Dynamic keyword addresses can either be a simple alias object or fully-qualified domain names which will be autoresolved in the presence of the Microsoft Defender Advanced Threat Protection Service.</Description>
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
              <Description>A unique GUID string identifier for this dynamic keyword address.</Description>
              <DFFormat>
                <node />
              </DFFormat>
              <Occurrence>
                <ZeroOrMore />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFTitle>Id</DFTitle>
              <DFType>
                <DDFName />
              </DFType>
              <MSFT:DynamicNodeNaming>
                <MSFT:ServerGeneratedUniqueIdentifier />
              </MSFT:DynamicNodeNaming>
              <MSFT:AllowedValues ValueType="RegEx">
                <MSFT:Value>\{[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}\}</MSFT:Value>
              </MSFT:AllowedValues>
              <MSFT:AtomicRequired />
            </DFProperties>
            <Node>
              <NodeName>Keyword</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                </AccessType>
                <Description>A String reprsenting keyword. If the AutoResolve value is true, this should be a Fully Qualified Domain name (wildcards accepted, for example "contoso.com" or "*.contoso.com"). If the AutoResolve value is false, then this can be any identifier string.</Description>
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
              <NodeName>Addresses</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                  <Replace />
                </AccessType>
                <Description>Consists of one or more comma-delimited tokens specifying the addresses covered by this keyword. This value should not be set if AutoResolve is true.
                    Valid tokens include:
                    A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask not a network prefix is specified, the subnet mask defaults to 255.255.255.255.
                    A valid IPv6 address.
                    An IPv4 address range in the format of "start address - end address" with no spaces included.
                    An IPv6 address range in the format of "start address - end address" with no spaces included.</Description>
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
                  <DDFName />
                </DFType>
                <MSFT:AllowedValues ValueType="None">
                  <MSFT:List Delimiter="," />
                </MSFT:AllowedValues>
                <MSFT:DependencyBehavior>
                  <MSFT:DependencyGroup FriendlyId="AutoResolve False">
                    <MSFT:Dependency Type="DependsOn">
                      <MSFT:DependencyUri>Vendor/MSFT/Firewall/MdmStore/DynamicKeywords/Addresses/[Id]/AutoResolve</MSFT:DependencyUri>
                      <MSFT:DependencyAllowedValue ValueType="ENUM">
                        <MSFT:Enum>
                          <MSFT:Value>false</MSFT:Value>
                          <MSFT:ValueDescription>AutoResolve False</MSFT:ValueDescription>
                        </MSFT:Enum>
                      </MSFT:DependencyAllowedValue>
                    </MSFT:Dependency>
                  </MSFT:DependencyGroup>
                </MSFT:DependencyBehavior>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>AutoResolve</NodeName>
              <DFProperties>
                <AccessType>
                  <Add />
                  <Delete />
                  <Get />
                </AccessType>
                <DefaultValue>false</DefaultValue>
                <Description>If this flag is set to TRUE, then the 'keyword' field of this object is expected to be a fully qualified domain name, and the addresses will be automatically resolved. This flag should only be set if the Microsoft Defender Advanced Threat Protection Service is present.</Description>
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
                    <MSFT:Value>false</MSFT:Value>
                    <MSFT:ValueDescription>AutoResolve False</MSFT:ValueDescription>
                  </MSFT:Enum>
                  <MSFT:Enum>
                    <MSFT:Value>true</MSFT:Value>
                    <MSFT:ValueDescription>AutoResolve True</MSFT:ValueDescription>
                  </MSFT:Enum>
                </MSFT:AllowedValues>
              </DFProperties>
            </Node>
          </Node>
        </Node>
      </Node>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[Firewall configuration service provider reference](firewall-csp.md)
