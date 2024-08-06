---
title: Firewall CSP
description: Learn more about the Firewall CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Firewall-Begin -->
# Firewall CSP

<!-- Firewall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The Firewall configuration service provider (CSP) allows the mobile device management (MDM) server to configure the Windows Defender Firewall global settings, per profile settings, and the desired set of custom rules to be enforced on the device. Using the Firewall CSP the IT admin can now manage non-domain devices, and reduce the risk of network security threats across all systems connecting to the corporate network.

> [!NOTE]
> Firewall rules in the FirewallRules section must be wrapped in an Atomic block in SyncML, either individually or collectively.
>
> Atomic blocks are "all or nothing." If a firewall rule or firewall setting in an Atomic block fails to be applied, the entire Atomic block fails to be applied.
>
> If an Atomic block contains a firewall rule or firewall setting that is not supported on a particular Windows OS version, the entire Atomic block fails to be applied on that Windows version. For example, firewall rules with IcmpTypesAndCodes are only supported on Windows 11, applying an Atomic block that contains a rule with IcmpTypesAndCodes on Windows 10 fails.

For detailed information on some of the fields below, see [[MS-FASP]: Firewall and Advanced Security Protocol documentation](/openspecs/windows_protocols/ms-winerrata/6521c5c4-1f76-4003-9ade-5cccfc27c8ac).
<!-- Firewall-Editable-End -->

<!-- Firewall-Tree-Begin -->
The following list shows the Firewall configuration service provider nodes:

