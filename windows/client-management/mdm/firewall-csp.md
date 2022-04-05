---
title: Firewall CSP
description: The Firewall configuration service provider (CSP) allows the mobile device management (MDM) server to configure the Windows Defender Firewall global settings.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 11/29/2021
ms.reviewer: 
manager: dansimp
---

# Firewall configuration service provider (CSP)

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The Firewall configuration service provider (CSP) allows the mobile device management (MDM) server to configure the Windows Defender Firewall global settings, per profile settings, and the desired set of custom rules to be enforced on the device.  Using the Firewall CSP the IT admin can now manage non-domain devices, and reduce the risk of network security threats across all systems connecting to the corporate network.  This CSP was added Windows 10, version 1709.

Firewall rules in the FirewallRules section must be wrapped in an Atomic block in SyncML, either individually or collectively.

For detailed information on some of the fields below see [[MS-FASP]: Firewall and Advanced Security Protocol documentation](/openspecs/windows_protocols/ms-winerrata/6521c5c4-1f76-4003-9ade-5cccfc27c8ac).

The following shows the Firewall configuration service provider in tree format. 
```
./Vendor/MSFT
Firewall
----
--------Global
------------PolicyVersionSupported
------------CurrentProfiles
------------DisableStatefulFtp
------------SaIdleTime
------------PresharedKeyEncoding
------------IPsecExempt
------------CRLcheck
------------PolicyVersion
------------BinaryVersionSupported
------------OpportunisticallyMatchAuthSetPerKM
------------EnablePacketQueue
--------DomainProfile
------------EnableFirewall
------------DisableStealthMode
------------Shielded
------------DisableUnicastResponsesToMulticastBroadcast
------------DisableInboundNotifications
------------AuthAppsAllowUserPrefMerge
------------GlobalPortsAllowUserPrefMerge
------------AllowLocalPolicyMerge
------------AllowLocalIpsecPolicyMerge
------------DefaultOutboundAction
------------DefaultInboundAction
------------DisableStealthModeIpsecSecuredPacketExemption
--------PrivateProfile
------------EnableFirewall
------------DisableStealthMode
------------Shielded
------------DisableUnicastResponsesToMulticastBroadcast
------------DisableInboundNotifications
------------AuthAppsAllowUserPrefMerge
------------GlobalPortsAllowUserPrefMerge
------------AllowLocalPolicyMerge
------------AllowLocalIpsecPolicyMerge
------------DefaultOutboundAction
------------DefaultInboundAction
------------DisableStealthModeIpsecSecuredPacketExemption
--------PublicProfile
------------EnableFirewall
------------DisableStealthMode
------------Shielded
------------DisableUnicastResponsesToMulticastBroadcast
------------DisableInboundNotifications
------------AuthAppsAllowUserPrefMerge
------------GlobalPortsAllowUserPrefMerge
------------AllowLocalPolicyMerge
------------AllowLocalIpsecPolicyMerge
------------DefaultOutboundAction
------------DefaultInboundAction
------------DisableStealthModeIpsecSecuredPacketExemption
--------FirewallRules
------------FirewallRuleName
----------------App
--------------------PackageFamilyName
--------------------FilePath
--------------------Fqbn
--------------------ServiceName
----------------Protocol
----------------LocalPortRanges
----------------RemotePortRanges
----------------LocalAddressRanges
----------------RemoteAddressRanges
----------------Description
----------------Enabled
----------------Profiles
----------------Action
--------------------Type
----------------Direction
----------------InterfaceTypes
----------------EdgeTraversal
----------------LocalUserAuthorizationList
----------------FriendlyName
----------------Status
----------------Name
```

<a href="" id="--vendor-msft-applocker"></a>**./Vendor/MSFT/Firewall**
Root node for the Firewall configuration service provider.

<a href="" id="mdmstore"></a>**MdmStore**
Interior node.
Supported operation is Get.

<a href="" id="global"></a>**MdmStore/Global**
Interior node.
Supported operations are Get. 

<a href="" id="policyversionsupported"></a>**MdmStore/Global/PolicyVersionSupported**
Integer value that contains the maximum policy version that the server host can accept. The version number is two octets in size. The lowest-order octet is the minor version; the second-to-lowest octet is the major version. This value isn't merged and is always a fixed value for a particular firewall and advanced security components software build.
Value type in integer. Supported operation is Get.

