---
title: Firewall DDF file
description: Firewall DDF file
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 12/05/2017
ms.reviewer: 
manager: dansimp
---

# Firewall CSP


This topic shows the OMA DM device description framework (DDF) for the **Firewall** configuration service provider. DDF files are used only with OMA DM provisioning XML.

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
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
            <DDFName></DDFName>
          </DFType>
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
              <DDFName></DDFName>
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
                <DDFName></DDFName>
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
                  <MIME>text/plain</MIME>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DisableStatefulFtp</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                  <Delete />
                </AccessType>
                <DefaultValue>FALSE</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>SaIdleTime</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                  <Delete />
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>PresharedKeyEncoding</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                  <Delete />
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>IPsecExempt</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                  <Delete />
                </AccessType>
                <DefaultValue>0</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>CRLcheck</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                  <Delete />
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
                  <MIME>text/plain</MIME>
                </DFType>
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
                  <MIME>text/plain</MIME>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>OpportunisticallyMatchAuthSetPerKM</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                  <Delete />
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>EnablePacketQueue</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                  <Delete />
                </AccessType>
                <DefaultValue>0</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
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
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>EnableFirewall</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>1</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DisableStealthMode</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>0</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Shielded</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                </AccessType>
                <DefaultValue>0</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DisableUnicastResponsesToMulticastBroadcast</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>0</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DisableInboundNotifications</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>0</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>AuthAppsAllowUserPrefMerge</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>1</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>GlobalPortsAllowUserPrefMerge</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>1</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>AllowLocalPolicyMerge</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>1</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>AllowLocalIpsecPolicyMerge</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>1</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DefaultOutboundAction</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DefaultInboundAction</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DisableStealthModeIpsecSecuredPacketExemption</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>1</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
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
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>EnableFirewall</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>1</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DisableStealthMode</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>0</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Shielded</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                </AccessType>
                <DefaultValue>0</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DisableUnicastResponsesToMulticastBroadcast</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>0</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DisableInboundNotifications</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>0</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>AuthAppsAllowUserPrefMerge</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>1</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>GlobalPortsAllowUserPrefMerge</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>1</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>AllowLocalPolicyMerge</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>1</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>AllowLocalIpsecPolicyMerge</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>1</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DefaultOutboundAction</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DefaultInboundAction</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DisableStealthModeIpsecSecuredPacketExemption</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>1</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
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
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
            <Node>
              <NodeName>EnableFirewall</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>1</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DisableStealthMode</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>0</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>Shielded</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                </AccessType>
                <DefaultValue>0</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DisableUnicastResponsesToMulticastBroadcast</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>0</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DisableInboundNotifications</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>0</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>AuthAppsAllowUserPrefMerge</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>1</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>GlobalPortsAllowUserPrefMerge</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>1</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>AllowLocalPolicyMerge</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>1</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>AllowLocalIpsecPolicyMerge</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>1</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DefaultOutboundAction</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DefaultInboundAction</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
            </Node>
            <Node>
              <NodeName>DisableStealthModeIpsecSecuredPacketExemption</NodeName>
              <DFProperties>
                <AccessType>
                  <Get />
                  <Replace />
                  <Add />
                </AccessType>
                <DefaultValue>1</DefaultValue>
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
                  <MIME>text/plain</MIME>
                </DFType>
              </DFProperties>
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
                  <DDFName></DDFName>
                </DFType>
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
                    <DDFName></DDFName>
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
                      <MIME>text/plain</MIME>
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
                      <MIME>text/plain</MIME>
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
                      <MIME>text/plain</MIME>
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
                      <MIME>text/plain</MIME>
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
                    <MIME>text/plain</MIME>
                  </DFType>
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
                    <MIME>text/plain</MIME>
                  </DFType>
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
                    <MIME>text/plain</MIME>
                  </DFType>
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
                    <MIME>text/plain</MIME>
                  </DFType>
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
                    <MIME>text/plain</MIME>
                  </DFType>
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
                    <MIME>text/plain</MIME>
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
                    <MIME>text/plain</MIME>
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
                    <MIME>text/plain</MIME>
                  </DFType>
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
                    <DDFName></DDFName>
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
                      <MIME>text/plain</MIME>
                    </DFType>
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
                  <DefaultValue>IN</DefaultValue>
                  <Description>Comma separated list.  The rule is enabled based on the traffic direction as following.

IN - the rule applies to inbound traffic.
OUT - the rule applies to outbound traffic.

If not specified the detault is IN.</Description>
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
                <NodeName>InterfaceTypes</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Replace />
                  </AccessType>
                  <DefaultValue>All</DefaultValue>
                  <Description>String value. Multiple interface types can be included in the string by separating each value with a ",". Acceptable values are "RemoteAccess", "Wireless", "Lan", "MobileBroadband", and "All".
 If more than one interface type is specified, the strings must be separated by a comma.</Description>
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
                    <MIME>text/plain</MIME>
                  </DFType>
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
                    <MIME>text/plain</MIME>
                  </DFType>
                </DFProperties>
              </Node>
              <Node>
                <NodeName>Name</NodeName>
                <DFProperties>
                  <AccessType>
                    <Get />
                    <Add />
                    <Delete />
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
                  <DFType>
                    <MIME>text/plain</MIME>
                  </DFType>
                </DFProperties>
              </Node>
            </Node>
          </Node>
        </Node>
      </Node>
</MgmtTree>
```