- ./Vendor/MSFT/Firewall
  - [MdmStore](#mdmstore)
    - [DomainProfile](#mdmstoredomainprofile)
      - [AllowLocalIpsecPolicyMerge](#mdmstoredomainprofileallowlocalipsecpolicymerge)
      - [AllowLocalPolicyMerge](#mdmstoredomainprofileallowlocalpolicymerge)
      - [AuthAppsAllowUserPrefMerge](#mdmstoredomainprofileauthappsallowuserprefmerge)
      - [DefaultInboundAction](#mdmstoredomainprofiledefaultinboundaction)
      - [DefaultOutboundAction](#mdmstoredomainprofiledefaultoutboundaction)
      - [DisableInboundNotifications](#mdmstoredomainprofiledisableinboundnotifications)
      - [DisableStealthMode](#mdmstoredomainprofiledisablestealthmode)
      - [DisableStealthModeIpsecSecuredPacketExemption](#mdmstoredomainprofiledisablestealthmodeipsecsecuredpacketexemption)
      - [DisableUnicastResponsesToMulticastBroadcast](#mdmstoredomainprofiledisableunicastresponsestomulticastbroadcast)
      - [EnableFirewall](#mdmstoredomainprofileenablefirewall)
      - [EnableLogDroppedPackets](#mdmstoredomainprofileenablelogdroppedpackets)
      - [EnableLogIgnoredRules](#mdmstoredomainprofileenablelogignoredrules)
      - [EnableLogSuccessConnections](#mdmstoredomainprofileenablelogsuccessconnections)
      - [GlobalPortsAllowUserPrefMerge](#mdmstoredomainprofileglobalportsallowuserprefmerge)
      - [LogFilePath](#mdmstoredomainprofilelogfilepath)
      - [LogMaxFileSize](#mdmstoredomainprofilelogmaxfilesize)
      - [Shielded](#mdmstoredomainprofileshielded)
    - [DynamicKeywords](#mdmstoredynamickeywords)
      - [Addresses](#mdmstoredynamickeywordsaddresses)
        - [{Id}](#mdmstoredynamickeywordsaddressesid)
          - [Addresses](#mdmstoredynamickeywordsaddressesidaddresses)
          - [AutoResolve](#mdmstoredynamickeywordsaddressesidautoresolve)
          - [Keyword](#mdmstoredynamickeywordsaddressesidkeyword)
    - [FirewallRules](#mdmstorefirewallrules)
      - [{FirewallRuleName}](#mdmstorefirewallrulesfirewallrulename)
        - [Action](#mdmstorefirewallrulesfirewallrulenameaction)
          - [Type](#mdmstorefirewallrulesfirewallrulenameactiontype)
        - [App](#mdmstorefirewallrulesfirewallrulenameapp)
          - [FilePath](#mdmstorefirewallrulesfirewallrulenameappfilepath)
          - [Fqbn](#mdmstorefirewallrulesfirewallrulenameappfqbn)
          - [PackageFamilyName](#mdmstorefirewallrulesfirewallrulenameapppackagefamilyname)
          - [ServiceName](#mdmstorefirewallrulesfirewallrulenameappservicename)
        - [Description](#mdmstorefirewallrulesfirewallrulenamedescription)
        - [Direction](#mdmstorefirewallrulesfirewallrulenamedirection)
        - [EdgeTraversal](#mdmstorefirewallrulesfirewallrulenameedgetraversal)
        - [Enabled](#mdmstorefirewallrulesfirewallrulenameenabled)
        - [IcmpTypesAndCodes](#mdmstorefirewallrulesfirewallrulenameicmptypesandcodes)
        - [InterfaceTypes](#mdmstorefirewallrulesfirewallrulenameinterfacetypes)
        - [LocalAddressRanges](#mdmstorefirewallrulesfirewallrulenamelocaladdressranges)
        - [LocalPortRanges](#mdmstorefirewallrulesfirewallrulenamelocalportranges)
        - [LocalUserAuthorizedList](#mdmstorefirewallrulesfirewallrulenamelocaluserauthorizedlist)
        - [Name](#mdmstorefirewallrulesfirewallrulenamename)
        - [PolicyAppId](#mdmstorefirewallrulesfirewallrulenamepolicyappid)
        - [Profiles](#mdmstorefirewallrulesfirewallrulenameprofiles)
        - [Protocol](#mdmstorefirewallrulesfirewallrulenameprotocol)
        - [RemoteAddressDynamicKeywords](#mdmstorefirewallrulesfirewallrulenameremoteaddressdynamickeywords)
        - [RemoteAddressRanges](#mdmstorefirewallrulesfirewallrulenameremoteaddressranges)
        - [RemotePortRanges](#mdmstorefirewallrulesfirewallrulenameremoteportranges)
        - [Status](#mdmstorefirewallrulesfirewallrulenamestatus)
    - [Global](#mdmstoreglobal)
      - [BinaryVersionSupported](#mdmstoreglobalbinaryversionsupported)
      - [CRLcheck](#mdmstoreglobalcrlcheck)
      - [CurrentProfiles](#mdmstoreglobalcurrentprofiles)
      - [DisableStatefulFtp](#mdmstoreglobaldisablestatefulftp)
      - [EnablePacketQueue](#mdmstoreglobalenablepacketqueue)
      - [IPsecExempt](#mdmstoreglobalipsecexempt)
      - [OpportunisticallyMatchAuthSetPerKM](#mdmstoreglobalopportunisticallymatchauthsetperkm)
      - [PolicyVersion](#mdmstoreglobalpolicyversion)
      - [PolicyVersionSupported](#mdmstoreglobalpolicyversionsupported)
      - [PresharedKeyEncoding](#mdmstoreglobalpresharedkeyencoding)
      - [SaIdleTime](#mdmstoreglobalsaidletime)
    - [HyperVFirewallRules](#mdmstorehypervfirewallrules)
      - [{FirewallRuleName}](#mdmstorehypervfirewallrulesfirewallrulename)
        - [Action](#mdmstorehypervfirewallrulesfirewallrulenameaction)
        - [Direction](#mdmstorehypervfirewallrulesfirewallrulenamedirection)
        - [Enabled](#mdmstorehypervfirewallrulesfirewallrulenameenabled)
        - [LocalAddressRanges](#mdmstorehypervfirewallrulesfirewallrulenamelocaladdressranges)
        - [LocalPortRanges](#mdmstorehypervfirewallrulesfirewallrulenamelocalportranges)
        - [Name](#mdmstorehypervfirewallrulesfirewallrulenamename)
        - [Priority](#mdmstorehypervfirewallrulesfirewallrulenamepriority)
        - [Profiles](#mdmstorehypervfirewallrulesfirewallrulenameprofiles)
        - [Protocol](#mdmstorehypervfirewallrulesfirewallrulenameprotocol)
        - [RemoteAddressRanges](#mdmstorehypervfirewallrulesfirewallrulenameremoteaddressranges)
        - [RemotePortRanges](#mdmstorehypervfirewallrulesfirewallrulenameremoteportranges)
        - [Status](#mdmstorehypervfirewallrulesfirewallrulenamestatus)
        - [VMCreatorId](#mdmstorehypervfirewallrulesfirewallrulenamevmcreatorid)
    - [HyperVVMSettings](#mdmstorehypervvmsettings)
      - [{VMCreatorId}](#mdmstorehypervvmsettingsvmcreatorid)
        - [AllowHostPolicyMerge](#mdmstorehypervvmsettingsvmcreatoridallowhostpolicymerge)
        - [DefaultInboundAction](#mdmstorehypervvmsettingsvmcreatoriddefaultinboundaction)
        - [DefaultOutboundAction](#mdmstorehypervvmsettingsvmcreatoriddefaultoutboundaction)
        - [DomainProfile](#mdmstorehypervvmsettingsvmcreatoriddomainprofile)
          - [AllowLocalPolicyMerge](#mdmstorehypervvmsettingsvmcreatoriddomainprofileallowlocalpolicymerge)
          - [DefaultInboundAction](#mdmstorehypervvmsettingsvmcreatoriddomainprofiledefaultinboundaction)
          - [DefaultOutboundAction](#mdmstorehypervvmsettingsvmcreatoriddomainprofiledefaultoutboundaction)
          - [EnableFirewall](#mdmstorehypervvmsettingsvmcreatoriddomainprofileenablefirewall)
        - [EnableFirewall](#mdmstorehypervvmsettingsvmcreatoridenablefirewall)
        - [EnableLoopback](#mdmstorehypervvmsettingsvmcreatoridenableloopback)
        - [PrivateProfile](#mdmstorehypervvmsettingsvmcreatoridprivateprofile)
          - [AllowLocalPolicyMerge](#mdmstorehypervvmsettingsvmcreatoridprivateprofileallowlocalpolicymerge)
          - [DefaultInboundAction](#mdmstorehypervvmsettingsvmcreatoridprivateprofiledefaultinboundaction)
          - [DefaultOutboundAction](#mdmstorehypervvmsettingsvmcreatoridprivateprofiledefaultoutboundaction)
          - [EnableFirewall](#mdmstorehypervvmsettingsvmcreatoridprivateprofileenablefirewall)
        - [PublicProfile](#mdmstorehypervvmsettingsvmcreatoridpublicprofile)
          - [AllowLocalPolicyMerge](#mdmstorehypervvmsettingsvmcreatoridpublicprofileallowlocalpolicymerge)
          - [DefaultInboundAction](#mdmstorehypervvmsettingsvmcreatoridpublicprofiledefaultinboundaction)
          - [DefaultOutboundAction](#mdmstorehypervvmsettingsvmcreatoridpublicprofiledefaultoutboundaction)
          - [EnableFirewall](#mdmstorehypervvmsettingsvmcreatoridpublicprofileenablefirewall)
    - [PrivateProfile](#mdmstoreprivateprofile)
      - [AllowLocalIpsecPolicyMerge](#mdmstoreprivateprofileallowlocalipsecpolicymerge)
      - [AllowLocalPolicyMerge](#mdmstoreprivateprofileallowlocalpolicymerge)
      - [AuthAppsAllowUserPrefMerge](#mdmstoreprivateprofileauthappsallowuserprefmerge)
      - [DefaultInboundAction](#mdmstoreprivateprofiledefaultinboundaction)
      - [DefaultOutboundAction](#mdmstoreprivateprofiledefaultoutboundaction)
      - [DisableInboundNotifications](#mdmstoreprivateprofiledisableinboundnotifications)
      - [DisableStealthMode](#mdmstoreprivateprofiledisablestealthmode)
      - [DisableStealthModeIpsecSecuredPacketExemption](#mdmstoreprivateprofiledisablestealthmodeipsecsecuredpacketexemption)
      - [DisableUnicastResponsesToMulticastBroadcast](#mdmstoreprivateprofiledisableunicastresponsestomulticastbroadcast)
      - [EnableFirewall](#mdmstoreprivateprofileenablefirewall)
      - [EnableLogDroppedPackets](#mdmstoreprivateprofileenablelogdroppedpackets)
      - [EnableLogIgnoredRules](#mdmstoreprivateprofileenablelogignoredrules)
      - [EnableLogSuccessConnections](#mdmstoreprivateprofileenablelogsuccessconnections)
      - [GlobalPortsAllowUserPrefMerge](#mdmstoreprivateprofileglobalportsallowuserprefmerge)
      - [LogFilePath](#mdmstoreprivateprofilelogfilepath)
      - [LogMaxFileSize](#mdmstoreprivateprofilelogmaxfilesize)
      - [Shielded](#mdmstoreprivateprofileshielded)
    - [PublicProfile](#mdmstorepublicprofile)
      - [AllowLocalIpsecPolicyMerge](#mdmstorepublicprofileallowlocalipsecpolicymerge)
      - [AllowLocalPolicyMerge](#mdmstorepublicprofileallowlocalpolicymerge)
      - [AuthAppsAllowUserPrefMerge](#mdmstorepublicprofileauthappsallowuserprefmerge)
      - [DefaultInboundAction](#mdmstorepublicprofiledefaultinboundaction)
      - [DefaultOutboundAction](#mdmstorepublicprofiledefaultoutboundaction)
      - [DisableInboundNotifications](#mdmstorepublicprofiledisableinboundnotifications)
      - [DisableStealthMode](#mdmstorepublicprofiledisablestealthmode)
      - [DisableStealthModeIpsecSecuredPacketExemption](#mdmstorepublicprofiledisablestealthmodeipsecsecuredpacketexemption)
      - [DisableUnicastResponsesToMulticastBroadcast](#mdmstorepublicprofiledisableunicastresponsestomulticastbroadcast)
      - [EnableFirewall](#mdmstorepublicprofileenablefirewall)
      - [EnableLogDroppedPackets](#mdmstorepublicprofileenablelogdroppedpackets)
      - [EnableLogIgnoredRules](#mdmstorepublicprofileenablelogignoredrules)
      - [EnableLogSuccessConnections](#mdmstorepublicprofileenablelogsuccessconnections)
      - [GlobalPortsAllowUserPrefMerge](#mdmstorepublicprofileglobalportsallowuserprefmerge)
      - [LogFilePath](#mdmstorepublicprofilelogfilepath)
      - [LogMaxFileSize](#mdmstorepublicprofilelogmaxfilesize)
      - [Shielded](#mdmstorepublicprofileshielded)
<!-- Firewall-Tree-End -->

<!-- Device-MdmStore-Begin -->
## MdmStore

<!-- Device-MdmStore-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-Applicability-End -->

<!-- Device-MdmStore-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore
```
<!-- Device-MdmStore-OmaUri-End -->

<!-- Device-MdmStore-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-MdmStore-Description-End -->

<!-- Device-MdmStore-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Interior node.
<!-- Device-MdmStore-Editable-End -->

<!-- Device-MdmStore-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MdmStore-DFProperties-End -->

<!-- Device-MdmStore-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-Examples-End -->

<!-- Device-MdmStore-End -->

<!-- Device-MdmStore-DomainProfile-Begin -->
### MdmStore/DomainProfile

<!-- Device-MdmStore-DomainProfile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-DomainProfile-Applicability-End -->

<!-- Device-MdmStore-DomainProfile-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DomainProfile
```
<!-- Device-MdmStore-DomainProfile-OmaUri-End -->

<!-- Device-MdmStore-DomainProfile-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-MdmStore-DomainProfile-Description-End -->

<!-- Device-MdmStore-DomainProfile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-Editable-End -->

<!-- Device-MdmStore-DomainProfile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MdmStore-DomainProfile-DFProperties-End -->

<!-- Device-MdmStore-DomainProfile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-Examples-End -->

<!-- Device-MdmStore-DomainProfile-End -->

<!-- Device-MdmStore-DomainProfile-AllowLocalIpsecPolicyMerge-Begin -->
#### MdmStore/DomainProfile/AllowLocalIpsecPolicyMerge

<!-- Device-MdmStore-DomainProfile-AllowLocalIpsecPolicyMerge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-DomainProfile-AllowLocalIpsecPolicyMerge-Applicability-End -->

<!-- Device-MdmStore-DomainProfile-AllowLocalIpsecPolicyMerge-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DomainProfile/AllowLocalIpsecPolicyMerge
```
<!-- Device-MdmStore-DomainProfile-AllowLocalIpsecPolicyMerge-OmaUri-End -->

<!-- Device-MdmStore-DomainProfile-AllowLocalIpsecPolicyMerge-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch. If this value is false, connection security rules from the local store are ignored and not enforced, regardless of the schema version and connection security rule version. The merge law for this option is to always use the value of the GroupPolicyRSoPStore.
<!-- Device-MdmStore-DomainProfile-AllowLocalIpsecPolicyMerge-Description-End -->

<!-- Device-MdmStore-DomainProfile-AllowLocalIpsecPolicyMerge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-AllowLocalIpsecPolicyMerge-Editable-End -->

<!-- Device-MdmStore-DomainProfile-AllowLocalIpsecPolicyMerge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-DomainProfile-AllowLocalIpsecPolicyMerge-DFProperties-End -->

<!-- Device-MdmStore-DomainProfile-AllowLocalIpsecPolicyMerge-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | AllowLocalIpsecPolicyMerge Off. |
| true (Default) | AllowLocalIpsecPolicyMerge On. |
<!-- Device-MdmStore-DomainProfile-AllowLocalIpsecPolicyMerge-AllowedValues-End -->

<!-- Device-MdmStore-DomainProfile-AllowLocalIpsecPolicyMerge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-AllowLocalIpsecPolicyMerge-Examples-End -->

<!-- Device-MdmStore-DomainProfile-AllowLocalIpsecPolicyMerge-End -->

<!-- Device-MdmStore-DomainProfile-AllowLocalPolicyMerge-Begin -->
#### MdmStore/DomainProfile/AllowLocalPolicyMerge

<!-- Device-MdmStore-DomainProfile-AllowLocalPolicyMerge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-DomainProfile-AllowLocalPolicyMerge-Applicability-End -->

<!-- Device-MdmStore-DomainProfile-AllowLocalPolicyMerge-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DomainProfile/AllowLocalPolicyMerge
```
<!-- Device-MdmStore-DomainProfile-AllowLocalPolicyMerge-OmaUri-End -->

<!-- Device-MdmStore-DomainProfile-AllowLocalPolicyMerge-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is false, firewall rules from the local store are ignored and not enforced. The merge law for this option is to always use the value of the GroupPolicyRSoPStore. This value is valid for all schema versions.
<!-- Device-MdmStore-DomainProfile-AllowLocalPolicyMerge-Description-End -->

<!-- Device-MdmStore-DomainProfile-AllowLocalPolicyMerge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-AllowLocalPolicyMerge-Editable-End -->

<!-- Device-MdmStore-DomainProfile-AllowLocalPolicyMerge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-DomainProfile-AllowLocalPolicyMerge-DFProperties-End -->

<!-- Device-MdmStore-DomainProfile-AllowLocalPolicyMerge-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | AllowLocalPolicyMerge Off. |
| true (Default) | AllowLocalPolicyMerge On. |
<!-- Device-MdmStore-DomainProfile-AllowLocalPolicyMerge-AllowedValues-End -->

<!-- Device-MdmStore-DomainProfile-AllowLocalPolicyMerge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-AllowLocalPolicyMerge-Examples-End -->

<!-- Device-MdmStore-DomainProfile-AllowLocalPolicyMerge-End -->

<!-- Device-MdmStore-DomainProfile-AuthAppsAllowUserPrefMerge-Begin -->
#### MdmStore/DomainProfile/AuthAppsAllowUserPrefMerge

<!-- Device-MdmStore-DomainProfile-AuthAppsAllowUserPrefMerge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-DomainProfile-AuthAppsAllowUserPrefMerge-Applicability-End -->

<!-- Device-MdmStore-DomainProfile-AuthAppsAllowUserPrefMerge-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DomainProfile/AuthAppsAllowUserPrefMerge
```
<!-- Device-MdmStore-DomainProfile-AuthAppsAllowUserPrefMerge-OmaUri-End -->

<!-- Device-MdmStore-DomainProfile-AuthAppsAllowUserPrefMerge-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is false, authorized application firewall rules in the local store are ignored and not enforced. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-DomainProfile-AuthAppsAllowUserPrefMerge-Description-End -->

<!-- Device-MdmStore-DomainProfile-AuthAppsAllowUserPrefMerge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-AuthAppsAllowUserPrefMerge-Editable-End -->

<!-- Device-MdmStore-DomainProfile-AuthAppsAllowUserPrefMerge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-DomainProfile-AuthAppsAllowUserPrefMerge-DFProperties-End -->

<!-- Device-MdmStore-DomainProfile-AuthAppsAllowUserPrefMerge-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | AuthAppsAllowUserPrefMerge Off. |
| true (Default) | AuthAppsAllowUserPrefMerge On. |
<!-- Device-MdmStore-DomainProfile-AuthAppsAllowUserPrefMerge-AllowedValues-End -->

<!-- Device-MdmStore-DomainProfile-AuthAppsAllowUserPrefMerge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-AuthAppsAllowUserPrefMerge-Examples-End -->

<!-- Device-MdmStore-DomainProfile-AuthAppsAllowUserPrefMerge-End -->

<!-- Device-MdmStore-DomainProfile-DefaultInboundAction-Begin -->
#### MdmStore/DomainProfile/DefaultInboundAction

<!-- Device-MdmStore-DomainProfile-DefaultInboundAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-DomainProfile-DefaultInboundAction-Applicability-End -->

<!-- Device-MdmStore-DomainProfile-DefaultInboundAction-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DomainProfile/DefaultInboundAction
```
<!-- Device-MdmStore-DomainProfile-DefaultInboundAction-OmaUri-End -->

<!-- Device-MdmStore-DomainProfile-DefaultInboundAction-Description-Begin -->
<!-- Description-Source-DDF -->
This value is the action that the firewall does by default (and evaluates at the very end) on inbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 1 [Block]. The merge law for this option is to let the value of the GroupPolicyRSoPStore.win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-DomainProfile-DefaultInboundAction-Description-End -->

<!-- Device-MdmStore-DomainProfile-DefaultInboundAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-DefaultInboundAction-Editable-End -->

<!-- Device-MdmStore-DomainProfile-DefaultInboundAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 1 |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-DomainProfile-DefaultInboundAction-DFProperties-End -->

<!-- Device-MdmStore-DomainProfile-DefaultInboundAction-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Allow Inbound By Default. |
| 1 (Default) | Block Inbound By Default. |
<!-- Device-MdmStore-DomainProfile-DefaultInboundAction-AllowedValues-End -->

<!-- Device-MdmStore-DomainProfile-DefaultInboundAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-DefaultInboundAction-Examples-End -->

<!-- Device-MdmStore-DomainProfile-DefaultInboundAction-End -->

<!-- Device-MdmStore-DomainProfile-DefaultOutboundAction-Begin -->
#### MdmStore/DomainProfile/DefaultOutboundAction

<!-- Device-MdmStore-DomainProfile-DefaultOutboundAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-DomainProfile-DefaultOutboundAction-Applicability-End -->

<!-- Device-MdmStore-DomainProfile-DefaultOutboundAction-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DomainProfile/DefaultOutboundAction
```
<!-- Device-MdmStore-DomainProfile-DefaultOutboundAction-OmaUri-End -->

<!-- Device-MdmStore-DomainProfile-DefaultOutboundAction-Description-Begin -->
<!-- Description-Source-DDF -->
This value is the action that the firewall does by default (and evaluates at the very end) on outbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 0 [Allow]. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-DomainProfile-DefaultOutboundAction-Description-End -->

<!-- Device-MdmStore-DomainProfile-DefaultOutboundAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-DefaultOutboundAction-Editable-End -->

<!-- Device-MdmStore-DomainProfile-DefaultOutboundAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 0 |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-DomainProfile-DefaultOutboundAction-DFProperties-End -->

<!-- Device-MdmStore-DomainProfile-DefaultOutboundAction-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allow Outbound By Default. |
| 1 | Block Outbound By Default. |
<!-- Device-MdmStore-DomainProfile-DefaultOutboundAction-AllowedValues-End -->

<!-- Device-MdmStore-DomainProfile-DefaultOutboundAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

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
<!-- Device-MdmStore-DomainProfile-DefaultOutboundAction-Examples-End -->

<!-- Device-MdmStore-DomainProfile-DefaultOutboundAction-End -->

<!-- Device-MdmStore-DomainProfile-DisableInboundNotifications-Begin -->
#### MdmStore/DomainProfile/DisableInboundNotifications

<!-- Device-MdmStore-DomainProfile-DisableInboundNotifications-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-DomainProfile-DisableInboundNotifications-Applicability-End -->

<!-- Device-MdmStore-DomainProfile-DisableInboundNotifications-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DomainProfile/DisableInboundNotifications
```
<!-- Device-MdmStore-DomainProfile-DisableInboundNotifications-OmaUri-End -->

<!-- Device-MdmStore-DomainProfile-DisableInboundNotifications-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch. If this value is false, the firewall MAY display a notification to the user when an application is blocked from listening on a port. If this value is on, the firewall MUST NOT display such a notification. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-DomainProfile-DisableInboundNotifications-Description-End -->

<!-- Device-MdmStore-DomainProfile-DisableInboundNotifications-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-DisableInboundNotifications-Editable-End -->

<!-- Device-MdmStore-DomainProfile-DisableInboundNotifications-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-DomainProfile-DisableInboundNotifications-DFProperties-End -->

<!-- Device-MdmStore-DomainProfile-DisableInboundNotifications-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Firewall May Display Notification. |
| true | Firewall Must Not Display Notification. |
<!-- Device-MdmStore-DomainProfile-DisableInboundNotifications-AllowedValues-End -->

<!-- Device-MdmStore-DomainProfile-DisableInboundNotifications-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-DisableInboundNotifications-Examples-End -->

<!-- Device-MdmStore-DomainProfile-DisableInboundNotifications-End -->

<!-- Device-MdmStore-DomainProfile-DisableStealthMode-Begin -->
#### MdmStore/DomainProfile/DisableStealthMode

<!-- Device-MdmStore-DomainProfile-DisableStealthMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-DomainProfile-DisableStealthMode-Applicability-End -->

<!-- Device-MdmStore-DomainProfile-DisableStealthMode-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DomainProfile/DisableStealthMode
```
<!-- Device-MdmStore-DomainProfile-DisableStealthMode-OmaUri-End -->

<!-- Device-MdmStore-DomainProfile-DisableStealthMode-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch. When this option is false, the server operates in stealth mode. The firewall rules used to enforce stealth mode are implementation-specific. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-DomainProfile-DisableStealthMode-Description-End -->

<!-- Device-MdmStore-DomainProfile-DisableStealthMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-DisableStealthMode-Editable-End -->

<!-- Device-MdmStore-DomainProfile-DisableStealthMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [EnableFirewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-DomainProfile-DisableStealthMode-DFProperties-End -->

<!-- Device-MdmStore-DomainProfile-DisableStealthMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Use Stealth Mode. |
| true | Disable Stealth Mode. |
<!-- Device-MdmStore-DomainProfile-DisableStealthMode-AllowedValues-End -->

<!-- Device-MdmStore-DomainProfile-DisableStealthMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-DisableStealthMode-Examples-End -->

<!-- Device-MdmStore-DomainProfile-DisableStealthMode-End -->

<!-- Device-MdmStore-DomainProfile-DisableStealthModeIpsecSecuredPacketExemption-Begin -->
#### MdmStore/DomainProfile/DisableStealthModeIpsecSecuredPacketExemption

<!-- Device-MdmStore-DomainProfile-DisableStealthModeIpsecSecuredPacketExemption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-DomainProfile-DisableStealthModeIpsecSecuredPacketExemption-Applicability-End -->

<!-- Device-MdmStore-DomainProfile-DisableStealthModeIpsecSecuredPacketExemption-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DomainProfile/DisableStealthModeIpsecSecuredPacketExemption
```
<!-- Device-MdmStore-DomainProfile-DisableStealthModeIpsecSecuredPacketExemption-OmaUri-End -->

<!-- Device-MdmStore-DomainProfile-DisableStealthModeIpsecSecuredPacketExemption-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch. This option is ignored if DisableStealthMode is on. Otherwise, when this option is true, the firewall's stealth mode rules MUST NOT prevent the host computer from responding to unsolicited network traffic if that traffic is secured by IPsec. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used. For schema versions 0x0200, 0x0201, and 0x020A, this value is invalid and MUST NOT be used.
<!-- Device-MdmStore-DomainProfile-DisableStealthModeIpsecSecuredPacketExemption-Description-End -->

<!-- Device-MdmStore-DomainProfile-DisableStealthModeIpsecSecuredPacketExemption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-DisableStealthModeIpsecSecuredPacketExemption-Editable-End -->

<!-- Device-MdmStore-DomainProfile-DisableStealthModeIpsecSecuredPacketExemption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-DomainProfile-DisableStealthModeIpsecSecuredPacketExemption-DFProperties-End -->

<!-- Device-MdmStore-DomainProfile-DisableStealthModeIpsecSecuredPacketExemption-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | FALSE. |
| true (Default) | TRUE. |
<!-- Device-MdmStore-DomainProfile-DisableStealthModeIpsecSecuredPacketExemption-AllowedValues-End -->

<!-- Device-MdmStore-DomainProfile-DisableStealthModeIpsecSecuredPacketExemption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-DisableStealthModeIpsecSecuredPacketExemption-Examples-End -->

<!-- Device-MdmStore-DomainProfile-DisableStealthModeIpsecSecuredPacketExemption-End -->

<!-- Device-MdmStore-DomainProfile-DisableUnicastResponsesToMulticastBroadcast-Begin -->
#### MdmStore/DomainProfile/DisableUnicastResponsesToMulticastBroadcast

<!-- Device-MdmStore-DomainProfile-DisableUnicastResponsesToMulticastBroadcast-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-DomainProfile-DisableUnicastResponsesToMulticastBroadcast-Applicability-End -->

<!-- Device-MdmStore-DomainProfile-DisableUnicastResponsesToMulticastBroadcast-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DomainProfile/DisableUnicastResponsesToMulticastBroadcast
```
<!-- Device-MdmStore-DomainProfile-DisableUnicastResponsesToMulticastBroadcast-OmaUri-End -->

<!-- Device-MdmStore-DomainProfile-DisableUnicastResponsesToMulticastBroadcast-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If it's true, unicast responses to multicast broadcast traffic is blocked. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-DomainProfile-DisableUnicastResponsesToMulticastBroadcast-Description-End -->

<!-- Device-MdmStore-DomainProfile-DisableUnicastResponsesToMulticastBroadcast-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-DisableUnicastResponsesToMulticastBroadcast-Editable-End -->

<!-- Device-MdmStore-DomainProfile-DisableUnicastResponsesToMulticastBroadcast-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-DomainProfile-DisableUnicastResponsesToMulticastBroadcast-DFProperties-End -->

<!-- Device-MdmStore-DomainProfile-DisableUnicastResponsesToMulticastBroadcast-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Unicast Responses Not Blocked. |
| true | Unicast Responses Blocked. |
<!-- Device-MdmStore-DomainProfile-DisableUnicastResponsesToMulticastBroadcast-AllowedValues-End -->

<!-- Device-MdmStore-DomainProfile-DisableUnicastResponsesToMulticastBroadcast-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-DisableUnicastResponsesToMulticastBroadcast-Examples-End -->

<!-- Device-MdmStore-DomainProfile-DisableUnicastResponsesToMulticastBroadcast-End -->

<!-- Device-MdmStore-DomainProfile-EnableFirewall-Begin -->
#### MdmStore/DomainProfile/EnableFirewall

<!-- Device-MdmStore-DomainProfile-EnableFirewall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-DomainProfile-EnableFirewall-Applicability-End -->

<!-- Device-MdmStore-DomainProfile-EnableFirewall-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall
```
<!-- Device-MdmStore-DomainProfile-EnableFirewall-OmaUri-End -->

<!-- Device-MdmStore-DomainProfile-EnableFirewall-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch for the firewall and advanced security enforcement. If this value is false, the server MUST NOT block any network traffic, regardless of other policy settings. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-DomainProfile-EnableFirewall-Description-End -->

<!-- Device-MdmStore-DomainProfile-EnableFirewall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-EnableFirewall-Editable-End -->

<!-- Device-MdmStore-DomainProfile-EnableFirewall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Replace |
| Default Value  | true |
<!-- Device-MdmStore-DomainProfile-EnableFirewall-DFProperties-End -->

<!-- Device-MdmStore-DomainProfile-EnableFirewall-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disable Firewall. |
| true (Default) | Enable Firewall. |
<!-- Device-MdmStore-DomainProfile-EnableFirewall-AllowedValues-End -->

<!-- Device-MdmStore-DomainProfile-EnableFirewall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-EnableFirewall-Examples-End -->

<!-- Device-MdmStore-DomainProfile-EnableFirewall-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogDroppedPackets-Begin -->
#### MdmStore/DomainProfile/EnableLogDroppedPackets

<!-- Device-MdmStore-DomainProfile-EnableLogDroppedPackets-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-DomainProfile-EnableLogDroppedPackets-Applicability-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogDroppedPackets-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableLogDroppedPackets
```
<!-- Device-MdmStore-DomainProfile-EnableLogDroppedPackets-OmaUri-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogDroppedPackets-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is on, the firewall logs all the dropped packets. The merge law for this option is to let "on" values win.
<!-- Device-MdmStore-DomainProfile-EnableLogDroppedPackets-Description-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogDroppedPackets-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-EnableLogDroppedPackets-Editable-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogDroppedPackets-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-DomainProfile-EnableLogDroppedPackets-DFProperties-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogDroppedPackets-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disable Logging Of Dropped Packets. |
| true | Enable Logging Of Dropped Packets. |
<!-- Device-MdmStore-DomainProfile-EnableLogDroppedPackets-AllowedValues-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogDroppedPackets-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-EnableLogDroppedPackets-Examples-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogDroppedPackets-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogIgnoredRules-Begin -->
#### MdmStore/DomainProfile/EnableLogIgnoredRules

<!-- Device-MdmStore-DomainProfile-EnableLogIgnoredRules-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-DomainProfile-EnableLogIgnoredRules-Applicability-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogIgnoredRules-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableLogIgnoredRules
```
<!-- Device-MdmStore-DomainProfile-EnableLogIgnoredRules-OmaUri-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogIgnoredRules-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. The server MAY use this value in an implementation-specific way to control logging of events if a rule isn't enforced for any reason. The merge law for this option is to let "on" values win.
<!-- Device-MdmStore-DomainProfile-EnableLogIgnoredRules-Description-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogIgnoredRules-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-EnableLogIgnoredRules-Editable-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogIgnoredRules-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-DomainProfile-EnableLogIgnoredRules-DFProperties-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogIgnoredRules-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disable Logging Of Ignored Rules. |
| true | Enable Logging Of Ignored Rules. |
<!-- Device-MdmStore-DomainProfile-EnableLogIgnoredRules-AllowedValues-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogIgnoredRules-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-EnableLogIgnoredRules-Examples-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogIgnoredRules-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogSuccessConnections-Begin -->
#### MdmStore/DomainProfile/EnableLogSuccessConnections

<!-- Device-MdmStore-DomainProfile-EnableLogSuccessConnections-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-DomainProfile-EnableLogSuccessConnections-Applicability-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogSuccessConnections-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableLogSuccessConnections
```
<!-- Device-MdmStore-DomainProfile-EnableLogSuccessConnections-OmaUri-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogSuccessConnections-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is on, the firewall logs all successful inbound connections. The merge law for this option is to let "on" values win.
<!-- Device-MdmStore-DomainProfile-EnableLogSuccessConnections-Description-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogSuccessConnections-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-EnableLogSuccessConnections-Editable-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogSuccessConnections-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-DomainProfile-EnableLogSuccessConnections-DFProperties-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogSuccessConnections-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disable Logging Of Successful Connections. |
| true | Enable Logging Of Successful Connections. |
<!-- Device-MdmStore-DomainProfile-EnableLogSuccessConnections-AllowedValues-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogSuccessConnections-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-EnableLogSuccessConnections-Examples-End -->

<!-- Device-MdmStore-DomainProfile-EnableLogSuccessConnections-End -->

<!-- Device-MdmStore-DomainProfile-GlobalPortsAllowUserPrefMerge-Begin -->
#### MdmStore/DomainProfile/GlobalPortsAllowUserPrefMerge

<!-- Device-MdmStore-DomainProfile-GlobalPortsAllowUserPrefMerge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-DomainProfile-GlobalPortsAllowUserPrefMerge-Applicability-End -->

<!-- Device-MdmStore-DomainProfile-GlobalPortsAllowUserPrefMerge-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DomainProfile/GlobalPortsAllowUserPrefMerge
```
<!-- Device-MdmStore-DomainProfile-GlobalPortsAllowUserPrefMerge-OmaUri-End -->

<!-- Device-MdmStore-DomainProfile-GlobalPortsAllowUserPrefMerge-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is false, global port firewall rules in the local store are ignored and not enforced. The setting only has meaning if it's set or enumerated in the Group Policy store or if it's enumerated from the GroupPolicyRSoPStore. The merge law for this option is to let the value GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-DomainProfile-GlobalPortsAllowUserPrefMerge-Description-End -->

<!-- Device-MdmStore-DomainProfile-GlobalPortsAllowUserPrefMerge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-GlobalPortsAllowUserPrefMerge-Editable-End -->

<!-- Device-MdmStore-DomainProfile-GlobalPortsAllowUserPrefMerge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-DomainProfile-GlobalPortsAllowUserPrefMerge-DFProperties-End -->

<!-- Device-MdmStore-DomainProfile-GlobalPortsAllowUserPrefMerge-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | GlobalPortsAllowUserPrefMerge Off. |
| true (Default) | GlobalPortsAllowUserPrefMerge On. |
<!-- Device-MdmStore-DomainProfile-GlobalPortsAllowUserPrefMerge-AllowedValues-End -->

<!-- Device-MdmStore-DomainProfile-GlobalPortsAllowUserPrefMerge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-GlobalPortsAllowUserPrefMerge-Examples-End -->

<!-- Device-MdmStore-DomainProfile-GlobalPortsAllowUserPrefMerge-End -->

<!-- Device-MdmStore-DomainProfile-LogFilePath-Begin -->
#### MdmStore/DomainProfile/LogFilePath

<!-- Device-MdmStore-DomainProfile-LogFilePath-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-DomainProfile-LogFilePath-Applicability-End -->

<!-- Device-MdmStore-DomainProfile-LogFilePath-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DomainProfile/LogFilePath
```
<!-- Device-MdmStore-DomainProfile-LogFilePath-OmaUri-End -->

<!-- Device-MdmStore-DomainProfile-LogFilePath-Description-Begin -->
<!-- Description-Source-DDF -->
This value is a string that represents a file path to the log where the firewall logs dropped packets and successful connections. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured, otherwise the MdmStore value wins if it's configured, otherwise the local store value is used.
<!-- Device-MdmStore-DomainProfile-LogFilePath-Description-End -->

<!-- Device-MdmStore-DomainProfile-LogFilePath-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-LogFilePath-Editable-End -->

<!-- Device-MdmStore-DomainProfile-LogFilePath-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
| Default Value  | %systemroot%\system32\LogFiles\Firewall\pfirewall.log |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-DomainProfile-LogFilePath-DFProperties-End -->

<!-- Device-MdmStore-DomainProfile-LogFilePath-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-LogFilePath-Examples-End -->

<!-- Device-MdmStore-DomainProfile-LogFilePath-End -->

<!-- Device-MdmStore-DomainProfile-LogMaxFileSize-Begin -->
#### MdmStore/DomainProfile/LogMaxFileSize

<!-- Device-MdmStore-DomainProfile-LogMaxFileSize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-DomainProfile-LogMaxFileSize-Applicability-End -->

<!-- Device-MdmStore-DomainProfile-LogMaxFileSize-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DomainProfile/LogMaxFileSize
```
<!-- Device-MdmStore-DomainProfile-LogMaxFileSize-OmaUri-End -->

<!-- Device-MdmStore-DomainProfile-LogMaxFileSize-Description-Begin -->
<!-- Description-Source-DDF -->
This value specifies the size, in kilobytes, of the log file where dropped packets and successful connections are logged. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured, otherwise the MdmStore value wins if it's configured, otherwise the local store value is used.
<!-- Device-MdmStore-DomainProfile-LogMaxFileSize-Description-End -->

<!-- Device-MdmStore-DomainProfile-LogMaxFileSize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-LogMaxFileSize-Editable-End -->

<!-- Device-MdmStore-DomainProfile-LogMaxFileSize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 1024 |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-DomainProfile-LogMaxFileSize-DFProperties-End -->

<!-- Device-MdmStore-DomainProfile-LogMaxFileSize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-LogMaxFileSize-Examples-End -->

<!-- Device-MdmStore-DomainProfile-LogMaxFileSize-End -->

<!-- Device-MdmStore-DomainProfile-Shielded-Begin -->
#### MdmStore/DomainProfile/Shielded

<!-- Device-MdmStore-DomainProfile-Shielded-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-DomainProfile-Shielded-Applicability-End -->

<!-- Device-MdmStore-DomainProfile-Shielded-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DomainProfile/Shielded
```
<!-- Device-MdmStore-DomainProfile-Shielded-OmaUri-End -->

<!-- Device-MdmStore-DomainProfile-Shielded-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is on and EnableFirewall is on, the server MUST block all incoming traffic regardless of other policy settings. The merge law for this option is to let "on" values win.
<!-- Device-MdmStore-DomainProfile-Shielded-Description-End -->

<!-- Device-MdmStore-DomainProfile-Shielded-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-Shielded-Editable-End -->

<!-- Device-MdmStore-DomainProfile-Shielded-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-DomainProfile-Shielded-DFProperties-End -->

<!-- Device-MdmStore-DomainProfile-Shielded-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Shielding Off. |
| true | Shielding On. |
<!-- Device-MdmStore-DomainProfile-Shielded-AllowedValues-End -->

<!-- Device-MdmStore-DomainProfile-Shielded-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DomainProfile-Shielded-Examples-End -->

<!-- Device-MdmStore-DomainProfile-Shielded-End -->

<!-- Device-MdmStore-DynamicKeywords-Begin -->
### MdmStore/DynamicKeywords

<!-- Device-MdmStore-DynamicKeywords-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19042.1706] and later <br> ✅ Windows 10, version 21H1 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19043.1706] and later <br> ✅ Windows 10, version 21H2 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19044.1706] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-MdmStore-DynamicKeywords-Applicability-End -->

<!-- Device-MdmStore-DynamicKeywords-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DynamicKeywords
```
<!-- Device-MdmStore-DynamicKeywords-OmaUri-End -->

<!-- Device-MdmStore-DynamicKeywords-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-MdmStore-DynamicKeywords-Description-End -->

<!-- Device-MdmStore-DynamicKeywords-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DynamicKeywords-Editable-End -->

<!-- Device-MdmStore-DynamicKeywords-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MdmStore-DynamicKeywords-DFProperties-End -->

<!-- Device-MdmStore-DynamicKeywords-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DynamicKeywords-Examples-End -->

<!-- Device-MdmStore-DynamicKeywords-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-Begin -->
#### MdmStore/DynamicKeywords/Addresses

<!-- Device-MdmStore-DynamicKeywords-Addresses-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19042.1706] and later <br> ✅ Windows 10, version 21H1 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19043.1706] and later <br> ✅ Windows 10, version 21H2 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19044.1706] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-MdmStore-DynamicKeywords-Addresses-Applicability-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DynamicKeywords/Addresses
```
<!-- Device-MdmStore-DynamicKeywords-Addresses-OmaUri-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-Description-Begin -->
<!-- Description-Source-DDF -->
A list of dynamic keyword addresses for use within firewall rules. Dynamic keyword addresses can either be a simple alias object or fully qualified domain names which will be auto-resolved in the presence of the Microsoft Defender Advanced Threat Protection Service.
<!-- Device-MdmStore-DynamicKeywords-Addresses-Description-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DynamicKeywords-Addresses-Editable-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MdmStore-DynamicKeywords-Addresses-DFProperties-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DynamicKeywords-Addresses-Examples-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Begin -->
##### MdmStore/DynamicKeywords/Addresses/{Id}

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19042.1706] and later <br> ✅ Windows 10, version 21H1 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19043.1706] and later <br> ✅ Windows 10, version 21H2 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19044.1706] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Applicability-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DynamicKeywords/Addresses/{Id}
```
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-OmaUri-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Description-Begin -->
<!-- Description-Source-DDF -->
A unique GUID string identifier for this dynamic keyword address.
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Description-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Editable-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Atomic Required | True |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
| Allowed Values | Regular Expression: `\{[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}\}` |
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-DFProperties-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Examples-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Addresses-Begin -->
###### MdmStore/DynamicKeywords/Addresses/{Id}/Addresses

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Addresses-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19042.1706] and later <br> ✅ Windows 10, version 21H1 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19043.1706] and later <br> ✅ Windows 10, version 21H2 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19044.1706] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Addresses-Applicability-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Addresses-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DynamicKeywords/Addresses/{Id}/Addresses
```
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Addresses-OmaUri-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Addresses-Description-Begin -->
<!-- Description-Source-DDF -->
Consists of one or more comma-delimited tokens specifying the addresses covered by this keyword. This value shouldn't be set if AutoResolve is true.

Valid tokens include:

A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask not a network prefix is specified, the subnet mask defaults to 255.255.255.255.

A valid IPv6 address.

An IPv4 address range in the format of "start address - end address" with no spaces included.

An IPv6 address range in the format of "start address - end address" with no spaces included.
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Addresses-Description-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Addresses-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Addresses-Editable-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Addresses-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `,`) |
| Dependency [AutoResolve False] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/DynamicKeywords/Addresses/[Id]/AutoResolve` <br> Dependency Allowed Value: `false` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Addresses-DFProperties-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Addresses-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Addresses-Examples-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Addresses-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-AutoResolve-Begin -->
###### MdmStore/DynamicKeywords/Addresses/{Id}/AutoResolve

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-AutoResolve-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19042.1706] and later <br> ✅ Windows 10, version 21H1 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19043.1706] and later <br> ✅ Windows 10, version 21H2 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19044.1706] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-AutoResolve-Applicability-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-AutoResolve-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DynamicKeywords/Addresses/{Id}/AutoResolve
```
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-AutoResolve-OmaUri-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-AutoResolve-Description-Begin -->
<!-- Description-Source-DDF -->
If this flag is set to TRUE, then the 'keyword' field of this object is expected to be a fully qualified domain name, and the addresses will be automatically resolved. This flag should only be set if the Microsoft Defender Advanced Threat Protection Service is present.
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-AutoResolve-Description-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-AutoResolve-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-AutoResolve-Editable-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-AutoResolve-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get |
| Default Value  | false |
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-AutoResolve-DFProperties-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-AutoResolve-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | AutoResolve False. |
| true | AutoResolve True. |
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-AutoResolve-AllowedValues-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-AutoResolve-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-AutoResolve-Examples-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-AutoResolve-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Keyword-Begin -->
###### MdmStore/DynamicKeywords/Addresses/{Id}/Keyword

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Keyword-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19042.1706] and later <br> ✅ Windows 10, version 21H1 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19043.1706] and later <br> ✅ Windows 10, version 21H2 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19044.1706] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Keyword-Applicability-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Keyword-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/DynamicKeywords/Addresses/{Id}/Keyword
```
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Keyword-OmaUri-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Keyword-Description-Begin -->
<!-- Description-Source-DDF -->
A String representing keyword. If the AutoResolve value is true, this should be a Fully Qualified Domain name (wildcards accepted, for example "contoso.com" or "*.contoso.com"). If the AutoResolve value is false, then this can be any identifier string.
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Keyword-Description-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Keyword-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Keyword-Editable-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Keyword-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get |
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Keyword-DFProperties-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Keyword-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Keyword-Examples-End -->

<!-- Device-MdmStore-DynamicKeywords-Addresses-{Id}-Keyword-End -->

<!-- Device-MdmStore-FirewallRules-Begin -->
### MdmStore/FirewallRules

<!-- Device-MdmStore-FirewallRules-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules
```
<!-- Device-MdmStore-FirewallRules-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-Description-Begin -->
<!-- Description-Source-DDF -->
A list of rules controlling traffic through the Windows Firewall. Each Rule ID is ORed. Within each rule ID each Filter type is AND'ed.
<!-- Device-MdmStore-FirewallRules-Description-End -->

<!-- Device-MdmStore-FirewallRules-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-Editable-End -->

<!-- Device-MdmStore-FirewallRules-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MdmStore-FirewallRules-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-Examples-End -->

<!-- Device-MdmStore-FirewallRules-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Begin -->
#### MdmStore/FirewallRules/{FirewallRuleName}

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Description-Begin -->
<!-- Description-Source-DDF -->
Unique alpha numeric identifier for the rule. The rule name mustn't include a forward slash (/).
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Atomic Required | True |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
| Allowed Values | Regular Expression: `^[^|/]*$` |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Begin -->
##### MdmStore/FirewallRules/{FirewallRuleName}/Action

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/Action
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the action for the rule.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Type-Begin -->
###### MdmStore/FirewallRules/{FirewallRuleName}/Action/Type

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Type-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Type-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Type-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/Action/Type
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Type-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Type-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the action the rule enforces:

0 - Block
1 - Allow.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Type-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Type-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Type-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Type-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 1 |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Type-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Type-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Block. |
| 1 (Default) | Allow. |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Type-AllowedValues-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Type-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Type-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Action-Type-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Begin -->
##### MdmStore/FirewallRules/{FirewallRuleName}/App

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/App
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Description-Begin -->
<!-- Description-Source-DDF -->
Rules that control connections for an app, program or service.

Specified based on the intersection of the following nodes.

PackageFamilyName.

FilePath.

FQBN.

ServiceName.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-FilePath-Begin -->
###### MdmStore/FirewallRules/{FirewallRuleName}/App/FilePath

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-FilePath-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-FilePath-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-FilePath-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/App/FilePath
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-FilePath-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-FilePath-Description-Begin -->
<!-- Description-Source-DDF -->
FilePath - This App/Id value represents the full file path of the app. For example, C:\Windows\System\Notepad.exe.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-FilePath-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-FilePath-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-FilePath-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-FilePath-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-FilePath-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-FilePath-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-FilePath-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-FilePath-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Fqbn-Begin -->
###### MdmStore/FirewallRules/{FirewallRuleName}/App/Fqbn

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Fqbn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Fqbn-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Fqbn-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/App/Fqbn
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Fqbn-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Fqbn-Description-Begin -->
<!-- Description-Source-DDF -->
Fully Qualified Binary Name.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Fqbn-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Fqbn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Fqbn-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Fqbn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Fqbn-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Fqbn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Fqbn-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-Fqbn-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-PackageFamilyName-Begin -->
###### MdmStore/FirewallRules/{FirewallRuleName}/App/PackageFamilyName

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-PackageFamilyName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-PackageFamilyName-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-PackageFamilyName-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/App/PackageFamilyName
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-PackageFamilyName-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-PackageFamilyName-Description-Begin -->
<!-- Description-Source-DDF -->
PackageFamilyName - This App/Id value represents the PackageFamilyName of the app. The PackageFamilyName is the unique name of a Microsoft Store application.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-PackageFamilyName-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-PackageFamilyName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-PackageFamilyName-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-PackageFamilyName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-PackageFamilyName-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-PackageFamilyName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-PackageFamilyName-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-PackageFamilyName-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-ServiceName-Begin -->
###### MdmStore/FirewallRules/{FirewallRuleName}/App/ServiceName

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-ServiceName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-ServiceName-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-ServiceName-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/App/ServiceName
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-ServiceName-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-ServiceName-Description-Begin -->
<!-- Description-Source-DDF -->
This is a service name, and is used in cases when a service, not an application, must be sending or receiving traffic.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-ServiceName-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-ServiceName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-ServiceName-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-ServiceName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-ServiceName-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-ServiceName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-ServiceName-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-App-ServiceName-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Description-Begin -->
##### MdmStore/FirewallRules/{FirewallRuleName}/Description

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Description-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Description-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Description-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/Description
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Description-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Description-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the description of the rule.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Description-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Description-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Description-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Description-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Description-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Description-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Description-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Direction-Begin -->
##### MdmStore/FirewallRules/{FirewallRuleName}/Direction

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Direction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Direction-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Direction-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/Direction
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Direction-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Direction-Description-Begin -->
<!-- Description-Source-DDF -->
The rule is enabled based on the traffic direction as following.

IN - the rule applies to inbound traffic.

OUT - the rule applies to outbound traffic.

If not specified the default is OUT.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Direction-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Direction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Direction-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Direction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
| Default Value  | OUT |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Direction-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Direction-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| IN | The rule applies to inbound traffic. |
| OUT (Default) | The rule applies to outbound traffic. |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Direction-AllowedValues-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Direction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Direction-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Direction-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-EdgeTraversal-Begin -->
##### MdmStore/FirewallRules/{FirewallRuleName}/EdgeTraversal

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-EdgeTraversal-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-EdgeTraversal-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-EdgeTraversal-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/EdgeTraversal
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-EdgeTraversal-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-EdgeTraversal-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether edge traversal is enabled or disabled for this rule.

The EdgeTraversal property indicates that specific inbound traffic is allowed to tunnel through NATs and other edge devices using the Teredo tunneling technology. In order for this setting to work correctly, the application or service with the inbound firewall rule needs to support IPv6. The primary application of this setting allows listeners on the host to be globally addressable through a Teredo IPv6 address.

New rules have the EdgeTraversal property disabled by default.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-EdgeTraversal-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-EdgeTraversal-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-EdgeTraversal-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-EdgeTraversal-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-EdgeTraversal-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-EdgeTraversal-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 | Enabled. |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-EdgeTraversal-AllowedValues-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-EdgeTraversal-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-EdgeTraversal-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-EdgeTraversal-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Enabled-Begin -->
##### MdmStore/FirewallRules/{FirewallRuleName}/Enabled

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Enabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Enabled-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Enabled-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/Enabled
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Enabled-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Enabled-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether the rule is enabled or disabled. If the rule must be enabled, this value must be set to true.

If not specified - a new rule is disabled by default.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Enabled-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Enabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Enabled-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Enabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Enabled-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Enabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 | Enabled. |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Enabled-AllowedValues-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Enabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Enabled-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Enabled-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-IcmpTypesAndCodes-Begin -->
##### MdmStore/FirewallRules/{FirewallRuleName}/IcmpTypesAndCodes

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-IcmpTypesAndCodes-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-IcmpTypesAndCodes-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-IcmpTypesAndCodes-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/IcmpTypesAndCodes
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-IcmpTypesAndCodes-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-IcmpTypesAndCodes-Description-Begin -->
<!-- Description-Source-DDF -->
String value. Multiple ICMP type+code pairs can be included in the string by separating each value with a ",". If more than one ICMP type+code pair is specified, the strings must be separated by a comma.

To specify all ICMP types and codes, use the "\*" character. For specific ICMP types and codes, use the ":" to separate the type and code.

The following are valid examples: 3:4 or 1:\*. The "\*" character can be used to represent any code. The "\*" character can't be used to specify any type, examples such as "\*:4" or "\*:\*" are invalid.

When setting this field in a firewall rule, the protocol field must also be set, to either 1 (ICMP) or 58 (IPv6-ICMP).
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-IcmpTypesAndCodes-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-IcmpTypesAndCodes-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
If not specified, the default is All.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-IcmpTypesAndCodes-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-IcmpTypesAndCodes-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `,`) |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-IcmpTypesAndCodes-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-IcmpTypesAndCodes-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-IcmpTypesAndCodes-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-IcmpTypesAndCodes-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-InterfaceTypes-Begin -->
##### MdmStore/FirewallRules/{FirewallRuleName}/InterfaceTypes

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-InterfaceTypes-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-InterfaceTypes-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-InterfaceTypes-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/InterfaceTypes
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-InterfaceTypes-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-InterfaceTypes-Description-Begin -->
<!-- Description-Source-DDF -->
String value. Multiple interface types can be included in the string by separating each value with a ",". Acceptable values are "RemoteAccess", "Wireless", "Lan", "MBB", and "All".

If more than one interface type is specified, the strings must be separated by a comma.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-InterfaceTypes-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-InterfaceTypes-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-InterfaceTypes-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-InterfaceTypes-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | All |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-InterfaceTypes-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-InterfaceTypes-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| RemoteAccess | RemoteAccess. |
| Wireless | Wireless. |
| Lan | Lan. |
| MBB | MobileBroadband. |
| All (Default) | All. |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-InterfaceTypes-AllowedValues-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-InterfaceTypes-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-InterfaceTypes-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-InterfaceTypes-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalAddressRanges-Begin -->
##### MdmStore/FirewallRules/{FirewallRuleName}/LocalAddressRanges

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalAddressRanges-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalAddressRanges-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalAddressRanges-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/LocalAddressRanges
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalAddressRanges-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalAddressRanges-Description-Begin -->
<!-- Description-Source-DDF -->
Consists of one or more comma-delimited tokens specifying the local addresses covered by the rule. "\*" is the default value.

Valid tokens include:

"\*" indicates any local address. If present, this must be the only token included.

A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask not a network prefix is specified, the subnet mask defaults to 255.255.255.255.

A valid IPv6 address.

An IPv4 address range in the format of "start address - end address" with no spaces included.

An IPv6 address range in the format of "start address - end address" with no spaces included. If not specified the default is All.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalAddressRanges-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalAddressRanges-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalAddressRanges-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalAddressRanges-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `,`) |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalAddressRanges-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalAddressRanges-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalAddressRanges-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalAddressRanges-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalPortRanges-Begin -->
##### MdmStore/FirewallRules/{FirewallRuleName}/LocalPortRanges

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalPortRanges-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalPortRanges-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalPortRanges-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/LocalPortRanges
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalPortRanges-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalPortRanges-Description-Begin -->
<!-- Description-Source-DDF -->
Comma Separated list of ranges for eg. 100-120,200,300-320. If not specified the default is All.

When setting this field in a firewall rule, the protocol field must also be set, to either 6 (TCP) or 17 (UDP).
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalPortRanges-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalPortRanges-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalPortRanges-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalPortRanges-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Regular Expression: `^[0-9,-]+$` |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalPortRanges-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalPortRanges-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalPortRanges-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalPortRanges-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalUserAuthorizedList-Begin -->
##### MdmStore/FirewallRules/{FirewallRuleName}/LocalUserAuthorizedList

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalUserAuthorizedList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalUserAuthorizedList-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalUserAuthorizedList-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/LocalUserAuthorizedList
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalUserAuthorizedList-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalUserAuthorizedList-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the list of authorized local users for the app container.

This is a string in Security Descriptor Definition Language (SDDL) format.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalUserAuthorizedList-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalUserAuthorizedList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalUserAuthorizedList-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalUserAuthorizedList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | `<SDDL>` |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalUserAuthorizedList-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalUserAuthorizedList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalUserAuthorizedList-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-LocalUserAuthorizedList-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Name-Begin -->
##### MdmStore/FirewallRules/{FirewallRuleName}/Name

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Name-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Name-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/Name
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Name-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Name-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the friendly name of the firewall rule.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Name-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Name-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Name-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Name-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Name-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-PolicyAppId-Begin -->
##### MdmStore/FirewallRules/{FirewallRuleName}/PolicyAppId

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-PolicyAppId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 22H2 with [KB5025297](https://support.microsoft.com/help/5025297) [10.0.19045.2913] and later <br> ✅ Windows 11, version 21H2 with [KB5025298](https://support.microsoft.com/help/5025298) [10.0.22000.1880] and later <br> ✅ Windows 11, version 22H2 with [KB5025305](https://support.microsoft.com/help/5025305) [10.0.22621.1635] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-PolicyAppId-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-PolicyAppId-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/PolicyAppId
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-PolicyAppId-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-PolicyAppId-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies one WDAC tag. This is a string that can contain any alphanumeric character and any of the characters ":", "/", ""., and "_". A PolicyAppId and ServiceName can't be specified in the same rule.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-PolicyAppId-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-PolicyAppId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-PolicyAppId-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-PolicyAppId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Regular Expression: `^[A-Za-z0-9_.:/]+$` |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-PolicyAppId-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-PolicyAppId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-PolicyAppId-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-PolicyAppId-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Profiles-Begin -->
##### MdmStore/FirewallRules/{FirewallRuleName}/Profiles

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Profiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Profiles-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Profiles-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/Profiles
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Profiles-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Profiles-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the profiles to which the rule belongs: Domain, Private, Public. See [FW_PROFILE_TYPE](/openspecs/windows_protocols/ms-fasp/7704e238-174d-4a5e-b809-5f3787dd8acc) for the bitmasks that are used to identify profile types. If not specified, the default is All.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Profiles-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Profiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Profiles-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Profiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Profiles-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Profiles-AllowedValues-Begin -->
**Allowed values**:

| Flag | Description |
|:--|:--|
| 0x1 | FW_PROFILE_TYPE_DOMAIN:  This value represents the profile for networks that are connected to domains. |
| 0x2 | FW_PROFILE_TYPE_STANDARD:  This value represents the standard profile for networks. These networks are classified as private by the administrators in the server host. The classification happens the first time the host connects to the network. Usually these networks are behind Network Address Translation (NAT) devices, routers, and other edge devices, and they're in a private location, such as a home or an office. AND FW_PROFILE_TYPE_PRIVATE:  This value represents the profile for private networks, which is represented by the same value as that used for FW_PROFILE_TYPE_STANDARD. |
| 0x4 | FW_PROFILE_TYPE_PUBLIC:  This value represents the profile for public networks. These networks are classified as public by the administrators in the server host. The classification happens the first time the host connects to the network. Usually these networks are those at airports, coffee shops, and other public places where the peers in the network or the network administrator aren't trusted. |
| 0x7FFFFFFF | FW_PROFILE_TYPE_ALL:  This value represents all these network sets and any future network sets. |
| 0x80000000 | FW_PROFILE_TYPE_CURRENT:  This value represents the current profiles to which the firewall and advanced security components determine the host is connected at the moment of the call. This value can be specified only in method calls, and it can't be combined with other flags. |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Profiles-AllowedValues-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Profiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Profiles-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Profiles-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Protocol-Begin -->
##### MdmStore/FirewallRules/{FirewallRuleName}/Protocol

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Protocol-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Protocol-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Protocol-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/Protocol
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Protocol-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Protocol-Description-Begin -->
<!-- Description-Source-DDF -->
0-255 number representing the ip protocol (TCP = 6, UDP = 17). If not specified the default is All.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Protocol-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Protocol-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Protocol-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Protocol-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-255]` |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Protocol-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Protocol-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Protocol-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Protocol-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressDynamicKeywords-Begin -->
##### MdmStore/FirewallRules/{FirewallRuleName}/RemoteAddressDynamicKeywords

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressDynamicKeywords-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19042.1706] and later <br> ✅ Windows 10, version 21H1 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19043.1706] and later <br> ✅ Windows 10, version 21H2 with [KB5013942](https://support.microsoft.com/help/5013942) [10.0.19044.1706] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressDynamicKeywords-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressDynamicKeywords-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/RemoteAddressDynamicKeywords
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressDynamicKeywords-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressDynamicKeywords-Description-Begin -->
<!-- Description-Source-DDF -->
Comma separated list of Dynamic Keyword Address Ids (GUID strings) specifying the remote addresses covered by the rule.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressDynamicKeywords-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressDynamicKeywords-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressDynamicKeywords-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressDynamicKeywords-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Regular Expression: `\{[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}\}` |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressDynamicKeywords-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressDynamicKeywords-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressDynamicKeywords-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressDynamicKeywords-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressRanges-Begin -->
##### MdmStore/FirewallRules/{FirewallRuleName}/RemoteAddressRanges

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressRanges-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressRanges-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressRanges-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/RemoteAddressRanges
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressRanges-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressRanges-Description-Begin -->
<!-- Description-Source-DDF -->
Consists of one or more comma-delimited tokens specifying the remote addresses covered by the rule. The default value is "\*". Valid tokens include:

"\*" indicates any remote address. If present, this must be the only token included.

"Defaultgateway"
"DHCP"
"DNS"
"WINS"
"Intranet"
"RemoteCorpNetwork"
"Internet"
"PlayToRenderers"
"LocalSubnet" indicates any local address on the local subnet. This token isn't case-sensitive.

A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask not a network prefix is specified, the subnet mask defaults to 255.255.255.255.

A valid IPv6 address.

An IPv4 address range in the format of "start address - end address" with no spaces included.

An IPv6 address range in the format of "start address - end address" with no spaces included. If not specified the default is All.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressRanges-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressRanges-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressRanges-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressRanges-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `,`) |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressRanges-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressRanges-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressRanges-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemoteAddressRanges-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemotePortRanges-Begin -->
##### MdmStore/FirewallRules/{FirewallRuleName}/RemotePortRanges

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemotePortRanges-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemotePortRanges-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemotePortRanges-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/RemotePortRanges
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemotePortRanges-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemotePortRanges-Description-Begin -->
<!-- Description-Source-DDF -->
Comma Separated list of ranges for eg. 100-120,200,300-320. If not specified the default is All.

When setting this field in a firewall rule, the protocol field must also be set, to either 6 (TCP) or 17 (UDP).
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemotePortRanges-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemotePortRanges-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemotePortRanges-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemotePortRanges-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Regular Expression: `^[0-9,-]+$` |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemotePortRanges-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemotePortRanges-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemotePortRanges-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-RemotePortRanges-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Status-Begin -->
##### MdmStore/FirewallRules/{FirewallRuleName}/Status

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Status-Applicability-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Status-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/FirewallRules/{FirewallRuleName}/Status
```
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Status-OmaUri-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Provides information about the specific version of the rule in deployment for monitoring purposes.
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Status-Description-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Status-Editable-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Status-DFProperties-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Status-Examples-End -->

<!-- Device-MdmStore-FirewallRules-{FirewallRuleName}-Status-End -->

<!-- Device-MdmStore-Global-Begin -->
### MdmStore/Global

<!-- Device-MdmStore-Global-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-Global-Applicability-End -->

<!-- Device-MdmStore-Global-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/Global
```
<!-- Device-MdmStore-Global-OmaUri-End -->

<!-- Device-MdmStore-Global-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-MdmStore-Global-Description-End -->

<!-- Device-MdmStore-Global-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-Editable-End -->

<!-- Device-MdmStore-Global-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MdmStore-Global-DFProperties-End -->

<!-- Device-MdmStore-Global-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-Examples-End -->

<!-- Device-MdmStore-Global-End -->

<!-- Device-MdmStore-Global-BinaryVersionSupported-Begin -->
#### MdmStore/Global/BinaryVersionSupported

<!-- Device-MdmStore-Global-BinaryVersionSupported-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-Global-BinaryVersionSupported-Applicability-End -->

<!-- Device-MdmStore-Global-BinaryVersionSupported-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/Global/BinaryVersionSupported
```
<!-- Device-MdmStore-Global-BinaryVersionSupported-OmaUri-End -->

<!-- Device-MdmStore-Global-BinaryVersionSupported-Description-Begin -->
<!-- Description-Source-DDF -->
This value contains the binary version of the structures and data types that are supported by the server. This value isn't merged. In addition, this value is always a fixed value for a specific firewall and advanced security component's software build. This value identifies a policy configuration option that's supported only on servers that have a schema version of 0x0201.
<!-- Device-MdmStore-Global-BinaryVersionSupported-Description-End -->

<!-- Device-MdmStore-Global-BinaryVersionSupported-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-BinaryVersionSupported-Editable-End -->

<!-- Device-MdmStore-Global-BinaryVersionSupported-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-MdmStore-Global-BinaryVersionSupported-DFProperties-End -->

<!-- Device-MdmStore-Global-BinaryVersionSupported-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-BinaryVersionSupported-Examples-End -->

<!-- Device-MdmStore-Global-BinaryVersionSupported-End -->

<!-- Device-MdmStore-Global-CRLcheck-Begin -->
#### MdmStore/Global/CRLcheck

<!-- Device-MdmStore-Global-CRLcheck-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-Global-CRLcheck-Applicability-End -->

<!-- Device-MdmStore-Global-CRLcheck-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/Global/CRLcheck
```
<!-- Device-MdmStore-Global-CRLcheck-OmaUri-End -->

<!-- Device-MdmStore-Global-CRLcheck-Description-Begin -->
<!-- Description-Source-DDF -->
This value specifies how certificate revocation list (CRL) verification is enforced. The value MUST be 0, 1, or 2. A value of 0 disables CRL checking. A value of 1 specifies that CRL checking is attempted and that certificate validation fails only if the certificate is revoked. Other failures that are encountered during CRL checking (such as the revocation URL being unreachable) don't cause certificate validation to fail. A value of 2 means that checking is required and that certificate validation fails if any error is encountered during CRL processing. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, use the local store value.
<!-- Device-MdmStore-Global-CRLcheck-Description-End -->

<!-- Device-MdmStore-Global-CRLcheck-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-CRLcheck-Editable-End -->

<!-- Device-MdmStore-Global-CRLcheck-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
<!-- Device-MdmStore-Global-CRLcheck-DFProperties-End -->

<!-- Device-MdmStore-Global-CRLcheck-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disables CRL checking. |
| 1 | Specifies that CRL checking is attempted and that certificate validation fails only if the certificate is revoked. Other failures that are encountered during CRL checking (such as the revocation URL being unreachable) don't cause certificate validation to fail. |
| 2 | Means that checking is required and that certificate validation fails if any error is encountered during CRL processing. |
<!-- Device-MdmStore-Global-CRLcheck-AllowedValues-End -->

<!-- Device-MdmStore-Global-CRLcheck-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-CRLcheck-Examples-End -->

<!-- Device-MdmStore-Global-CRLcheck-End -->

<!-- Device-MdmStore-Global-CurrentProfiles-Begin -->
#### MdmStore/Global/CurrentProfiles

<!-- Device-MdmStore-Global-CurrentProfiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-Global-CurrentProfiles-Applicability-End -->

<!-- Device-MdmStore-Global-CurrentProfiles-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/Global/CurrentProfiles
```
<!-- Device-MdmStore-Global-CurrentProfiles-OmaUri-End -->

<!-- Device-MdmStore-Global-CurrentProfiles-Description-Begin -->
<!-- Description-Source-DDF -->
Value that contains a bitmask of the current enforced profiles that are maintained by the server firewall host. See [FW_PROFILE_TYPE](/openspecs/windows_protocols/ms-fasp/7704e238-174d-4a5e-b809-5f3787dd8acc) for the bitmasks that are used to identify profile types. This value is available only in the dynamic store; therefore, it isn't merged and has no merge law.
<!-- Device-MdmStore-Global-CurrentProfiles-Description-End -->

<!-- Device-MdmStore-Global-CurrentProfiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-CurrentProfiles-Editable-End -->

<!-- Device-MdmStore-Global-CurrentProfiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-MdmStore-Global-CurrentProfiles-DFProperties-End -->

<!-- Device-MdmStore-Global-CurrentProfiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-CurrentProfiles-Examples-End -->

<!-- Device-MdmStore-Global-CurrentProfiles-End -->

<!-- Device-MdmStore-Global-DisableStatefulFtp-Begin -->
#### MdmStore/Global/DisableStatefulFtp

<!-- Device-MdmStore-Global-DisableStatefulFtp-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-Global-DisableStatefulFtp-Applicability-End -->

<!-- Device-MdmStore-Global-DisableStatefulFtp-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/Global/DisableStatefulFtp
```
<!-- Device-MdmStore-Global-DisableStatefulFtp-OmaUri-End -->

<!-- Device-MdmStore-Global-DisableStatefulFtp-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch. If off, the firewall performs stateful File Transfer Protocol (FTP) filtering to allow secondary connections. FALSE means off; TRUE means on, so the stateful FTP is disabled. The merge law for this option is to let "on" values win.
<!-- Device-MdmStore-Global-DisableStatefulFtp-Description-End -->

<!-- Device-MdmStore-Global-DisableStatefulFtp-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-DisableStatefulFtp-Editable-End -->

<!-- Device-MdmStore-Global-DisableStatefulFtp-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
<!-- Device-MdmStore-Global-DisableStatefulFtp-DFProperties-End -->

<!-- Device-MdmStore-Global-DisableStatefulFtp-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Stateful FTP enabled. |
| true | Stateful FTP disabled. |
<!-- Device-MdmStore-Global-DisableStatefulFtp-AllowedValues-End -->

<!-- Device-MdmStore-Global-DisableStatefulFtp-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-DisableStatefulFtp-Examples-End -->

<!-- Device-MdmStore-Global-DisableStatefulFtp-End -->

<!-- Device-MdmStore-Global-EnablePacketQueue-Begin -->
#### MdmStore/Global/EnablePacketQueue

<!-- Device-MdmStore-Global-EnablePacketQueue-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-Global-EnablePacketQueue-Applicability-End -->

<!-- Device-MdmStore-Global-EnablePacketQueue-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/Global/EnablePacketQueue
```
<!-- Device-MdmStore-Global-EnablePacketQueue-OmaUri-End -->

<!-- Device-MdmStore-Global-EnablePacketQueue-Description-Begin -->
<!-- Description-Source-DDF -->
This value specifies how scaling for the software on the receive side is enabled for both the encrypted receive and clear text forward path for the IPsec tunnel gateway scenario. Use of this option also ensures that the packet order is preserved. The data type for this option value is an integer and is a combination of flags. A value of 0x00 indicates that all queuing is to be disabled. A value of 0x01 specifies that inbound encrypted packets are to be queued. A value of 0x02 specifies that packets are to be queued after decryption is performed for forwarding.
<!-- Device-MdmStore-Global-EnablePacketQueue-Description-End -->

<!-- Device-MdmStore-Global-EnablePacketQueue-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-EnablePacketQueue-Editable-End -->

<!-- Device-MdmStore-Global-EnablePacketQueue-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 0x0 |
<!-- Device-MdmStore-Global-EnablePacketQueue-DFProperties-End -->

<!-- Device-MdmStore-Global-EnablePacketQueue-AllowedValues-Begin -->
**Allowed values**:

| Flag | Description |
|:--|:--|
| 0x0 (Default) | Indicates that all queuing is to be disabled. |
| 0x1 | Specifies that inbound encrypted packets are to be queued. |
| 0x2 | Specifies that packets are to be queued after decryption is performed for forwarding. |
<!-- Device-MdmStore-Global-EnablePacketQueue-AllowedValues-End -->

<!-- Device-MdmStore-Global-EnablePacketQueue-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-EnablePacketQueue-Examples-End -->

<!-- Device-MdmStore-Global-EnablePacketQueue-End -->

<!-- Device-MdmStore-Global-IPsecExempt-Begin -->
#### MdmStore/Global/IPsecExempt

<!-- Device-MdmStore-Global-IPsecExempt-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-Global-IPsecExempt-Applicability-End -->

<!-- Device-MdmStore-Global-IPsecExempt-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/Global/IPsecExempt
```
<!-- Device-MdmStore-Global-IPsecExempt-OmaUri-End -->

<!-- Device-MdmStore-Global-IPsecExempt-Description-Begin -->
<!-- Description-Source-DDF -->
This value configures IPsec exceptions and MUST be a combination of the valid flags that are defined in [IPSEC_EXEMPT_VALUES](/openspecs/windows_protocols/ms-fasp/7daabd9f-74c3-4295-add6-e2402b01b191); therefore, the maximum value MUST always be IPSEC_EXEMPT_MAX-1 for servers supporting a schema version of 0x0201 and IPSEC_EXEMPT_MAX_V2_0-1 for servers supporting a schema version of 0x0200. If the maximum value is exceeded when the method RRPC_FWSetGlobalConfig (Opnum 4) is called, the method returns ERROR_INVALID_PARAMETER. This error code is returned if no other preceding error is discovered. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, use the local store value.
<!-- Device-MdmStore-Global-IPsecExempt-Description-End -->

<!-- Device-MdmStore-Global-IPsecExempt-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-IPsecExempt-Editable-End -->

<!-- Device-MdmStore-Global-IPsecExempt-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 0x0 |
<!-- Device-MdmStore-Global-IPsecExempt-DFProperties-End -->

<!-- Device-MdmStore-Global-IPsecExempt-AllowedValues-Begin -->
**Allowed values**:

| Flag | Description |
|:--|:--|
| 0x0 (Default) | FW_GLOBAL_CONFIG_IPSEC_EXEMPT_NONE:  No IPsec exemptions. |
| 0x1 | FW_GLOBAL_CONFIG_IPSEC_EXEMPT_NEIGHBOR_DISC:  Exempt neighbor discover IPv6 ICMP type-codes from IPsec. |
| 0x2 | FW_GLOBAL_CONFIG_IPSEC_EXEMPT_ICMP:  Exempt ICMP from IPsec. |
| 0x4 | FW_GLOBAL_CONFIG_IPSEC_EXEMPT_ROUTER_DISC:  Exempt router discover IPv6 ICMP type-codes from IPsec. |
| 0x8 | FW_GLOBAL_CONFIG_IPSEC_EXEMPT_DHCP:  Exempt both IPv4 and IPv6 DHCP traffic from IPsec. |
<!-- Device-MdmStore-Global-IPsecExempt-AllowedValues-End -->

<!-- Device-MdmStore-Global-IPsecExempt-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-IPsecExempt-Examples-End -->

<!-- Device-MdmStore-Global-IPsecExempt-End -->

<!-- Device-MdmStore-Global-OpportunisticallyMatchAuthSetPerKM-Begin -->
#### MdmStore/Global/OpportunisticallyMatchAuthSetPerKM

<!-- Device-MdmStore-Global-OpportunisticallyMatchAuthSetPerKM-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-Global-OpportunisticallyMatchAuthSetPerKM-Applicability-End -->

<!-- Device-MdmStore-Global-OpportunisticallyMatchAuthSetPerKM-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/Global/OpportunisticallyMatchAuthSetPerKM
```
<!-- Device-MdmStore-Global-OpportunisticallyMatchAuthSetPerKM-OmaUri-End -->

<!-- Device-MdmStore-Global-OpportunisticallyMatchAuthSetPerKM-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. When this option is false, keying modules MUST ignore the entire authentication set if they don't support all of the authentication suites specified in the set. When this option is true, keying modules MUST ignore only the authentication suites that they don't support. For schema versions 0x0200, 0x0201, and 0x020A, this value is invalid and MUST NOT be used.
<!-- Device-MdmStore-Global-OpportunisticallyMatchAuthSetPerKM-Description-End -->

<!-- Device-MdmStore-Global-OpportunisticallyMatchAuthSetPerKM-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-OpportunisticallyMatchAuthSetPerKM-Editable-End -->

<!-- Device-MdmStore-Global-OpportunisticallyMatchAuthSetPerKM-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
<!-- Device-MdmStore-Global-OpportunisticallyMatchAuthSetPerKM-DFProperties-End -->

<!-- Device-MdmStore-Global-OpportunisticallyMatchAuthSetPerKM-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | FALSE. |
| true | TRUE. |
<!-- Device-MdmStore-Global-OpportunisticallyMatchAuthSetPerKM-AllowedValues-End -->

<!-- Device-MdmStore-Global-OpportunisticallyMatchAuthSetPerKM-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-OpportunisticallyMatchAuthSetPerKM-Examples-End -->

<!-- Device-MdmStore-Global-OpportunisticallyMatchAuthSetPerKM-End -->

<!-- Device-MdmStore-Global-PolicyVersion-Begin -->
#### MdmStore/Global/PolicyVersion

<!-- Device-MdmStore-Global-PolicyVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-Global-PolicyVersion-Applicability-End -->

<!-- Device-MdmStore-Global-PolicyVersion-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/Global/PolicyVersion
```
<!-- Device-MdmStore-Global-PolicyVersion-OmaUri-End -->

<!-- Device-MdmStore-Global-PolicyVersion-Description-Begin -->
<!-- Description-Source-DDF -->
This value contains the policy version of the policy store being managed. This value isn't merged and therefore, has no merge law.
<!-- Device-MdmStore-Global-PolicyVersion-Description-End -->

<!-- Device-MdmStore-Global-PolicyVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-PolicyVersion-Editable-End -->

<!-- Device-MdmStore-Global-PolicyVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-MdmStore-Global-PolicyVersion-DFProperties-End -->

<!-- Device-MdmStore-Global-PolicyVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-PolicyVersion-Examples-End -->

<!-- Device-MdmStore-Global-PolicyVersion-End -->

<!-- Device-MdmStore-Global-PolicyVersionSupported-Begin -->
#### MdmStore/Global/PolicyVersionSupported

<!-- Device-MdmStore-Global-PolicyVersionSupported-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-Global-PolicyVersionSupported-Applicability-End -->

<!-- Device-MdmStore-Global-PolicyVersionSupported-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/Global/PolicyVersionSupported
```
<!-- Device-MdmStore-Global-PolicyVersionSupported-OmaUri-End -->

<!-- Device-MdmStore-Global-PolicyVersionSupported-Description-Begin -->
<!-- Description-Source-DDF -->
Value that contains the maximum policy version that the server host can accept. The version number is two octets in size. The lowest-order octet is the minor version; the second-to-lowest octet is the major version. This value isn't merged and is always a fixed value for a particular firewall and advanced security components software build.
<!-- Device-MdmStore-Global-PolicyVersionSupported-Description-End -->

<!-- Device-MdmStore-Global-PolicyVersionSupported-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-PolicyVersionSupported-Editable-End -->

<!-- Device-MdmStore-Global-PolicyVersionSupported-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-MdmStore-Global-PolicyVersionSupported-DFProperties-End -->

<!-- Device-MdmStore-Global-PolicyVersionSupported-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-PolicyVersionSupported-Examples-End -->

<!-- Device-MdmStore-Global-PolicyVersionSupported-End -->

<!-- Device-MdmStore-Global-PresharedKeyEncoding-Begin -->
#### MdmStore/Global/PresharedKeyEncoding

<!-- Device-MdmStore-Global-PresharedKeyEncoding-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-Global-PresharedKeyEncoding-Applicability-End -->

<!-- Device-MdmStore-Global-PresharedKeyEncoding-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/Global/PresharedKeyEncoding
```
<!-- Device-MdmStore-Global-PresharedKeyEncoding-OmaUri-End -->

<!-- Device-MdmStore-Global-PresharedKeyEncoding-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the preshared key encoding that's used. MUST be a valid value from the [PRESHARED_KEY_ENCODING_VALUES](/openspecs/windows_protocols/ms-fasp/b9d24a5e-7755-4c60-adeb-e0c7a718f909) enumeration. Default is 1 [UTF-8]. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, use the local store value.
<!-- Device-MdmStore-Global-PresharedKeyEncoding-Description-End -->

<!-- Device-MdmStore-Global-PresharedKeyEncoding-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-PresharedKeyEncoding-Editable-End -->

<!-- Device-MdmStore-Global-PresharedKeyEncoding-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 1 |
<!-- Device-MdmStore-Global-PresharedKeyEncoding-DFProperties-End -->

<!-- Device-MdmStore-Global-PresharedKeyEncoding-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | FW_GLOBAL_CONFIG_PRESHARED_KEY_ENCODING_NONE:  Preshared key isn't encoded. Instead, it's kept in its wide-character format. This symbolic constant has a value of 0. |
| 1 (Default) | FW_GLOBAL_CONFIG_PRESHARED_KEY_ENCODING_UTF_8:  Encode the preshared key using UTF-8. This symbolic constant has a value of 1. |
<!-- Device-MdmStore-Global-PresharedKeyEncoding-AllowedValues-End -->

<!-- Device-MdmStore-Global-PresharedKeyEncoding-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-PresharedKeyEncoding-Examples-End -->

<!-- Device-MdmStore-Global-PresharedKeyEncoding-End -->

<!-- Device-MdmStore-Global-SaIdleTime-Begin -->
#### MdmStore/Global/SaIdleTime

<!-- Device-MdmStore-Global-SaIdleTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-Global-SaIdleTime-Applicability-End -->

<!-- Device-MdmStore-Global-SaIdleTime-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/Global/SaIdleTime
```
<!-- Device-MdmStore-Global-SaIdleTime-OmaUri-End -->

<!-- Device-MdmStore-Global-SaIdleTime-Description-Begin -->
<!-- Description-Source-DDF -->
This value configures the security association idle time, in seconds. Security associations are deleted after network traffic isn't seen for this specified period of time. The value MUST be in the range of 300 to 3,600 inclusive. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, use the local store value.
<!-- Device-MdmStore-Global-SaIdleTime-Description-End -->

<!-- Device-MdmStore-Global-SaIdleTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-SaIdleTime-Editable-End -->

<!-- Device-MdmStore-Global-SaIdleTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Allowed Values | Range: `[300-3600]` |
| Default Value  | 300 |
<!-- Device-MdmStore-Global-SaIdleTime-DFProperties-End -->

<!-- Device-MdmStore-Global-SaIdleTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-Global-SaIdleTime-Examples-End -->

<!-- Device-MdmStore-Global-SaIdleTime-End -->

<!-- Device-MdmStore-HyperVFirewallRules-Begin -->
### MdmStore/HyperVFirewallRules

<!-- Device-MdmStore-HyperVFirewallRules-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVFirewallRules-Applicability-End -->

<!-- Device-MdmStore-HyperVFirewallRules-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules
```
<!-- Device-MdmStore-HyperVFirewallRules-OmaUri-End -->

<!-- Device-MdmStore-HyperVFirewallRules-Description-Begin -->
<!-- Description-Source-DDF -->
A list of rules controlling traffic through the Windows Firewall for Hyper-V containers. Each Rule ID is ORed. Within each rule ID each Filter type is AND'ed.
<!-- Device-MdmStore-HyperVFirewallRules-Description-End -->

<!-- Device-MdmStore-HyperVFirewallRules-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-Editable-End -->

<!-- Device-MdmStore-HyperVFirewallRules-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MdmStore-HyperVFirewallRules-DFProperties-End -->

<!-- Device-MdmStore-HyperVFirewallRules-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-Examples-End -->

<!-- Device-MdmStore-HyperVFirewallRules-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Begin -->
#### MdmStore/HyperVFirewallRules/{FirewallRuleName}

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Applicability-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/{FirewallRuleName}
```
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-OmaUri-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Description-Begin -->
<!-- Description-Source-DDF -->
Unique alpha numeric identifier for the rule. The rule name mustn't include a forward slash (/).
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Description-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Editable-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Atomic Required | True |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
| Allowed Values | Regular Expression: `^[^|/]*$` |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-DFProperties-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Examples-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Action-Begin -->
##### MdmStore/HyperVFirewallRules/{FirewallRuleName}/Action

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Action-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Action-Applicability-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Action-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/{FirewallRuleName}/Action
```
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Action-OmaUri-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Action-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the action the rule enforces:

0 - Block
1 - Allow.
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Action-Description-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Action-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Action-Editable-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Action-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 1 |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Action-DFProperties-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Action-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Block. |
| 1 (Default) | Allow. |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Action-AllowedValues-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Action-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Action-Examples-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Action-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Direction-Begin -->
##### MdmStore/HyperVFirewallRules/{FirewallRuleName}/Direction

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Direction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Direction-Applicability-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Direction-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/{FirewallRuleName}/Direction
```
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Direction-OmaUri-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Direction-Description-Begin -->
<!-- Description-Source-DDF -->
The rule is enabled based on the traffic direction as following.

IN - the rule applies to inbound traffic.

OUT - the rule applies to outbound traffic.

If not specified the default is OUT.
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Direction-Description-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Direction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Direction-Editable-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Direction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
| Default Value  | OUT |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Direction-DFProperties-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Direction-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| IN | The rule applies to inbound traffic. |
| OUT (Default) | The rule applies to outbound traffic. |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Direction-AllowedValues-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Direction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Direction-Examples-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Direction-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Enabled-Begin -->
##### MdmStore/HyperVFirewallRules/{FirewallRuleName}/Enabled

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Enabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Enabled-Applicability-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Enabled-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/{FirewallRuleName}/Enabled
```
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Enabled-OmaUri-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Enabled-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether the rule is enabled or disabled. If the rule must be enabled, this value must be set to true.

If not specified - a new rule is disabled by default.
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Enabled-Description-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Enabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Enabled-Editable-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Enabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Enabled-DFProperties-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Enabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 | Enabled. |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Enabled-AllowedValues-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Enabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Enabled-Examples-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Enabled-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalAddressRanges-Begin -->
##### MdmStore/HyperVFirewallRules/{FirewallRuleName}/LocalAddressRanges

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalAddressRanges-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalAddressRanges-Applicability-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalAddressRanges-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/{FirewallRuleName}/LocalAddressRanges
```
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalAddressRanges-OmaUri-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalAddressRanges-Description-Begin -->
<!-- Description-Source-DDF -->
Consists of one or more comma-delimited tokens specifying the local addresses covered by the rule. "\*" is the default value.

Valid tokens include:

"\*" indicates any local address. If present, this must be the only token included.

A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask not a network prefix is specified, the subnet mask defaults to 255.255.255.255.

A valid IPv6 address.

An IPv4 address range in the format of "start address - end address" with no spaces included.

An IPv6 address range in the format of "start address - end address" with no spaces included. If not specified the default is All.
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalAddressRanges-Description-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalAddressRanges-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalAddressRanges-Editable-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalAddressRanges-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `,`) |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalAddressRanges-DFProperties-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalAddressRanges-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalAddressRanges-Examples-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalAddressRanges-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalPortRanges-Begin -->
##### MdmStore/HyperVFirewallRules/{FirewallRuleName}/LocalPortRanges

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalPortRanges-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalPortRanges-Applicability-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalPortRanges-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/{FirewallRuleName}/LocalPortRanges
```
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalPortRanges-OmaUri-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalPortRanges-Description-Begin -->
<!-- Description-Source-DDF -->
Comma Separated list of ranges for eg. 100-120,200,300-320. If not specified the default is All.
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalPortRanges-Description-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalPortRanges-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalPortRanges-Editable-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalPortRanges-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Regular Expression: `^[0-9,-]+$` |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalPortRanges-DFProperties-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalPortRanges-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalPortRanges-Examples-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-LocalPortRanges-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Name-Begin -->
##### MdmStore/HyperVFirewallRules/{FirewallRuleName}/Name

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Name-Applicability-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Name-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/{FirewallRuleName}/Name
```
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Name-OmaUri-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Name-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the friendly name of the Hyper-V Firewall rule.
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Name-Description-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Name-Editable-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Name-DFProperties-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Name-Examples-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Name-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Priority-Begin -->
##### MdmStore/HyperVFirewallRules/{FirewallRuleName}/Priority

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Priority-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Priority-Applicability-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Priority-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/{FirewallRuleName}/Priority
```
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Priority-OmaUri-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Priority-Description-Begin -->
<!-- Description-Source-DDF -->
This value represents the order of rule enforcement. A lower priority rule is evaluated first. If not specified, block rules are evaluated before allow rules. If priority is configured, it's highly recommended to configure the value for ALL rules to ensure expected evaluation of rules.
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Priority-Description-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Priority-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Priority-Editable-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Priority-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-65535]` |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Priority-DFProperties-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Priority-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Priority-Examples-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Priority-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Profiles-Begin -->
##### MdmStore/HyperVFirewallRules/{FirewallRuleName}/Profiles

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Profiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25398] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2352] and later |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Profiles-Applicability-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Profiles-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/{FirewallRuleName}/Profiles
```
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Profiles-OmaUri-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Profiles-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the profiles to which the rule belongs: Domain, Private, Public. See [FW_PROFILE_TYPE](/openspecs/windows_protocols/ms-fasp/7704e238-174d-4a5e-b809-5f3787dd8acc) for the bitmasks that are used to identify profile types. If not specified, the default is All.
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Profiles-Description-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Profiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Profiles-Editable-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Profiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Profiles-DFProperties-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Profiles-AllowedValues-Begin -->
**Allowed values**:

| Flag | Description |
|:--|:--|
| 0x1 | FW_PROFILE_TYPE_DOMAIN:  This value represents the profile for networks that are connected to domains. |
| 0x2 | FW_PROFILE_TYPE_STANDARD:  This value represents the standard profile for networks. These networks are classified as private by the administrators in the server host. The classification happens the first time the host connects to the network. Usually these networks are behind Network Address Translation (NAT) devices, routers, and other edge devices, and they're in a private location, such as a home or an office. AND FW_PROFILE_TYPE_PRIVATE:  This value represents the profile for private networks, which is represented by the same value as that used for FW_PROFILE_TYPE_STANDARD. |
| 0x4 | FW_PROFILE_TYPE_PUBLIC:  This value represents the profile for public networks. These networks are classified as public by the administrators in the server host. The classification happens the first time the host connects to the network. Usually these networks are those at airports, coffee shops, and other public places where the peers in the network or the network administrator aren't trusted. |
| 0x7FFFFFFF | FW_PROFILE_TYPE_ALL:  This value represents all these network sets and any future network sets. |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Profiles-AllowedValues-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Profiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Profiles-Examples-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Profiles-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Protocol-Begin -->
##### MdmStore/HyperVFirewallRules/{FirewallRuleName}/Protocol

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Protocol-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Protocol-Applicability-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Protocol-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/{FirewallRuleName}/Protocol
```
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Protocol-OmaUri-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Protocol-Description-Begin -->
<!-- Description-Source-DDF -->
0-255 number representing the ip protocol (TCP = 6, UDP = 17). If not specified the default is All.
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Protocol-Description-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Protocol-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Protocol-Editable-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Protocol-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-255]` |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Protocol-DFProperties-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Protocol-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Protocol-Examples-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Protocol-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemoteAddressRanges-Begin -->
##### MdmStore/HyperVFirewallRules/{FirewallRuleName}/RemoteAddressRanges

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemoteAddressRanges-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemoteAddressRanges-Applicability-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemoteAddressRanges-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/{FirewallRuleName}/RemoteAddressRanges
```
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemoteAddressRanges-OmaUri-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemoteAddressRanges-Description-Begin -->
<!-- Description-Source-DDF -->
Consists of one or more comma-delimited tokens specifying the remote addresses covered by the rule. The default value is "\*". Valid tokens include:

"\*" indicates any remote address. If present, this must be the only token included.

A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask not a network prefix is specified, the subnet mask defaults to 255.255.255.255.

A valid IPv6 address.

An IPv4 address range in the format of "start address - end address" with no spaces included.

An IPv6 address range in the format of "start address - end address" with no spaces included. If not specified the default is All.
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemoteAddressRanges-Description-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemoteAddressRanges-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemoteAddressRanges-Editable-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemoteAddressRanges-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `,`) |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemoteAddressRanges-DFProperties-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemoteAddressRanges-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemoteAddressRanges-Examples-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemoteAddressRanges-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemotePortRanges-Begin -->
##### MdmStore/HyperVFirewallRules/{FirewallRuleName}/RemotePortRanges

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemotePortRanges-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemotePortRanges-Applicability-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemotePortRanges-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/{FirewallRuleName}/RemotePortRanges
```
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemotePortRanges-OmaUri-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemotePortRanges-Description-Begin -->
<!-- Description-Source-DDF -->
Comma Separated list of ranges for eg. 100-120,200,300-320. If not specified the default is All.
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemotePortRanges-Description-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemotePortRanges-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemotePortRanges-Editable-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemotePortRanges-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Regular Expression: `^[0-9,-]+$` |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemotePortRanges-DFProperties-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemotePortRanges-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemotePortRanges-Examples-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-RemotePortRanges-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Status-Begin -->
##### MdmStore/HyperVFirewallRules/{FirewallRuleName}/Status

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Status-Applicability-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Status-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/{FirewallRuleName}/Status
```
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Status-OmaUri-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Provides information about the specific version of the rule in deployment for monitoring purposes.
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Status-Description-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Status-Editable-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Status-DFProperties-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Status-Examples-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-Status-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-VMCreatorId-Begin -->
##### MdmStore/HyperVFirewallRules/{FirewallRuleName}/VMCreatorId

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-VMCreatorId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-VMCreatorId-Applicability-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-VMCreatorId-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVFirewallRules/{FirewallRuleName}/VMCreatorId
```
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-VMCreatorId-OmaUri-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-VMCreatorId-Description-Begin -->
<!-- Description-Source-DDF -->
This field specifies the VM Creator ID that this rule is applicable to. A NULL GUID will result in this rule applying to all VM creators.
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-VMCreatorId-Description-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-VMCreatorId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-VMCreatorId-Editable-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-VMCreatorId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Regular Expression: `\{[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}\}` |
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-VMCreatorId-DFProperties-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-VMCreatorId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-VMCreatorId-Examples-End -->

<!-- Device-MdmStore-HyperVFirewallRules-{FirewallRuleName}-VMCreatorId-End -->

<!-- Device-MdmStore-HyperVVMSettings-Begin -->
### MdmStore/HyperVVMSettings

<!-- Device-MdmStore-HyperVVMSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVVMSettings-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings
```
<!-- Device-MdmStore-HyperVVMSettings-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-Description-Begin -->
<!-- Description-Source-DDF -->
Settings for the Windows Firewall for Hyper-V containers. Each setting applies on a per-VM Creator basis.
<!-- Device-MdmStore-HyperVVMSettings-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MdmStore-HyperVVMSettings-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-Begin -->
#### MdmStore/HyperVVMSettings/{VMCreatorId}

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-Description-Begin -->
<!-- Description-Source-DDF -->
VM Creator ID that these settings apply to. Valid format is a GUID.
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Atomic Required | True |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
| Allowed Values | Regular Expression: `\{[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}\}` |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-AllowHostPolicyMerge-Begin -->
##### MdmStore/HyperVVMSettings/{VMCreatorId}/AllowHostPolicyMerge

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-AllowHostPolicyMerge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25398] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2352] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-AllowHostPolicyMerge-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-AllowHostPolicyMerge-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/AllowHostPolicyMerge
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-AllowHostPolicyMerge-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-AllowHostPolicyMerge-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is true, applicable host firewall rules and settings will be applied to Hyper-V Firewall.
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-AllowHostPolicyMerge-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-AllowHostPolicyMerge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-AllowHostPolicyMerge-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-AllowHostPolicyMerge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-AllowHostPolicyMerge-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-AllowHostPolicyMerge-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | AllowHostPolicyMerge Off. |
| true (Default) | AllowHostPolicyMerge On. |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-AllowHostPolicyMerge-AllowedValues-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-AllowHostPolicyMerge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-AllowHostPolicyMerge-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-AllowHostPolicyMerge-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultInboundAction-Begin -->
##### MdmStore/HyperVVMSettings/{VMCreatorId}/DefaultInboundAction

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultInboundAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultInboundAction-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultInboundAction-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/DefaultInboundAction
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultInboundAction-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultInboundAction-Description-Begin -->
<!-- Description-Source-DDF -->
This value is the action that the Hyper-V Firewall does by default (and evaluates at the very end) on inbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 1 [Block]. This value controls the settings for all profiles. It's recommended to instead use the profile setting value under the profile subtree.
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultInboundAction-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultInboundAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultInboundAction-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultInboundAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 1 |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultInboundAction-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultInboundAction-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Allow Inbound By Default. |
| 1 (Default) | Block Inbound By Default. |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultInboundAction-AllowedValues-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultInboundAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultInboundAction-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultInboundAction-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultOutboundAction-Begin -->
##### MdmStore/HyperVVMSettings/{VMCreatorId}/DefaultOutboundAction

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultOutboundAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultOutboundAction-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultOutboundAction-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/DefaultOutboundAction
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultOutboundAction-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultOutboundAction-Description-Begin -->
<!-- Description-Source-DDF -->
This value is the action that the Hyper-V Firewall does by default (and evaluates at the very end) on outbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 0 [Allow]. This value controls the settings for all profiles. It's recommended to instead use the profile setting value under the profile subtree.
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultOutboundAction-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultOutboundAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultOutboundAction-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultOutboundAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 0 |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultOutboundAction-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultOutboundAction-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allow Outbound By Default. |
| 1 | Block Outbound By Default. |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultOutboundAction-AllowedValues-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultOutboundAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultOutboundAction-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DefaultOutboundAction-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-Begin -->
##### MdmStore/HyperVVMSettings/{VMCreatorId}/DomainProfile

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25398] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2352] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/DomainProfile
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-AllowLocalPolicyMerge-Begin -->
###### MdmStore/HyperVVMSettings/{VMCreatorId}/DomainProfile/AllowLocalPolicyMerge

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-AllowLocalPolicyMerge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25398] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2352] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-AllowLocalPolicyMerge-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-AllowLocalPolicyMerge-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/DomainProfile/AllowLocalPolicyMerge
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-AllowLocalPolicyMerge-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-AllowLocalPolicyMerge-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is false, Hyper-V Firewall rules from the local store are ignored and not enforced.
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-AllowLocalPolicyMerge-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-AllowLocalPolicyMerge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-AllowLocalPolicyMerge-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-AllowLocalPolicyMerge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Replace |
| Default Value  | true |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/DomainProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-AllowLocalPolicyMerge-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-AllowLocalPolicyMerge-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | AllowLocalPolicyMerge Off. |
| true (Default) | AllowLocalPolicyMerge On. |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-AllowLocalPolicyMerge-AllowedValues-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-AllowLocalPolicyMerge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-AllowLocalPolicyMerge-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-AllowLocalPolicyMerge-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultInboundAction-Begin -->
###### MdmStore/HyperVVMSettings/{VMCreatorId}/DomainProfile/DefaultInboundAction

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultInboundAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25398] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2352] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultInboundAction-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultInboundAction-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/DomainProfile/DefaultInboundAction
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultInboundAction-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultInboundAction-Description-Begin -->
<!-- Description-Source-DDF -->
This value is the action that the Hyper-V Firewall does by default (and evaluates at the very end) on inbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 1 [Block].
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultInboundAction-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultInboundAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultInboundAction-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultInboundAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 1 |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/DomainProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultInboundAction-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultInboundAction-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Allow Inbound By Default. |
| 1 (Default) | Block Inbound By Default. |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultInboundAction-AllowedValues-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultInboundAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultInboundAction-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultInboundAction-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultOutboundAction-Begin -->
###### MdmStore/HyperVVMSettings/{VMCreatorId}/DomainProfile/DefaultOutboundAction

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultOutboundAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25398] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2352] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultOutboundAction-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultOutboundAction-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/DomainProfile/DefaultOutboundAction
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultOutboundAction-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultOutboundAction-Description-Begin -->
<!-- Description-Source-DDF -->
This value is the action that the Hyper-V Firewall does by default (and evaluates at the very end) on outbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 0 [Allow].
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultOutboundAction-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultOutboundAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultOutboundAction-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultOutboundAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 0 |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/DomainProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultOutboundAction-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultOutboundAction-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allow Outbound By Default. |
| 1 | Block Outbound By Default. |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultOutboundAction-AllowedValues-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultOutboundAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultOutboundAction-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-DefaultOutboundAction-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-EnableFirewall-Begin -->
###### MdmStore/HyperVVMSettings/{VMCreatorId}/DomainProfile/EnableFirewall

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-EnableFirewall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25398] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2352] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-EnableFirewall-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-EnableFirewall-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/DomainProfile/EnableFirewall
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-EnableFirewall-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-EnableFirewall-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch for the Hyper-V Firewall enforcement.
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-EnableFirewall-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-EnableFirewall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-EnableFirewall-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-EnableFirewall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Replace |
| Default Value  | true |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-EnableFirewall-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-EnableFirewall-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disable Firewall. |
| true (Default) | Enable Firewall. |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-EnableFirewall-AllowedValues-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-EnableFirewall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-EnableFirewall-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-DomainProfile-EnableFirewall-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableFirewall-Begin -->
##### MdmStore/HyperVVMSettings/{VMCreatorId}/EnableFirewall

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableFirewall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableFirewall-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableFirewall-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/EnableFirewall
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableFirewall-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableFirewall-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch for the Hyper-V Firewall. This value controls the settings for all profiles. It's recommended to instead use the profile setting value under the profile subtree.
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableFirewall-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableFirewall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableFirewall-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableFirewall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Replace |
| Default Value  | true |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableFirewall-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableFirewall-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disable Hyper-V Firewall. |
| true (Default) | Enable Hyper-V Firewall. |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableFirewall-AllowedValues-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableFirewall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableFirewall-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableFirewall-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableLoopback-Begin -->
##### MdmStore/HyperVVMSettings/{VMCreatorId}/EnableLoopback

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableLoopback-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableLoopback-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableLoopback-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/EnableLoopback
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableLoopback-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableLoopback-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch for loopback traffic. This determines if this VM is able to send/receive loopback traffic to other VMs or the host.
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableLoopback-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableLoopback-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableLoopback-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableLoopback-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Replace |
| Default Value  | false |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableLoopback-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableLoopback-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disable loopback. |
| true | Enable loopback. |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableLoopback-AllowedValues-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableLoopback-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableLoopback-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-EnableLoopback-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-Begin -->
##### MdmStore/HyperVVMSettings/{VMCreatorId}/PrivateProfile

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25398] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2352] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/PrivateProfile
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-AllowLocalPolicyMerge-Begin -->
###### MdmStore/HyperVVMSettings/{VMCreatorId}/PrivateProfile/AllowLocalPolicyMerge

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-AllowLocalPolicyMerge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25398] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2352] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-AllowLocalPolicyMerge-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-AllowLocalPolicyMerge-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/PrivateProfile/AllowLocalPolicyMerge
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-AllowLocalPolicyMerge-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-AllowLocalPolicyMerge-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is false, Hyper-V Firewall rules from the local store are ignored and not enforced.
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-AllowLocalPolicyMerge-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-AllowLocalPolicyMerge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-AllowLocalPolicyMerge-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-AllowLocalPolicyMerge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Replace |
| Default Value  | true |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/PrivateProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-AllowLocalPolicyMerge-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-AllowLocalPolicyMerge-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | AllowLocalPolicyMerge Off. |
| true (Default) | AllowLocalPolicyMerge On. |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-AllowLocalPolicyMerge-AllowedValues-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-AllowLocalPolicyMerge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-AllowLocalPolicyMerge-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-AllowLocalPolicyMerge-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultInboundAction-Begin -->
###### MdmStore/HyperVVMSettings/{VMCreatorId}/PrivateProfile/DefaultInboundAction

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultInboundAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25398] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2352] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultInboundAction-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultInboundAction-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/PrivateProfile/DefaultInboundAction
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultInboundAction-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultInboundAction-Description-Begin -->
<!-- Description-Source-DDF -->
This value is the action that the Hyper-V Firewall does by default (and evaluates at the very end) on inbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 1 [Block].
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultInboundAction-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultInboundAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultInboundAction-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultInboundAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 1 |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/PrivateProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultInboundAction-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultInboundAction-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Allow Inbound By Default. |
| 1 (Default) | Block Inbound By Default. |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultInboundAction-AllowedValues-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultInboundAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultInboundAction-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultInboundAction-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultOutboundAction-Begin -->
###### MdmStore/HyperVVMSettings/{VMCreatorId}/PrivateProfile/DefaultOutboundAction

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultOutboundAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25398] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2352] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultOutboundAction-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultOutboundAction-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/PrivateProfile/DefaultOutboundAction
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultOutboundAction-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultOutboundAction-Description-Begin -->
<!-- Description-Source-DDF -->
This value is the action that the Hyper-V Firewall does by default (and evaluates at the very end) on outbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 0 [Allow].
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultOutboundAction-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultOutboundAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultOutboundAction-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultOutboundAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 0 |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/PrivateProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultOutboundAction-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultOutboundAction-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allow Outbound By Default. |
| 1 | Block Outbound By Default. |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultOutboundAction-AllowedValues-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultOutboundAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultOutboundAction-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-DefaultOutboundAction-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-EnableFirewall-Begin -->
###### MdmStore/HyperVVMSettings/{VMCreatorId}/PrivateProfile/EnableFirewall

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-EnableFirewall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25398] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2352] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-EnableFirewall-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-EnableFirewall-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/PrivateProfile/EnableFirewall
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-EnableFirewall-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-EnableFirewall-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch for the Hyper-V Firewall enforcement.
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-EnableFirewall-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-EnableFirewall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-EnableFirewall-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-EnableFirewall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Replace |
| Default Value  | true |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-EnableFirewall-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-EnableFirewall-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disable Firewall. |
| true (Default) | Enable Firewall. |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-EnableFirewall-AllowedValues-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-EnableFirewall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-EnableFirewall-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PrivateProfile-EnableFirewall-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-Begin -->
##### MdmStore/HyperVVMSettings/{VMCreatorId}/PublicProfile

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25398] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2352] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/PublicProfile
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-AllowLocalPolicyMerge-Begin -->
###### MdmStore/HyperVVMSettings/{VMCreatorId}/PublicProfile/AllowLocalPolicyMerge

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-AllowLocalPolicyMerge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25398] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2352] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-AllowLocalPolicyMerge-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-AllowLocalPolicyMerge-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/PublicProfile/AllowLocalPolicyMerge
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-AllowLocalPolicyMerge-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-AllowLocalPolicyMerge-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is false, Hyper-V Firewall rules from the local store are ignored and not enforced.
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-AllowLocalPolicyMerge-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-AllowLocalPolicyMerge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-AllowLocalPolicyMerge-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-AllowLocalPolicyMerge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Replace |
| Default Value  | true |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/PublicProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-AllowLocalPolicyMerge-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-AllowLocalPolicyMerge-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | AllowLocalPolicyMerge Off. |
| true (Default) | AllowLocalPolicyMerge On. |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-AllowLocalPolicyMerge-AllowedValues-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-AllowLocalPolicyMerge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-AllowLocalPolicyMerge-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-AllowLocalPolicyMerge-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultInboundAction-Begin -->
###### MdmStore/HyperVVMSettings/{VMCreatorId}/PublicProfile/DefaultInboundAction

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultInboundAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25398] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2352] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultInboundAction-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultInboundAction-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/PublicProfile/DefaultInboundAction
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultInboundAction-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultInboundAction-Description-Begin -->
<!-- Description-Source-DDF -->
This value is the action that the Hyper-V Firewall does by default (and evaluates at the very end) on inbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 1 [Block].
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultInboundAction-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultInboundAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultInboundAction-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultInboundAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 1 |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/PublicProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultInboundAction-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultInboundAction-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Allow Inbound By Default. |
| 1 (Default) | Block Inbound By Default. |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultInboundAction-AllowedValues-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultInboundAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultInboundAction-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultInboundAction-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultOutboundAction-Begin -->
###### MdmStore/HyperVVMSettings/{VMCreatorId}/PublicProfile/DefaultOutboundAction

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultOutboundAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25398] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2352] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultOutboundAction-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultOutboundAction-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/PublicProfile/DefaultOutboundAction
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultOutboundAction-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultOutboundAction-Description-Begin -->
<!-- Description-Source-DDF -->
This value is the action that the Hyper-V Firewall does by default (and evaluates at the very end) on outbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 0 [Allow].
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultOutboundAction-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultOutboundAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultOutboundAction-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultOutboundAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 0 |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/[VMCreatorId]/PublicProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultOutboundAction-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultOutboundAction-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allow Outbound By Default. |
| 1 | Block Outbound By Default. |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultOutboundAction-AllowedValues-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultOutboundAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultOutboundAction-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-DefaultOutboundAction-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-EnableFirewall-Begin -->
###### MdmStore/HyperVVMSettings/{VMCreatorId}/PublicProfile/EnableFirewall

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-EnableFirewall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25398] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2352] and later |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-EnableFirewall-Applicability-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-EnableFirewall-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/HyperVVMSettings/{VMCreatorId}/PublicProfile/EnableFirewall
```
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-EnableFirewall-OmaUri-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-EnableFirewall-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch for the Hyper-V Firewall enforcement.
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-EnableFirewall-Description-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-EnableFirewall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-EnableFirewall-Editable-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-EnableFirewall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Replace |
| Default Value  | true |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-EnableFirewall-DFProperties-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-EnableFirewall-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disable Hyper-V Firewall. |
| true (Default) | Enable Hyper-V Firewall. |
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-EnableFirewall-AllowedValues-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-EnableFirewall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-EnableFirewall-Examples-End -->

<!-- Device-MdmStore-HyperVVMSettings-{VMCreatorId}-PublicProfile-EnableFirewall-End -->

<!-- Device-MdmStore-PrivateProfile-Begin -->
### MdmStore/PrivateProfile

<!-- Device-MdmStore-PrivateProfile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PrivateProfile-Applicability-End -->

<!-- Device-MdmStore-PrivateProfile-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PrivateProfile
```
<!-- Device-MdmStore-PrivateProfile-OmaUri-End -->

<!-- Device-MdmStore-PrivateProfile-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-MdmStore-PrivateProfile-Description-End -->

<!-- Device-MdmStore-PrivateProfile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-Editable-End -->

<!-- Device-MdmStore-PrivateProfile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MdmStore-PrivateProfile-DFProperties-End -->

<!-- Device-MdmStore-PrivateProfile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-Examples-End -->

<!-- Device-MdmStore-PrivateProfile-End -->

<!-- Device-MdmStore-PrivateProfile-AllowLocalIpsecPolicyMerge-Begin -->
#### MdmStore/PrivateProfile/AllowLocalIpsecPolicyMerge

<!-- Device-MdmStore-PrivateProfile-AllowLocalIpsecPolicyMerge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PrivateProfile-AllowLocalIpsecPolicyMerge-Applicability-End -->

<!-- Device-MdmStore-PrivateProfile-AllowLocalIpsecPolicyMerge-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/AllowLocalIpsecPolicyMerge
```
<!-- Device-MdmStore-PrivateProfile-AllowLocalIpsecPolicyMerge-OmaUri-End -->

<!-- Device-MdmStore-PrivateProfile-AllowLocalIpsecPolicyMerge-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch. If this value is false, connection security rules from the local store are ignored and not enforced, regardless of the schema version and connection security rule version. The merge law for this option is to always use the value of the GroupPolicyRSoPStore.
<!-- Device-MdmStore-PrivateProfile-AllowLocalIpsecPolicyMerge-Description-End -->

<!-- Device-MdmStore-PrivateProfile-AllowLocalIpsecPolicyMerge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-AllowLocalIpsecPolicyMerge-Editable-End -->

<!-- Device-MdmStore-PrivateProfile-AllowLocalIpsecPolicyMerge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PrivateProfile-AllowLocalIpsecPolicyMerge-DFProperties-End -->

<!-- Device-MdmStore-PrivateProfile-AllowLocalIpsecPolicyMerge-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | AllowLocalIpsecPolicyMerge Off. |
| true (Default) | AllowLocalIpsecPolicyMerge On. |
<!-- Device-MdmStore-PrivateProfile-AllowLocalIpsecPolicyMerge-AllowedValues-End -->

<!-- Device-MdmStore-PrivateProfile-AllowLocalIpsecPolicyMerge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-AllowLocalIpsecPolicyMerge-Examples-End -->

<!-- Device-MdmStore-PrivateProfile-AllowLocalIpsecPolicyMerge-End -->

<!-- Device-MdmStore-PrivateProfile-AllowLocalPolicyMerge-Begin -->
#### MdmStore/PrivateProfile/AllowLocalPolicyMerge

<!-- Device-MdmStore-PrivateProfile-AllowLocalPolicyMerge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PrivateProfile-AllowLocalPolicyMerge-Applicability-End -->

<!-- Device-MdmStore-PrivateProfile-AllowLocalPolicyMerge-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/AllowLocalPolicyMerge
```
<!-- Device-MdmStore-PrivateProfile-AllowLocalPolicyMerge-OmaUri-End -->

<!-- Device-MdmStore-PrivateProfile-AllowLocalPolicyMerge-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is false, firewall rules from the local store are ignored and not enforced. The merge law for this option is to always use the value of the GroupPolicyRSoPStore. This value is valid for all schema versions.
<!-- Device-MdmStore-PrivateProfile-AllowLocalPolicyMerge-Description-End -->

<!-- Device-MdmStore-PrivateProfile-AllowLocalPolicyMerge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-AllowLocalPolicyMerge-Editable-End -->

<!-- Device-MdmStore-PrivateProfile-AllowLocalPolicyMerge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PrivateProfile-AllowLocalPolicyMerge-DFProperties-End -->

<!-- Device-MdmStore-PrivateProfile-AllowLocalPolicyMerge-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | AllowLocalPolicyMerge Off. |
| true (Default) | AllowLocalPolicyMerge On. |
<!-- Device-MdmStore-PrivateProfile-AllowLocalPolicyMerge-AllowedValues-End -->

<!-- Device-MdmStore-PrivateProfile-AllowLocalPolicyMerge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-AllowLocalPolicyMerge-Examples-End -->

<!-- Device-MdmStore-PrivateProfile-AllowLocalPolicyMerge-End -->

<!-- Device-MdmStore-PrivateProfile-AuthAppsAllowUserPrefMerge-Begin -->
#### MdmStore/PrivateProfile/AuthAppsAllowUserPrefMerge

<!-- Device-MdmStore-PrivateProfile-AuthAppsAllowUserPrefMerge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PrivateProfile-AuthAppsAllowUserPrefMerge-Applicability-End -->

<!-- Device-MdmStore-PrivateProfile-AuthAppsAllowUserPrefMerge-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/AuthAppsAllowUserPrefMerge
```
<!-- Device-MdmStore-PrivateProfile-AuthAppsAllowUserPrefMerge-OmaUri-End -->

<!-- Device-MdmStore-PrivateProfile-AuthAppsAllowUserPrefMerge-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is false, authorized application firewall rules in the local store are ignored and not enforced. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-PrivateProfile-AuthAppsAllowUserPrefMerge-Description-End -->

<!-- Device-MdmStore-PrivateProfile-AuthAppsAllowUserPrefMerge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-AuthAppsAllowUserPrefMerge-Editable-End -->

<!-- Device-MdmStore-PrivateProfile-AuthAppsAllowUserPrefMerge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PrivateProfile-AuthAppsAllowUserPrefMerge-DFProperties-End -->

<!-- Device-MdmStore-PrivateProfile-AuthAppsAllowUserPrefMerge-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | AuthAppsAllowUserPrefMerge Off. |
| true (Default) | AuthAppsAllowUserPrefMerge On. |
<!-- Device-MdmStore-PrivateProfile-AuthAppsAllowUserPrefMerge-AllowedValues-End -->

<!-- Device-MdmStore-PrivateProfile-AuthAppsAllowUserPrefMerge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-AuthAppsAllowUserPrefMerge-Examples-End -->

<!-- Device-MdmStore-PrivateProfile-AuthAppsAllowUserPrefMerge-End -->

<!-- Device-MdmStore-PrivateProfile-DefaultInboundAction-Begin -->
#### MdmStore/PrivateProfile/DefaultInboundAction

<!-- Device-MdmStore-PrivateProfile-DefaultInboundAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PrivateProfile-DefaultInboundAction-Applicability-End -->

<!-- Device-MdmStore-PrivateProfile-DefaultInboundAction-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/DefaultInboundAction
```
<!-- Device-MdmStore-PrivateProfile-DefaultInboundAction-OmaUri-End -->

<!-- Device-MdmStore-PrivateProfile-DefaultInboundAction-Description-Begin -->
<!-- Description-Source-DDF -->
This value is the action that the firewall does by default (and evaluates at the very end) on inbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 1 [Block]. The merge law for this option is to let the value of the GroupPolicyRSoPStore.win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-PrivateProfile-DefaultInboundAction-Description-End -->

<!-- Device-MdmStore-PrivateProfile-DefaultInboundAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-DefaultInboundAction-Editable-End -->

<!-- Device-MdmStore-PrivateProfile-DefaultInboundAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 1 |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PrivateProfile-DefaultInboundAction-DFProperties-End -->

<!-- Device-MdmStore-PrivateProfile-DefaultInboundAction-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Allow Inbound By Default. |
| 1 (Default) | Block Inbound By Default. |
<!-- Device-MdmStore-PrivateProfile-DefaultInboundAction-AllowedValues-End -->

<!-- Device-MdmStore-PrivateProfile-DefaultInboundAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-DefaultInboundAction-Examples-End -->

<!-- Device-MdmStore-PrivateProfile-DefaultInboundAction-End -->

<!-- Device-MdmStore-PrivateProfile-DefaultOutboundAction-Begin -->
#### MdmStore/PrivateProfile/DefaultOutboundAction

<!-- Device-MdmStore-PrivateProfile-DefaultOutboundAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PrivateProfile-DefaultOutboundAction-Applicability-End -->

<!-- Device-MdmStore-PrivateProfile-DefaultOutboundAction-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/DefaultOutboundAction
```
<!-- Device-MdmStore-PrivateProfile-DefaultOutboundAction-OmaUri-End -->

<!-- Device-MdmStore-PrivateProfile-DefaultOutboundAction-Description-Begin -->
<!-- Description-Source-DDF -->
This value is the action that the firewall does by default (and evaluates at the very end) on outbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 0 [Allow]. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-PrivateProfile-DefaultOutboundAction-Description-End -->

<!-- Device-MdmStore-PrivateProfile-DefaultOutboundAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-DefaultOutboundAction-Editable-End -->

<!-- Device-MdmStore-PrivateProfile-DefaultOutboundAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 0 |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PrivateProfile-DefaultOutboundAction-DFProperties-End -->

<!-- Device-MdmStore-PrivateProfile-DefaultOutboundAction-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allow Outbound By Default. |
| 1 | Block Outbound By Default. |
<!-- Device-MdmStore-PrivateProfile-DefaultOutboundAction-AllowedValues-End -->

<!-- Device-MdmStore-PrivateProfile-DefaultOutboundAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
<?xml version="1.0" encoding="utf-8"?>
<SyncML xmlns="SYNCML:SYNCML1.1">
<SyncBody>
    <!-- Block Outbound by default -->
    <Add>
      <CmdID>2010</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/DefaultOutboundAction</LocURI>
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
<!-- Device-MdmStore-PrivateProfile-DefaultOutboundAction-Examples-End -->

<!-- Device-MdmStore-PrivateProfile-DefaultOutboundAction-End -->

<!-- Device-MdmStore-PrivateProfile-DisableInboundNotifications-Begin -->
#### MdmStore/PrivateProfile/DisableInboundNotifications

<!-- Device-MdmStore-PrivateProfile-DisableInboundNotifications-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PrivateProfile-DisableInboundNotifications-Applicability-End -->

<!-- Device-MdmStore-PrivateProfile-DisableInboundNotifications-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/DisableInboundNotifications
```
<!-- Device-MdmStore-PrivateProfile-DisableInboundNotifications-OmaUri-End -->

<!-- Device-MdmStore-PrivateProfile-DisableInboundNotifications-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch. If this value is false, the firewall MAY display a notification to the user when an application is blocked from listening on a port. If this value is on, the firewall MUST NOT display such a notification. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-PrivateProfile-DisableInboundNotifications-Description-End -->

<!-- Device-MdmStore-PrivateProfile-DisableInboundNotifications-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-DisableInboundNotifications-Editable-End -->

<!-- Device-MdmStore-PrivateProfile-DisableInboundNotifications-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PrivateProfile-DisableInboundNotifications-DFProperties-End -->

<!-- Device-MdmStore-PrivateProfile-DisableInboundNotifications-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Firewall May Display Notification. |
| true | Firewall Must Not Display Notification. |
<!-- Device-MdmStore-PrivateProfile-DisableInboundNotifications-AllowedValues-End -->

<!-- Device-MdmStore-PrivateProfile-DisableInboundNotifications-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-DisableInboundNotifications-Examples-End -->

<!-- Device-MdmStore-PrivateProfile-DisableInboundNotifications-End -->

<!-- Device-MdmStore-PrivateProfile-DisableStealthMode-Begin -->
#### MdmStore/PrivateProfile/DisableStealthMode

<!-- Device-MdmStore-PrivateProfile-DisableStealthMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PrivateProfile-DisableStealthMode-Applicability-End -->

<!-- Device-MdmStore-PrivateProfile-DisableStealthMode-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/DisableStealthMode
```
<!-- Device-MdmStore-PrivateProfile-DisableStealthMode-OmaUri-End -->

<!-- Device-MdmStore-PrivateProfile-DisableStealthMode-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch. When this option is false, the server operates in stealth mode. The firewall rules used to enforce stealth mode are implementation-specific. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-PrivateProfile-DisableStealthMode-Description-End -->

<!-- Device-MdmStore-PrivateProfile-DisableStealthMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-DisableStealthMode-Editable-End -->

<!-- Device-MdmStore-PrivateProfile-DisableStealthMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PrivateProfile-DisableStealthMode-DFProperties-End -->

<!-- Device-MdmStore-PrivateProfile-DisableStealthMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Use Stealth Mode. |
| true | Disable Stealth Mode. |
<!-- Device-MdmStore-PrivateProfile-DisableStealthMode-AllowedValues-End -->

<!-- Device-MdmStore-PrivateProfile-DisableStealthMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-DisableStealthMode-Examples-End -->

<!-- Device-MdmStore-PrivateProfile-DisableStealthMode-End -->

<!-- Device-MdmStore-PrivateProfile-DisableStealthModeIpsecSecuredPacketExemption-Begin -->
#### MdmStore/PrivateProfile/DisableStealthModeIpsecSecuredPacketExemption

<!-- Device-MdmStore-PrivateProfile-DisableStealthModeIpsecSecuredPacketExemption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PrivateProfile-DisableStealthModeIpsecSecuredPacketExemption-Applicability-End -->

<!-- Device-MdmStore-PrivateProfile-DisableStealthModeIpsecSecuredPacketExemption-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/DisableStealthModeIpsecSecuredPacketExemption
```
<!-- Device-MdmStore-PrivateProfile-DisableStealthModeIpsecSecuredPacketExemption-OmaUri-End -->

<!-- Device-MdmStore-PrivateProfile-DisableStealthModeIpsecSecuredPacketExemption-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch. This option is ignored if DisableStealthMode is on. Otherwise, when this option is true, the firewall's stealth mode rules MUST NOT prevent the host computer from responding to unsolicited network traffic if that traffic is secured by IPsec. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used. For schema versions 0x0200, 0x0201, and 0x020A, this value is invalid and MUST NOT be used.
<!-- Device-MdmStore-PrivateProfile-DisableStealthModeIpsecSecuredPacketExemption-Description-End -->

<!-- Device-MdmStore-PrivateProfile-DisableStealthModeIpsecSecuredPacketExemption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-DisableStealthModeIpsecSecuredPacketExemption-Editable-End -->

<!-- Device-MdmStore-PrivateProfile-DisableStealthModeIpsecSecuredPacketExemption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PrivateProfile-DisableStealthModeIpsecSecuredPacketExemption-DFProperties-End -->

<!-- Device-MdmStore-PrivateProfile-DisableStealthModeIpsecSecuredPacketExemption-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | FALSE. |
| true (Default) | TRUE. |
<!-- Device-MdmStore-PrivateProfile-DisableStealthModeIpsecSecuredPacketExemption-AllowedValues-End -->

<!-- Device-MdmStore-PrivateProfile-DisableStealthModeIpsecSecuredPacketExemption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-DisableStealthModeIpsecSecuredPacketExemption-Examples-End -->

<!-- Device-MdmStore-PrivateProfile-DisableStealthModeIpsecSecuredPacketExemption-End -->

<!-- Device-MdmStore-PrivateProfile-DisableUnicastResponsesToMulticastBroadcast-Begin -->
#### MdmStore/PrivateProfile/DisableUnicastResponsesToMulticastBroadcast

<!-- Device-MdmStore-PrivateProfile-DisableUnicastResponsesToMulticastBroadcast-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PrivateProfile-DisableUnicastResponsesToMulticastBroadcast-Applicability-End -->

<!-- Device-MdmStore-PrivateProfile-DisableUnicastResponsesToMulticastBroadcast-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/DisableUnicastResponsesToMulticastBroadcast
```
<!-- Device-MdmStore-PrivateProfile-DisableUnicastResponsesToMulticastBroadcast-OmaUri-End -->

<!-- Device-MdmStore-PrivateProfile-DisableUnicastResponsesToMulticastBroadcast-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If it's true, unicast responses to multicast broadcast traffic is blocked. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-PrivateProfile-DisableUnicastResponsesToMulticastBroadcast-Description-End -->

<!-- Device-MdmStore-PrivateProfile-DisableUnicastResponsesToMulticastBroadcast-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-DisableUnicastResponsesToMulticastBroadcast-Editable-End -->

<!-- Device-MdmStore-PrivateProfile-DisableUnicastResponsesToMulticastBroadcast-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PrivateProfile-DisableUnicastResponsesToMulticastBroadcast-DFProperties-End -->

<!-- Device-MdmStore-PrivateProfile-DisableUnicastResponsesToMulticastBroadcast-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Unicast Responses Not Blocked. |
| true | Unicast Responses Blocked. |
<!-- Device-MdmStore-PrivateProfile-DisableUnicastResponsesToMulticastBroadcast-AllowedValues-End -->

<!-- Device-MdmStore-PrivateProfile-DisableUnicastResponsesToMulticastBroadcast-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-DisableUnicastResponsesToMulticastBroadcast-Examples-End -->

<!-- Device-MdmStore-PrivateProfile-DisableUnicastResponsesToMulticastBroadcast-End -->

<!-- Device-MdmStore-PrivateProfile-EnableFirewall-Begin -->
#### MdmStore/PrivateProfile/EnableFirewall

<!-- Device-MdmStore-PrivateProfile-EnableFirewall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PrivateProfile-EnableFirewall-Applicability-End -->

<!-- Device-MdmStore-PrivateProfile-EnableFirewall-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall
```
<!-- Device-MdmStore-PrivateProfile-EnableFirewall-OmaUri-End -->

<!-- Device-MdmStore-PrivateProfile-EnableFirewall-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch for the firewall and advanced security enforcement. If this value is false, the server MUST NOT block any network traffic, regardless of other policy settings. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-PrivateProfile-EnableFirewall-Description-End -->

<!-- Device-MdmStore-PrivateProfile-EnableFirewall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-EnableFirewall-Editable-End -->

<!-- Device-MdmStore-PrivateProfile-EnableFirewall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Get, Replace |
| Default Value  | true |
<!-- Device-MdmStore-PrivateProfile-EnableFirewall-DFProperties-End -->

<!-- Device-MdmStore-PrivateProfile-EnableFirewall-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disable Firewall. |
| true (Default) | Enable Firewall. |
<!-- Device-MdmStore-PrivateProfile-EnableFirewall-AllowedValues-End -->

<!-- Device-MdmStore-PrivateProfile-EnableFirewall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-EnableFirewall-Examples-End -->

<!-- Device-MdmStore-PrivateProfile-EnableFirewall-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogDroppedPackets-Begin -->
#### MdmStore/PrivateProfile/EnableLogDroppedPackets

<!-- Device-MdmStore-PrivateProfile-EnableLogDroppedPackets-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-PrivateProfile-EnableLogDroppedPackets-Applicability-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogDroppedPackets-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableLogDroppedPackets
```
<!-- Device-MdmStore-PrivateProfile-EnableLogDroppedPackets-OmaUri-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogDroppedPackets-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is on, the firewall logs all the dropped packets. The merge law for this option is to let "on" values win.
<!-- Device-MdmStore-PrivateProfile-EnableLogDroppedPackets-Description-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogDroppedPackets-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-EnableLogDroppedPackets-Editable-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogDroppedPackets-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PrivateProfile-EnableLogDroppedPackets-DFProperties-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogDroppedPackets-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disable Logging Of Dropped Packets. |
| true | Enable Logging Of Dropped Packets. |
<!-- Device-MdmStore-PrivateProfile-EnableLogDroppedPackets-AllowedValues-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogDroppedPackets-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-EnableLogDroppedPackets-Examples-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogDroppedPackets-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogIgnoredRules-Begin -->
#### MdmStore/PrivateProfile/EnableLogIgnoredRules

<!-- Device-MdmStore-PrivateProfile-EnableLogIgnoredRules-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-PrivateProfile-EnableLogIgnoredRules-Applicability-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogIgnoredRules-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableLogIgnoredRules
```
<!-- Device-MdmStore-PrivateProfile-EnableLogIgnoredRules-OmaUri-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogIgnoredRules-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. The server MAY use this value in an implementation-specific way to control logging of events if a rule isn't enforced for any reason. The merge law for this option is to let "on" values win.
<!-- Device-MdmStore-PrivateProfile-EnableLogIgnoredRules-Description-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogIgnoredRules-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-EnableLogIgnoredRules-Editable-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogIgnoredRules-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PrivateProfile-EnableLogIgnoredRules-DFProperties-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogIgnoredRules-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disable Logging Of Ignored Rules. |
| true | Enable Logging Of Ignored Rules. |
<!-- Device-MdmStore-PrivateProfile-EnableLogIgnoredRules-AllowedValues-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogIgnoredRules-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-EnableLogIgnoredRules-Examples-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogIgnoredRules-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogSuccessConnections-Begin -->
#### MdmStore/PrivateProfile/EnableLogSuccessConnections

<!-- Device-MdmStore-PrivateProfile-EnableLogSuccessConnections-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-PrivateProfile-EnableLogSuccessConnections-Applicability-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogSuccessConnections-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableLogSuccessConnections
```
<!-- Device-MdmStore-PrivateProfile-EnableLogSuccessConnections-OmaUri-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogSuccessConnections-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is on, the firewall logs all successful inbound connections. The merge law for this option is to let "on" values win.
<!-- Device-MdmStore-PrivateProfile-EnableLogSuccessConnections-Description-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogSuccessConnections-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-EnableLogSuccessConnections-Editable-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogSuccessConnections-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PrivateProfile-EnableLogSuccessConnections-DFProperties-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogSuccessConnections-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disable Logging Of Successful Connections. |
| true | Enable Logging Of Successful Connections. |
<!-- Device-MdmStore-PrivateProfile-EnableLogSuccessConnections-AllowedValues-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogSuccessConnections-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-EnableLogSuccessConnections-Examples-End -->

<!-- Device-MdmStore-PrivateProfile-EnableLogSuccessConnections-End -->

<!-- Device-MdmStore-PrivateProfile-GlobalPortsAllowUserPrefMerge-Begin -->
#### MdmStore/PrivateProfile/GlobalPortsAllowUserPrefMerge

<!-- Device-MdmStore-PrivateProfile-GlobalPortsAllowUserPrefMerge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PrivateProfile-GlobalPortsAllowUserPrefMerge-Applicability-End -->

<!-- Device-MdmStore-PrivateProfile-GlobalPortsAllowUserPrefMerge-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/GlobalPortsAllowUserPrefMerge
```
<!-- Device-MdmStore-PrivateProfile-GlobalPortsAllowUserPrefMerge-OmaUri-End -->

<!-- Device-MdmStore-PrivateProfile-GlobalPortsAllowUserPrefMerge-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is false, global port firewall rules in the local store are ignored and not enforced. The setting only has meaning if it's set or enumerated in the Group Policy store or if it's enumerated from the GroupPolicyRSoPStore. The merge law for this option is to let the value GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-PrivateProfile-GlobalPortsAllowUserPrefMerge-Description-End -->

<!-- Device-MdmStore-PrivateProfile-GlobalPortsAllowUserPrefMerge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-GlobalPortsAllowUserPrefMerge-Editable-End -->

<!-- Device-MdmStore-PrivateProfile-GlobalPortsAllowUserPrefMerge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PrivateProfile-GlobalPortsAllowUserPrefMerge-DFProperties-End -->

<!-- Device-MdmStore-PrivateProfile-GlobalPortsAllowUserPrefMerge-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | GlobalPortsAllowUserPrefMerge Off. |
| true (Default) | GlobalPortsAllowUserPrefMerge On. |
<!-- Device-MdmStore-PrivateProfile-GlobalPortsAllowUserPrefMerge-AllowedValues-End -->

<!-- Device-MdmStore-PrivateProfile-GlobalPortsAllowUserPrefMerge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-GlobalPortsAllowUserPrefMerge-Examples-End -->

<!-- Device-MdmStore-PrivateProfile-GlobalPortsAllowUserPrefMerge-End -->

<!-- Device-MdmStore-PrivateProfile-LogFilePath-Begin -->
#### MdmStore/PrivateProfile/LogFilePath

<!-- Device-MdmStore-PrivateProfile-LogFilePath-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-PrivateProfile-LogFilePath-Applicability-End -->

<!-- Device-MdmStore-PrivateProfile-LogFilePath-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/LogFilePath
```
<!-- Device-MdmStore-PrivateProfile-LogFilePath-OmaUri-End -->

<!-- Device-MdmStore-PrivateProfile-LogFilePath-Description-Begin -->
<!-- Description-Source-DDF -->
This value is a string that represents a file path to the log where the firewall logs dropped packets and successful connections. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured, otherwise the MdmStore value wins if it's configured, otherwise the local store value is used.
<!-- Device-MdmStore-PrivateProfile-LogFilePath-Description-End -->

<!-- Device-MdmStore-PrivateProfile-LogFilePath-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-LogFilePath-Editable-End -->

<!-- Device-MdmStore-PrivateProfile-LogFilePath-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
| Default Value  | %systemroot%\system32\LogFiles\Firewall\pfirewall.log |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PrivateProfile-LogFilePath-DFProperties-End -->

<!-- Device-MdmStore-PrivateProfile-LogFilePath-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-LogFilePath-Examples-End -->

<!-- Device-MdmStore-PrivateProfile-LogFilePath-End -->

<!-- Device-MdmStore-PrivateProfile-LogMaxFileSize-Begin -->
#### MdmStore/PrivateProfile/LogMaxFileSize

<!-- Device-MdmStore-PrivateProfile-LogMaxFileSize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-PrivateProfile-LogMaxFileSize-Applicability-End -->

<!-- Device-MdmStore-PrivateProfile-LogMaxFileSize-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/LogMaxFileSize
```
<!-- Device-MdmStore-PrivateProfile-LogMaxFileSize-OmaUri-End -->

<!-- Device-MdmStore-PrivateProfile-LogMaxFileSize-Description-Begin -->
<!-- Description-Source-DDF -->
This value specifies the size, in kilobytes, of the log file where dropped packets and successful connections are logged. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured, otherwise the MdmStore value wins if it's configured, otherwise the local store value is used.
<!-- Device-MdmStore-PrivateProfile-LogMaxFileSize-Description-End -->

<!-- Device-MdmStore-PrivateProfile-LogMaxFileSize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-LogMaxFileSize-Editable-End -->

<!-- Device-MdmStore-PrivateProfile-LogMaxFileSize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 1024 |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PrivateProfile-LogMaxFileSize-DFProperties-End -->

<!-- Device-MdmStore-PrivateProfile-LogMaxFileSize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-LogMaxFileSize-Examples-End -->

<!-- Device-MdmStore-PrivateProfile-LogMaxFileSize-End -->

<!-- Device-MdmStore-PrivateProfile-Shielded-Begin -->
#### MdmStore/PrivateProfile/Shielded

<!-- Device-MdmStore-PrivateProfile-Shielded-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PrivateProfile-Shielded-Applicability-End -->

<!-- Device-MdmStore-PrivateProfile-Shielded-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/Shielded
```
<!-- Device-MdmStore-PrivateProfile-Shielded-OmaUri-End -->

<!-- Device-MdmStore-PrivateProfile-Shielded-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is on and EnableFirewall is on, the server MUST block all incoming traffic regardless of other policy settings. The merge law for this option is to let "on" values win.
<!-- Device-MdmStore-PrivateProfile-Shielded-Description-End -->

<!-- Device-MdmStore-PrivateProfile-Shielded-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-Shielded-Editable-End -->

<!-- Device-MdmStore-PrivateProfile-Shielded-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PrivateProfile-Shielded-DFProperties-End -->

<!-- Device-MdmStore-PrivateProfile-Shielded-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Shielding Off. |
| true | Shielding On. |
<!-- Device-MdmStore-PrivateProfile-Shielded-AllowedValues-End -->

<!-- Device-MdmStore-PrivateProfile-Shielded-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PrivateProfile-Shielded-Examples-End -->

<!-- Device-MdmStore-PrivateProfile-Shielded-End -->

<!-- Device-MdmStore-PublicProfile-Begin -->
### MdmStore/PublicProfile

<!-- Device-MdmStore-PublicProfile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PublicProfile-Applicability-End -->

<!-- Device-MdmStore-PublicProfile-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PublicProfile
```
<!-- Device-MdmStore-PublicProfile-OmaUri-End -->

<!-- Device-MdmStore-PublicProfile-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-MdmStore-PublicProfile-Description-End -->

<!-- Device-MdmStore-PublicProfile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-Editable-End -->

<!-- Device-MdmStore-PublicProfile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MdmStore-PublicProfile-DFProperties-End -->

<!-- Device-MdmStore-PublicProfile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-Examples-End -->

<!-- Device-MdmStore-PublicProfile-End -->

<!-- Device-MdmStore-PublicProfile-AllowLocalIpsecPolicyMerge-Begin -->
#### MdmStore/PublicProfile/AllowLocalIpsecPolicyMerge

<!-- Device-MdmStore-PublicProfile-AllowLocalIpsecPolicyMerge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PublicProfile-AllowLocalIpsecPolicyMerge-Applicability-End -->

<!-- Device-MdmStore-PublicProfile-AllowLocalIpsecPolicyMerge-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PublicProfile/AllowLocalIpsecPolicyMerge
```
<!-- Device-MdmStore-PublicProfile-AllowLocalIpsecPolicyMerge-OmaUri-End -->

<!-- Device-MdmStore-PublicProfile-AllowLocalIpsecPolicyMerge-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch. If this value is false, connection security rules from the local store are ignored and not enforced, regardless of the schema version and connection security rule version. The merge law for this option is to always use the value of the GroupPolicyRSoPStore.
<!-- Device-MdmStore-PublicProfile-AllowLocalIpsecPolicyMerge-Description-End -->

<!-- Device-MdmStore-PublicProfile-AllowLocalIpsecPolicyMerge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-AllowLocalIpsecPolicyMerge-Editable-End -->

<!-- Device-MdmStore-PublicProfile-AllowLocalIpsecPolicyMerge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PublicProfile-AllowLocalIpsecPolicyMerge-DFProperties-End -->

<!-- Device-MdmStore-PublicProfile-AllowLocalIpsecPolicyMerge-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | AllowLocalIpsecPolicyMerge Off. |
| true (Default) | AllowLocalIpsecPolicyMerge On. |
<!-- Device-MdmStore-PublicProfile-AllowLocalIpsecPolicyMerge-AllowedValues-End -->

<!-- Device-MdmStore-PublicProfile-AllowLocalIpsecPolicyMerge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-AllowLocalIpsecPolicyMerge-Examples-End -->

<!-- Device-MdmStore-PublicProfile-AllowLocalIpsecPolicyMerge-End -->

<!-- Device-MdmStore-PublicProfile-AllowLocalPolicyMerge-Begin -->
#### MdmStore/PublicProfile/AllowLocalPolicyMerge

<!-- Device-MdmStore-PublicProfile-AllowLocalPolicyMerge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PublicProfile-AllowLocalPolicyMerge-Applicability-End -->

<!-- Device-MdmStore-PublicProfile-AllowLocalPolicyMerge-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PublicProfile/AllowLocalPolicyMerge
```
<!-- Device-MdmStore-PublicProfile-AllowLocalPolicyMerge-OmaUri-End -->

<!-- Device-MdmStore-PublicProfile-AllowLocalPolicyMerge-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is false, firewall rules from the local store are ignored and not enforced. The merge law for this option is to always use the value of the GroupPolicyRSoPStore. This value is valid for all schema versions.
<!-- Device-MdmStore-PublicProfile-AllowLocalPolicyMerge-Description-End -->

<!-- Device-MdmStore-PublicProfile-AllowLocalPolicyMerge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-AllowLocalPolicyMerge-Editable-End -->

<!-- Device-MdmStore-PublicProfile-AllowLocalPolicyMerge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PublicProfile-AllowLocalPolicyMerge-DFProperties-End -->

<!-- Device-MdmStore-PublicProfile-AllowLocalPolicyMerge-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | AllowLocalPolicyMerge Off. |
| true (Default) | AllowLocalPolicyMerge On. |
<!-- Device-MdmStore-PublicProfile-AllowLocalPolicyMerge-AllowedValues-End -->

<!-- Device-MdmStore-PublicProfile-AllowLocalPolicyMerge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-AllowLocalPolicyMerge-Examples-End -->

<!-- Device-MdmStore-PublicProfile-AllowLocalPolicyMerge-End -->

<!-- Device-MdmStore-PublicProfile-AuthAppsAllowUserPrefMerge-Begin -->
#### MdmStore/PublicProfile/AuthAppsAllowUserPrefMerge

<!-- Device-MdmStore-PublicProfile-AuthAppsAllowUserPrefMerge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PublicProfile-AuthAppsAllowUserPrefMerge-Applicability-End -->

<!-- Device-MdmStore-PublicProfile-AuthAppsAllowUserPrefMerge-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PublicProfile/AuthAppsAllowUserPrefMerge
```
<!-- Device-MdmStore-PublicProfile-AuthAppsAllowUserPrefMerge-OmaUri-End -->

<!-- Device-MdmStore-PublicProfile-AuthAppsAllowUserPrefMerge-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is false, authorized application firewall rules in the local store are ignored and not enforced. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-PublicProfile-AuthAppsAllowUserPrefMerge-Description-End -->

<!-- Device-MdmStore-PublicProfile-AuthAppsAllowUserPrefMerge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-AuthAppsAllowUserPrefMerge-Editable-End -->

<!-- Device-MdmStore-PublicProfile-AuthAppsAllowUserPrefMerge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PublicProfile-AuthAppsAllowUserPrefMerge-DFProperties-End -->

<!-- Device-MdmStore-PublicProfile-AuthAppsAllowUserPrefMerge-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | AuthAppsAllowUserPrefMerge Off. |
| true (Default) | AuthAppsAllowUserPrefMerge On. |
<!-- Device-MdmStore-PublicProfile-AuthAppsAllowUserPrefMerge-AllowedValues-End -->

<!-- Device-MdmStore-PublicProfile-AuthAppsAllowUserPrefMerge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-AuthAppsAllowUserPrefMerge-Examples-End -->

<!-- Device-MdmStore-PublicProfile-AuthAppsAllowUserPrefMerge-End -->

<!-- Device-MdmStore-PublicProfile-DefaultInboundAction-Begin -->
#### MdmStore/PublicProfile/DefaultInboundAction

<!-- Device-MdmStore-PublicProfile-DefaultInboundAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PublicProfile-DefaultInboundAction-Applicability-End -->

<!-- Device-MdmStore-PublicProfile-DefaultInboundAction-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PublicProfile/DefaultInboundAction
```
<!-- Device-MdmStore-PublicProfile-DefaultInboundAction-OmaUri-End -->

<!-- Device-MdmStore-PublicProfile-DefaultInboundAction-Description-Begin -->
<!-- Description-Source-DDF -->
This value is the action that the firewall does by default (and evaluates at the very end) on inbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 1 [Block]. The merge law for this option is to let the value of the GroupPolicyRSoPStore.win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-PublicProfile-DefaultInboundAction-Description-End -->

<!-- Device-MdmStore-PublicProfile-DefaultInboundAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-DefaultInboundAction-Editable-End -->

<!-- Device-MdmStore-PublicProfile-DefaultInboundAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 1 |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PublicProfile-DefaultInboundAction-DFProperties-End -->

<!-- Device-MdmStore-PublicProfile-DefaultInboundAction-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Allow Inbound By Default. |
| 1 (Default) | Block Inbound By Default. |
<!-- Device-MdmStore-PublicProfile-DefaultInboundAction-AllowedValues-End -->

<!-- Device-MdmStore-PublicProfile-DefaultInboundAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-DefaultInboundAction-Examples-End -->

<!-- Device-MdmStore-PublicProfile-DefaultInboundAction-End -->

<!-- Device-MdmStore-PublicProfile-DefaultOutboundAction-Begin -->
#### MdmStore/PublicProfile/DefaultOutboundAction

<!-- Device-MdmStore-PublicProfile-DefaultOutboundAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PublicProfile-DefaultOutboundAction-Applicability-End -->

<!-- Device-MdmStore-PublicProfile-DefaultOutboundAction-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PublicProfile/DefaultOutboundAction
```
<!-- Device-MdmStore-PublicProfile-DefaultOutboundAction-OmaUri-End -->

<!-- Device-MdmStore-PublicProfile-DefaultOutboundAction-Description-Begin -->
<!-- Description-Source-DDF -->
This value is the action that the firewall does by default (and evaluates at the very end) on outbound connections. The allow action is represented by 0x00000000; 0x00000001 represents a block action. Default value is 0 [Allow]. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-PublicProfile-DefaultOutboundAction-Description-End -->

<!-- Device-MdmStore-PublicProfile-DefaultOutboundAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-DefaultOutboundAction-Editable-End -->

<!-- Device-MdmStore-PublicProfile-DefaultOutboundAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 0 |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PublicProfile-DefaultOutboundAction-DFProperties-End -->

<!-- Device-MdmStore-PublicProfile-DefaultOutboundAction-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allow Outbound By Default. |
| 1 | Block Outbound By Default. |
<!-- Device-MdmStore-PublicProfile-DefaultOutboundAction-AllowedValues-End -->

<!-- Device-MdmStore-PublicProfile-DefaultOutboundAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
<?xml version="1.0" encoding="utf-8"?>
<SyncML xmlns="SYNCML:SYNCML1.1">
<SyncBody>
    <!-- Block Outbound by default -->
    <Add>
      <CmdID>2010</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/Firewall/MdmStore/PublicProfile/DefaultOutboundAction</LocURI>
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
<!-- Device-MdmStore-PublicProfile-DefaultOutboundAction-Examples-End -->

<!-- Device-MdmStore-PublicProfile-DefaultOutboundAction-End -->

<!-- Device-MdmStore-PublicProfile-DisableInboundNotifications-Begin -->
#### MdmStore/PublicProfile/DisableInboundNotifications

<!-- Device-MdmStore-PublicProfile-DisableInboundNotifications-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PublicProfile-DisableInboundNotifications-Applicability-End -->

<!-- Device-MdmStore-PublicProfile-DisableInboundNotifications-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PublicProfile/DisableInboundNotifications
```
<!-- Device-MdmStore-PublicProfile-DisableInboundNotifications-OmaUri-End -->

<!-- Device-MdmStore-PublicProfile-DisableInboundNotifications-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch. If this value is false, the firewall MAY display a notification to the user when an application is blocked from listening on a port. If this value is on, the firewall MUST NOT display such a notification. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-PublicProfile-DisableInboundNotifications-Description-End -->

<!-- Device-MdmStore-PublicProfile-DisableInboundNotifications-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-DisableInboundNotifications-Editable-End -->

<!-- Device-MdmStore-PublicProfile-DisableInboundNotifications-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PublicProfile-DisableInboundNotifications-DFProperties-End -->

<!-- Device-MdmStore-PublicProfile-DisableInboundNotifications-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Firewall May Display Notification. |
| true | Firewall Must Not Display Notification. |
<!-- Device-MdmStore-PublicProfile-DisableInboundNotifications-AllowedValues-End -->

<!-- Device-MdmStore-PublicProfile-DisableInboundNotifications-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-DisableInboundNotifications-Examples-End -->

<!-- Device-MdmStore-PublicProfile-DisableInboundNotifications-End -->

<!-- Device-MdmStore-PublicProfile-DisableStealthMode-Begin -->
#### MdmStore/PublicProfile/DisableStealthMode

<!-- Device-MdmStore-PublicProfile-DisableStealthMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PublicProfile-DisableStealthMode-Applicability-End -->

<!-- Device-MdmStore-PublicProfile-DisableStealthMode-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PublicProfile/DisableStealthMode
```
<!-- Device-MdmStore-PublicProfile-DisableStealthMode-OmaUri-End -->

<!-- Device-MdmStore-PublicProfile-DisableStealthMode-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch. When this option is false, the server operates in stealth mode. The firewall rules used to enforce stealth mode are implementation-specific. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-PublicProfile-DisableStealthMode-Description-End -->

<!-- Device-MdmStore-PublicProfile-DisableStealthMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-DisableStealthMode-Editable-End -->

<!-- Device-MdmStore-PublicProfile-DisableStealthMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PublicProfile-DisableStealthMode-DFProperties-End -->

<!-- Device-MdmStore-PublicProfile-DisableStealthMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Use Stealth Mode. |
| true | Disable Stealth Mode. |
<!-- Device-MdmStore-PublicProfile-DisableStealthMode-AllowedValues-End -->

<!-- Device-MdmStore-PublicProfile-DisableStealthMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-DisableStealthMode-Examples-End -->

<!-- Device-MdmStore-PublicProfile-DisableStealthMode-End -->

<!-- Device-MdmStore-PublicProfile-DisableStealthModeIpsecSecuredPacketExemption-Begin -->
#### MdmStore/PublicProfile/DisableStealthModeIpsecSecuredPacketExemption

<!-- Device-MdmStore-PublicProfile-DisableStealthModeIpsecSecuredPacketExemption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PublicProfile-DisableStealthModeIpsecSecuredPacketExemption-Applicability-End -->

<!-- Device-MdmStore-PublicProfile-DisableStealthModeIpsecSecuredPacketExemption-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PublicProfile/DisableStealthModeIpsecSecuredPacketExemption
```
<!-- Device-MdmStore-PublicProfile-DisableStealthModeIpsecSecuredPacketExemption-OmaUri-End -->

<!-- Device-MdmStore-PublicProfile-DisableStealthModeIpsecSecuredPacketExemption-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch. This option is ignored if DisableStealthMode is on. Otherwise, when this option is true, the firewall's stealth mode rules MUST NOT prevent the host computer from responding to unsolicited network traffic if that traffic is secured by IPsec. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used. For schema versions 0x0200, 0x0201, and 0x020A, this value is invalid and MUST NOT be used.
<!-- Device-MdmStore-PublicProfile-DisableStealthModeIpsecSecuredPacketExemption-Description-End -->

<!-- Device-MdmStore-PublicProfile-DisableStealthModeIpsecSecuredPacketExemption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-DisableStealthModeIpsecSecuredPacketExemption-Editable-End -->

<!-- Device-MdmStore-PublicProfile-DisableStealthModeIpsecSecuredPacketExemption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PublicProfile-DisableStealthModeIpsecSecuredPacketExemption-DFProperties-End -->

<!-- Device-MdmStore-PublicProfile-DisableStealthModeIpsecSecuredPacketExemption-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | FALSE. |
| true (Default) | TRUE. |
<!-- Device-MdmStore-PublicProfile-DisableStealthModeIpsecSecuredPacketExemption-AllowedValues-End -->

<!-- Device-MdmStore-PublicProfile-DisableStealthModeIpsecSecuredPacketExemption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-DisableStealthModeIpsecSecuredPacketExemption-Examples-End -->

<!-- Device-MdmStore-PublicProfile-DisableStealthModeIpsecSecuredPacketExemption-End -->

<!-- Device-MdmStore-PublicProfile-DisableUnicastResponsesToMulticastBroadcast-Begin -->
#### MdmStore/PublicProfile/DisableUnicastResponsesToMulticastBroadcast

<!-- Device-MdmStore-PublicProfile-DisableUnicastResponsesToMulticastBroadcast-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PublicProfile-DisableUnicastResponsesToMulticastBroadcast-Applicability-End -->

<!-- Device-MdmStore-PublicProfile-DisableUnicastResponsesToMulticastBroadcast-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PublicProfile/DisableUnicastResponsesToMulticastBroadcast
```
<!-- Device-MdmStore-PublicProfile-DisableUnicastResponsesToMulticastBroadcast-OmaUri-End -->

<!-- Device-MdmStore-PublicProfile-DisableUnicastResponsesToMulticastBroadcast-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If it's true, unicast responses to multicast broadcast traffic is blocked. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-PublicProfile-DisableUnicastResponsesToMulticastBroadcast-Description-End -->

<!-- Device-MdmStore-PublicProfile-DisableUnicastResponsesToMulticastBroadcast-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-DisableUnicastResponsesToMulticastBroadcast-Editable-End -->

<!-- Device-MdmStore-PublicProfile-DisableUnicastResponsesToMulticastBroadcast-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PublicProfile-DisableUnicastResponsesToMulticastBroadcast-DFProperties-End -->

<!-- Device-MdmStore-PublicProfile-DisableUnicastResponsesToMulticastBroadcast-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Unicast Responses Not Blocked. |
| true | Unicast Responses Blocked. |
<!-- Device-MdmStore-PublicProfile-DisableUnicastResponsesToMulticastBroadcast-AllowedValues-End -->

<!-- Device-MdmStore-PublicProfile-DisableUnicastResponsesToMulticastBroadcast-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-DisableUnicastResponsesToMulticastBroadcast-Examples-End -->

<!-- Device-MdmStore-PublicProfile-DisableUnicastResponsesToMulticastBroadcast-End -->

<!-- Device-MdmStore-PublicProfile-EnableFirewall-Begin -->
#### MdmStore/PublicProfile/EnableFirewall

<!-- Device-MdmStore-PublicProfile-EnableFirewall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PublicProfile-EnableFirewall-Applicability-End -->

<!-- Device-MdmStore-PublicProfile-EnableFirewall-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall
```
<!-- Device-MdmStore-PublicProfile-EnableFirewall-OmaUri-End -->

<!-- Device-MdmStore-PublicProfile-EnableFirewall-Description-Begin -->
<!-- Description-Source-DDF -->
This value is an on/off switch for the firewall and advanced security enforcement. If this value is false, the server MUST NOT block any network traffic, regardless of other policy settings. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-PublicProfile-EnableFirewall-Description-End -->

<!-- Device-MdmStore-PublicProfile-EnableFirewall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-EnableFirewall-Editable-End -->

<!-- Device-MdmStore-PublicProfile-EnableFirewall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
<!-- Device-MdmStore-PublicProfile-EnableFirewall-DFProperties-End -->

<!-- Device-MdmStore-PublicProfile-EnableFirewall-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disable Firewall. |
| true (Default) | Enable Firewall. |
<!-- Device-MdmStore-PublicProfile-EnableFirewall-AllowedValues-End -->

<!-- Device-MdmStore-PublicProfile-EnableFirewall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-EnableFirewall-Examples-End -->

<!-- Device-MdmStore-PublicProfile-EnableFirewall-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogDroppedPackets-Begin -->
#### MdmStore/PublicProfile/EnableLogDroppedPackets

<!-- Device-MdmStore-PublicProfile-EnableLogDroppedPackets-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-PublicProfile-EnableLogDroppedPackets-Applicability-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogDroppedPackets-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableLogDroppedPackets
```
<!-- Device-MdmStore-PublicProfile-EnableLogDroppedPackets-OmaUri-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogDroppedPackets-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is on, the firewall logs all the dropped packets. The merge law for this option is to let "on" values win.
<!-- Device-MdmStore-PublicProfile-EnableLogDroppedPackets-Description-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogDroppedPackets-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-EnableLogDroppedPackets-Editable-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogDroppedPackets-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PublicProfile-EnableLogDroppedPackets-DFProperties-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogDroppedPackets-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disable Logging Of Dropped Packets. |
| true | Enable Logging Of Dropped Packets. |
<!-- Device-MdmStore-PublicProfile-EnableLogDroppedPackets-AllowedValues-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogDroppedPackets-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-EnableLogDroppedPackets-Examples-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogDroppedPackets-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogIgnoredRules-Begin -->
#### MdmStore/PublicProfile/EnableLogIgnoredRules

<!-- Device-MdmStore-PublicProfile-EnableLogIgnoredRules-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-PublicProfile-EnableLogIgnoredRules-Applicability-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogIgnoredRules-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableLogIgnoredRules
```
<!-- Device-MdmStore-PublicProfile-EnableLogIgnoredRules-OmaUri-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogIgnoredRules-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. The server MAY use this value in an implementation-specific way to control logging of events if a rule isn't enforced for any reason. The merge law for this option is to let "on" values win.
<!-- Device-MdmStore-PublicProfile-EnableLogIgnoredRules-Description-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogIgnoredRules-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-EnableLogIgnoredRules-Editable-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogIgnoredRules-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PublicProfile-EnableLogIgnoredRules-DFProperties-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogIgnoredRules-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disable Logging Of Ignored Rules. |
| true | Enable Logging Of Ignored Rules. |
<!-- Device-MdmStore-PublicProfile-EnableLogIgnoredRules-AllowedValues-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogIgnoredRules-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-EnableLogIgnoredRules-Examples-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogIgnoredRules-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogSuccessConnections-Begin -->
#### MdmStore/PublicProfile/EnableLogSuccessConnections

<!-- Device-MdmStore-PublicProfile-EnableLogSuccessConnections-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-PublicProfile-EnableLogSuccessConnections-Applicability-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogSuccessConnections-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableLogSuccessConnections
```
<!-- Device-MdmStore-PublicProfile-EnableLogSuccessConnections-OmaUri-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogSuccessConnections-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is on, the firewall logs all successful inbound connections. The merge law for this option is to let "on" values win.
<!-- Device-MdmStore-PublicProfile-EnableLogSuccessConnections-Description-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogSuccessConnections-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-EnableLogSuccessConnections-Editable-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogSuccessConnections-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PublicProfile-EnableLogSuccessConnections-DFProperties-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogSuccessConnections-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disable Logging Of Successful Connections. |
| true | Enable Logging Of Successful Connections. |
<!-- Device-MdmStore-PublicProfile-EnableLogSuccessConnections-AllowedValues-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogSuccessConnections-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-EnableLogSuccessConnections-Examples-End -->

<!-- Device-MdmStore-PublicProfile-EnableLogSuccessConnections-End -->

<!-- Device-MdmStore-PublicProfile-GlobalPortsAllowUserPrefMerge-Begin -->
#### MdmStore/PublicProfile/GlobalPortsAllowUserPrefMerge

<!-- Device-MdmStore-PublicProfile-GlobalPortsAllowUserPrefMerge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PublicProfile-GlobalPortsAllowUserPrefMerge-Applicability-End -->

<!-- Device-MdmStore-PublicProfile-GlobalPortsAllowUserPrefMerge-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PublicProfile/GlobalPortsAllowUserPrefMerge
```
<!-- Device-MdmStore-PublicProfile-GlobalPortsAllowUserPrefMerge-OmaUri-End -->

<!-- Device-MdmStore-PublicProfile-GlobalPortsAllowUserPrefMerge-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is false, global port firewall rules in the local store are ignored and not enforced. The setting only has meaning if it's set or enumerated in the Group Policy store or if it's enumerated from the GroupPolicyRSoPStore. The merge law for this option is to let the value GroupPolicyRSoPStore win if it's configured; otherwise, the local store value is used.
<!-- Device-MdmStore-PublicProfile-GlobalPortsAllowUserPrefMerge-Description-End -->

<!-- Device-MdmStore-PublicProfile-GlobalPortsAllowUserPrefMerge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-GlobalPortsAllowUserPrefMerge-Editable-End -->

<!-- Device-MdmStore-PublicProfile-GlobalPortsAllowUserPrefMerge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PublicProfile-GlobalPortsAllowUserPrefMerge-DFProperties-End -->

<!-- Device-MdmStore-PublicProfile-GlobalPortsAllowUserPrefMerge-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | GlobalPortsAllowUserPrefMerge Off. |
| true (Default) | GlobalPortsAllowUserPrefMerge On. |
<!-- Device-MdmStore-PublicProfile-GlobalPortsAllowUserPrefMerge-AllowedValues-End -->

<!-- Device-MdmStore-PublicProfile-GlobalPortsAllowUserPrefMerge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-GlobalPortsAllowUserPrefMerge-Examples-End -->

<!-- Device-MdmStore-PublicProfile-GlobalPortsAllowUserPrefMerge-End -->

<!-- Device-MdmStore-PublicProfile-LogFilePath-Begin -->
#### MdmStore/PublicProfile/LogFilePath

<!-- Device-MdmStore-PublicProfile-LogFilePath-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-PublicProfile-LogFilePath-Applicability-End -->

<!-- Device-MdmStore-PublicProfile-LogFilePath-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PublicProfile/LogFilePath
```
<!-- Device-MdmStore-PublicProfile-LogFilePath-OmaUri-End -->

<!-- Device-MdmStore-PublicProfile-LogFilePath-Description-Begin -->
<!-- Description-Source-DDF -->
This value is a string that represents a file path to the log where the firewall logs dropped packets and successful connections. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured, otherwise the MdmStore value wins if it's configured, otherwise the local store value is used.
<!-- Device-MdmStore-PublicProfile-LogFilePath-Description-End -->

<!-- Device-MdmStore-PublicProfile-LogFilePath-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-LogFilePath-Editable-End -->

<!-- Device-MdmStore-PublicProfile-LogFilePath-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
| Default Value  | %systemroot%\system32\LogFiles\Firewall\pfirewall.log |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PublicProfile-LogFilePath-DFProperties-End -->

<!-- Device-MdmStore-PublicProfile-LogFilePath-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-LogFilePath-Examples-End -->

<!-- Device-MdmStore-PublicProfile-LogFilePath-End -->

<!-- Device-MdmStore-PublicProfile-LogMaxFileSize-Begin -->
#### MdmStore/PublicProfile/LogMaxFileSize

<!-- Device-MdmStore-PublicProfile-LogMaxFileSize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-MdmStore-PublicProfile-LogMaxFileSize-Applicability-End -->

<!-- Device-MdmStore-PublicProfile-LogMaxFileSize-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PublicProfile/LogMaxFileSize
```
<!-- Device-MdmStore-PublicProfile-LogMaxFileSize-OmaUri-End -->

<!-- Device-MdmStore-PublicProfile-LogMaxFileSize-Description-Begin -->
<!-- Description-Source-DDF -->
This value specifies the size, in kilobytes, of the log file where dropped packets and successful connections are logged. The merge law for this option is to let the value of the GroupPolicyRSoPStore win if it's configured, otherwise the MdmStore value wins if it's configured, otherwise the local store value is used.
<!-- Device-MdmStore-PublicProfile-LogMaxFileSize-Description-End -->

<!-- Device-MdmStore-PublicProfile-LogMaxFileSize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-LogMaxFileSize-Editable-End -->

<!-- Device-MdmStore-PublicProfile-LogMaxFileSize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 1024 |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PublicProfile-LogMaxFileSize-DFProperties-End -->

<!-- Device-MdmStore-PublicProfile-LogMaxFileSize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-LogMaxFileSize-Examples-End -->

<!-- Device-MdmStore-PublicProfile-LogMaxFileSize-End -->

<!-- Device-MdmStore-PublicProfile-Shielded-Begin -->
#### MdmStore/PublicProfile/Shielded

<!-- Device-MdmStore-PublicProfile-Shielded-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-MdmStore-PublicProfile-Shielded-Applicability-End -->

<!-- Device-MdmStore-PublicProfile-Shielded-OmaUri-Begin -->
```Device
./Vendor/MSFT/Firewall/MdmStore/PublicProfile/Shielded
```
<!-- Device-MdmStore-PublicProfile-Shielded-OmaUri-End -->

<!-- Device-MdmStore-PublicProfile-Shielded-Description-Begin -->
<!-- Description-Source-DDF -->
This value is used as an on/off switch. If this value is on and EnableFirewall is on, the server MUST block all incoming traffic regardless of other policy settings. The merge law for this option is to let "on" values win.
<!-- Device-MdmStore-PublicProfile-Shielded-Description-End -->

<!-- Device-MdmStore-PublicProfile-Shielded-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-Shielded-Editable-End -->

<!-- Device-MdmStore-PublicProfile-Shielded-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
| Dependency [Enable Firewall] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableFirewall` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-MdmStore-PublicProfile-Shielded-DFProperties-End -->

<!-- Device-MdmStore-PublicProfile-Shielded-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Shielding Off. |
| true | Shielding On. |
<!-- Device-MdmStore-PublicProfile-Shielded-AllowedValues-End -->

<!-- Device-MdmStore-PublicProfile-Shielded-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmStore-PublicProfile-Shielded-Examples-End -->

<!-- Device-MdmStore-PublicProfile-Shielded-End -->

<!-- Firewall-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Firewall-CspMoreInfo-End -->

<!-- Firewall-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