<a href="" id="currentprofiles"></a>**MdmStore/Global/CurrentProfiles**
Integer value that contains a bitmask of the current enforced profiles that are maintained by the server firewall host. See <a href="/openspecs/windows_protocols/ms-fasp/7704e238-174d-4a5e-b809-5f3787dd8acc" data-raw-source="[FW_PROFILE_TYPE](/openspecs/windows_protocols/ms-fasp/7704e238-174d-4a5e-b809-5f3787dd8acc)">FW_PROFILE_TYPE</a> for the bitmasks that are used to identify profile types. This value is available only in the dynamic store; therefore, it isn't merged and has no merge law.
Value type in integer. Supported operation is Get.

<a href="" id="disablestatefulftp"></a>**MdmStore/Global/DisableStatefulFtp**
Boolean value. If false, the firewall performs stateful File Transfer Protocol (FTP) filtering to allow secondary connections. True means stateful FTP is disabled. The merge law for this option is to let "true" values win.
Default value is false.

Data type is bool. Supported operations are Add, Get, Replace, and Delete. 

<a href="" id="saidletime"></a>**MdmStore/Global/SaIdleTime**
This value configures the security association idle time, in seconds. Security associations are deleted after network traffic isn't seen for this specified period of time. The value is integer and MUST be in the range of 300 to 3,600 inclusive. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, use the local store value.
Default value is 300.
Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="presharedkeyencoding"></a>**MdmStore/Global/PresharedKeyEncoding**
Specifies the preshared key encoding that is used. The value is integer and MUST be a valid value from the [PRESHARED_KEY_ENCODING_VALUES enumeration](/openspecs/windows_protocols/ms-fasp/b9d24a5e-7755-4c60-adeb-e0c7a718f909). The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, use the local store value.
Default value is 1.
Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="ipsecexempt"></a>**MdmStore/Global/IPsecExempt**
This value configures IPsec exceptions. The value is integer and MUST be a combination of the valid flags that are defined in [IPSEC_EXEMPT_VALUES](/openspecs/windows_protocols/ms-fasp/7daabd9f-74c3-4295-add6-e2402b01b191); therefore, the maximum value MUST always be IPSEC_EXEMPT_MAX-1 for servers supporting a schema version of 0x0201 and IPSEC_EXEMPT_MAX_V2_0-1 for servers supporting a schema version of 0x0200. If the maximum value is exceeded when the method RRPC_FWSetGlobalConfig (Opnum 4) is called, the method returns ERROR_INVALID_PARAMETER. This error code is returned if no other preceding error is discovered. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, use the local store value.
Default value is 0.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="crlcheck"></a>**MdmStore/Global/CRLcheck**
This value specifies how certificate revocation list (CRL) verification is enforced. The value is integer and MUST be 0, 1, or 2. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, use the local store value. Valid valued:

- 0 disables CRL checking.
- 1 specifies that CRL checking is attempted and that certificate validation fails only if the certificate is revoked. Other failures that are encountered during CRL checking (such as the revocation URL being unreachable) don't cause certificate validation to fail.
- 2 means that checking is required and that certificate validation fails if any error is encountered during CRL processing.

Default value is 0.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="policyversion"></a>**MdmStore/Global/PolicyVersion**
This value contains the policy version of the policy store being managed. This value isn't merged and therefore, has no merge law.
Value type is string. Supported operation is Get.

<a href="" id="binaryversionsupported"></a>**MdmStore/Global/BinaryVersionSupported**
This value contains the binary version of the structures and data types that are supported by the server. This value isn't merged. In addition, this value is always a fixed value for a specific firewall and advanced security component&#39;s software build. This value identifies a policy configuration option that is supported only on servers that have a schema version of 0x0201.
Value type is string. Supported operation is Get.

<a href="" id="opportunisticallymatchauthsetperkm"></a>**MdmStore/Global/OpportunisticallyMatchAuthSetPerKM**
This value is bool used as an on/off switch. When this option is false (off), keying modules MUST ignore the entire authentication set if they don't support all of the authentication suites specified in the set. When this option is true (on), keying modules MUST ignore only the authentication suites that they don’t support. For schema versions 0x0200, 0x0201, and 0x020A, this value is invalid and MUST NOT be used.
Boolean value. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="enablepacketqueue"></a>**MdmStore/Global/EnablePacketQueue**
This value specifies how scaling for the software on the receive side is enabled for both the encrypted receive and clear text forward path for the IPsec tunnel gateway scenario. Use of this option also ensures that the packet order is preserved. The data type for this option value is integer and is a combination of flags. Valid values:

- 0x00 indicates that all queuing is to be disabled
- 0x01 specifies that inbound encrypted packets are to be queued
- 0x02 specifies that packets are to be queued after decryption is performed for forwarding

Default value is 0.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="domainprofile"></a>**MdmStore/DomainProfile**
Interior node. Supported operation is Get.

<a href="" id="privateprofile"></a>**MdmStore/PrivateProfile**
Interior node. Supported operation is Get.

<a href="" id="publicprofile"></a>**MdmStore/PublicProfile**
Interior node. Supported operation is Get.

<a href="" id="enablefirewall"></a>**/EnableFirewall**
Boolean value for the firewall and advanced security enforcement. If this value is false, the server MUST NOT block any network traffic, regardless of other policy settings. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
Default value is true.

Value type is bool. Supported operations are Add, Get and Replace.

<a href="" id="disablestealthmode"></a>**/DisableStealthMode**
Boolean value. When this option is false, the server operates in stealth mode. The firewall rules used to enforce stealth mode are implementation-specific. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
Default value is false.

Value type is bool. Supported operations are Add, Get and Replace.

<a href="" id="shielded"></a>**/Shielded**
Boolean value. If this value is true and EnableFirewall is on, the server MUST block all incoming traffic regardless of other policy settings. The merge law for this option is to let "true" values win.
Default value is false.

Value type is bool. Supported operations are Get and Replace.

<a href="" id="disableunicastresponsestomulticastbroadcast"></a>**/DisableUnicastResponsesToMulticastBroadcast**
Boolean value. If it's true, unicast responses to multicast broadcast traffic are blocked. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
Default value is false.

Value type is bool. Supported operations are Add, Get and Replace.

<a href="" id="disableinboundnotifications"></a>**/DisableInboundNotifications**
Boolean value. If this value is false, the firewall MAY display a notification to the user when an application is blocked from listening on a port.  If this value is on, the firewall MUST NOT display such a notification. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
Default value is false.

Value type is bool. Supported operations are Add, Get and Replace.

<a href="" id="authappsallowuserprefmerge"></a>**/AuthAppsAllowUserPrefMerge**
Boolean value. If this value is false, authorized application firewall rules in the local store are ignored and not enforced. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
Default value is true.

Value type is bool. Supported operations are Add, Get and Replace.

<a href="" id="globalportsallowuserprefmerge"></a>**/GlobalPortsAllowUserPrefMerge**
Boolean value. If this value is false, global port firewall rules in the local store are ignored and not enforced. The setting only has meaning if it's set or enumerated in the Group Policy store or if it's enumerated from the GroupPolicyRSoPStore. The merge law for this option is to let the value GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
Default value is true.

Value type is bool. Supported operations are Add, Get and Replace.

<a href="" id="allowlocalpolicymerge"></a>**/AllowLocalPolicyMerge**
Boolean value. If this value is false, firewall rules from the local store are ignored and not enforced. The merge law for this option is to always use the value of the GroupPolicyRSoPStore. This value is valid for all schema versions.
Default value is true.

Value type is bool. Supported operations are Add, Get and Replace.

<a href="" id="allowlocalipsecpolicymerge"></a>**/AllowLocalIpsecPolicyMerge**
Boolean value. If this value is false, connection security rules from the local store are ignored and not enforced, regardless of the schema version and connection security rule version. The merge law for this option is to always use the value of the GroupPolicyRSoPStore.
Default value is true.

Value type is bool. Supported operations are Add, Get and Replace.

<a href="" id="defaultoutboundaction"></a>**/DefaultOutboundAction**
This value is the action that the firewall does by default (and evaluates at the very end) on outbound connections. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used. DefaultOutboundAction will block all outbound traffic unless it's explicitly specified not to block.

- 0x00000000 - allow
- 0x00000001 - block

Default value is 0 (allow).

Value type is integer. Supported operations are Add, Get and Replace.

Sample syncxml to provision the firewall settings to evaluate

```xml
<?xml version="1.0" encoding="utf-8"?>
<SyncML xmlns="SYNCML:SYNCML1.1">
<SyncBody>
    <!-- Block Outbound by default -->
    <Add>
      <CmdID>2010</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/Firewall/MdmStore/DomainProfile/DefaultOutboundAction</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
        </Meta>
        <Data>1</Data>
      </Item>
    </Add>
<Final/>
</SyncBody>
</SyncML>

```

<a href="" id="defaultinboundaction"></a>**/DefaultInboundAction**
This value is the action that the firewall does by default (and evaluates at the very end) on inbound connections. The merge law for this option is to let the value of the GroupPolicyRSoPStore.win if it's configured; otherwise, the local store value is used.

- 0x00000000 - allow
- 0x00000001 - block

Default value is 1 (block).
Value type is integer. Supported operations are Add, Get and Replace.

<a href="" id="disablestealthmodeipsecsecuredpacketexemption"></a>**/DisableStealthModeIpsecSecuredPacketExemption**
Boolean value. This option is ignored if DisableStealthMode is true. Otherwise, when this option is true, the firewall&#39;s stealth mode rules MUST NOT prevent the host computer from responding to unsolicited network traffic if that traffic is secured by IPsec. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used. For schema versions 0x0200, 0x0201, and 0x020A, this value is invalid and MUST NOT be used.
Default value is true.

Value type is bool. Supported operations are Add, Get and Replace.

<a href="" id="firewallrules"></a>**FirewallRules**
A list of rules controlling traffic through the Windows Firewall.  Each Rule ID is OR&#39;ed.  Within each rule ID each Filter type is AND&#39;ed.

<a href="" id="firewallrulename"></a>**FirewallRules/_FirewallRuleName_**
Unique alpha numeric identifier for the rule.  The rule name must not include a forward slash (/).
Supported operations are Add, Get, Replace, and Delete.

<a href="" id="app"></a>**FirewallRules/_FirewallRuleName_/App**
Rules that control connections for an app, program, or service. Specified based on the intersection of the following nodes:

- PackageFamilyName
- FilePath
- FQBN
- ServiceName

If not specified, the default is All.
Supported operation is Get.

<a href="" id="packagefamilyname"></a>**FirewallRules/_FirewallRuleName_/App/PackageFamilyName**
This App/Id value represents the PackageFamilyName of the app. The PackageFamilyName is the unique name of a Microsoft Store application.
Value type is string. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="filepath"></a>**FirewallRules/_FirewallRuleName_/App/FilePath**
This App/Id value represents the full file path of the app. For example, C:\Windows\System\Notepad.exe.
Value type is string. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="fqbn"></a>**FirewallRules/_FirewallRuleName_/App/Fqbn**
Fully Qualified Binary Name
Value type is string. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="servicename"></a>**FirewallRules/_FirewallRuleName_/App/ServiceName**
This is a service name used in cases when a service, not an application, is sending or receiving traffic.
Value type is string. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="protocol"></a>**FirewallRules/_FirewallRuleName_/Protocol**
0-255 number representing the ip protocol (TCP = 6, UDP = 17)
If not specified, the default is All.
Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="localportranges"></a>**FirewallRules/_FirewallRuleName_/LocalPortRanges**
Comma separated list of ranges. For example, 100-120,200,300-320.
If not specified, the default is All.
Value type is string. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="remoteportranges"></a>**FirewallRules/_FirewallRuleName_/RemotePortRanges**
Comma separated list of ranges, For example, 100-120,200,300-320.
If not specified, the default is All.
Value type is string. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="localaddressranges"></a>**FirewallRules/*FirewallRuleName*/LocalAddressRanges**
Comma separated list of local addresses covered by the rule. The default value is "*". Valid tokens include:

- "*" indicates any local address. If present, this must be the only token included.
- A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask nor a network prefix is specified, the subnet mask defaults to 255.255.255.255.
- A valid IPv6 address.
- An IPv4 address range in the format of "start address - end address" with no spaces included.
- An IPv6 address range in the format of "start address - end address" with no spaces included.

If not specified, the default is All.
Value type is string. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="remoteaddressranges"></a>**FirewallRules/*FirewallRuleName*/RemoteAddressRanges**
List of comma separated tokens specifying the remote addresses covered by the rule. The default value is "*". Valid tokens include:

- "*" indicates any remote address. If present, this must be the only token included.
- "Defaultgateway"
- "DHCP"
- "DNS"
- "WINS"
- "Intranet"
- "RmtIntranet"
- "Internet"
- "Ply2Renders"
- "LocalSubnet" indicates any local address on the local subnet. This token is not case-sensitive.
- A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask not a network prefix is specified, the subnet mask defaults to 255.255.255.255.
- A valid IPv6 address.
- An IPv4 address range in the format of "start address - end address" with no spaces included.
- An IPv6 address range in the format of "start address - end address" with no spaces included.

If not specified, the default is All.
Value type is string. Supported operations are Add, Get, Replace, and Delete.
The tokens "Intranet", "RmtIntranet", "Internet" and "Ply2Renders" are supported on Windows 10, version 1809, and later.

<a href="" id="description"></a>**FirewallRules/_FirewallRuleName_/Description**
Specifies the description of the rule.
Value type is string. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="enabled"></a>**FirewallRules/_FirewallRuleName_/Enabled**
Indicates whether the rule is enabled or disabled. If the rule must be enabled, this value must be set to true.
If not specified - a new rule is enabled by default.
Boolean value. Supported operations are Get and Replace.

<a href="" id="profiles"></a>**FirewallRules/_FirewallRuleName_/Profiles**
Specifies the profiles to which the rule belongs: Domain, Private, Public. .  See [FW_PROFILE_TYPE](/openspecs/windows_protocols/ms-fasp/7704e238-174d-4a5e-b809-5f3787dd8acc) for the bitmasks that are used to identify profile types.
If not specified, the default is All.
Value type is integer. Supported operations are Get and Replace.

<a href="" id="action"></a>**FirewallRules/_FirewallRuleName_/Action**
Specifies the action for the rule.
Supported operation is Get.

<a href="" id="type"></a>**FirewallRules/_FirewallRuleName_/Action/Type**
Specifies the action the rule enforces. Supported values:

- 0 - Block
- 1 - Allow

If not specified, the default is allow.
Value type is integer. Supported operations are Get and Replace.

<a href="" id="direction"></a>**FirewallRules/_FirewallRuleName_/Direction**
The rule is enabled based on the traffic direction as following. Supported values:

- IN - the rule applies to inbound traffic.
- OUT - the rule applies to outbound traffic.
- If not specified, the default is Out.

Value type is string. Supported operations are Get and Replace.

<a href="" id="interfacetypes"></a>**FirewallRules/_FirewallRuleName_/InterfaceTypes**
Comma separated list of interface types. Valid values:

- RemoteAccess
- Wireless
- Lan

If not specified, the default is All.
Value type is string. Supported operations are Get and Replace.

<a href="" id="edgetraversal"></a>**FirewallRules/_FirewallRuleName_/EdgeTraversal**
Indicates whether edge traversal is enabled or disabled for this rule.
The EdgeTraversal setting indicates that specific inbound traffic is allowed to tunnel through NATs and other edge devices using the Teredo tunneling technology. In order for this setting to work correctly, the application or service with the inbound firewall rule needs to support IPv6. The primary application of this setting allows listeners on the host to be globally addressable through a Teredo IPv6 address.
New rules have the EdgeTraversal property disabled by default.
Value type is bool. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="localuserauthorizedlist"></a>**FirewallRules/_FirewallRuleName_/LocalUserAuthorizationList**
Specifies the list of authorized local users for this rule. This is a string in Security Descriptor Definition Language (SDDL) format.
Value type is string. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="status"></a>**FirewallRules/_FirewallRuleName_/Status**
Provides information about the specific version of the rule in deployment for monitoring purposes.
Value type is string. Supported operation is Get.

<a href="" id="name"></a>**FirewallRules/_FirewallRuleName_/Name**
Name of the rule.
Value type is string. Supported operations are Add, Get, Replace, and Delete.

## Related topics

[Configuration service provider reference](configuration-service-provider-reference.md)