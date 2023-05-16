---
title: VPNv2 CSP
description: Learn more about the VPNv2 CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/11/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- VPNv2-Begin -->
# VPNv2 CSP

<!-- VPNv2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The VPNv2 configuration service provider allows the Mobile Device Management (MDM) server to configure the VPN profile of the device.

Here are the requirements for this CSP:

- VPN configuration commands must be wrapped in an Atomic block in SyncML.
- For best results, configure your VPN certificates first before pushing down VPN profiles to devices. If you're using Windows Information Protection (WIP) (formerly known as Enterprise Data Protection), then you should configure VPN first before you configure Windows Information Protection policies.
- In certain conditions you can change some properties directly, but we don't recommend it. Instead, follow these steps to make any changes:

  - Send a Delete command for the ProfileName to delete the entire profile.
  - Send the entire profile again with new values wrapped in an Atomic block.

The XSDs for all EAP methods are shipped in the box and can be found at the following locations:

- `C:\Windows\schemas\EAPHost`
- `C:\Windows\schemas\EAPMethods`
<!-- VPNv2-Editable-End -->

<!-- VPNv2-Tree-Begin -->
The following list shows the VPNv2 configuration service provider nodes:

- ./Device/Vendor/MSFT/VPNv2
  - [{ProfileName}](#deviceprofilename)
    - [AlwaysOn](#deviceprofilenamealwayson)
    - [AlwaysOnActive](#deviceprofilenamealwaysonactive)
    - [APNBinding](#deviceprofilenameapnbinding)
      - [AccessPointName](#deviceprofilenameapnbindingaccesspointname)
      - [AuthenticationType](#deviceprofilenameapnbindingauthenticationtype)
      - [IsCompressionEnabled](#deviceprofilenameapnbindingiscompressionenabled)
      - [Password](#deviceprofilenameapnbindingpassword)
      - [ProviderId](#deviceprofilenameapnbindingproviderid)
      - [UserName](#deviceprofilenameapnbindingusername)
    - [AppTriggerList](#deviceprofilenameapptriggerlist)
      - [{appTriggerRowId}](#deviceprofilenameapptriggerlistapptriggerrowid)
        - [App](#deviceprofilenameapptriggerlistapptriggerrowidapp)
          - [Id](#deviceprofilenameapptriggerlistapptriggerrowidappid)
          - [Type](#deviceprofilenameapptriggerlistapptriggerrowidapptype)
    - [ByPassForLocal](#deviceprofilenamebypassforlocal)
    - [DataEncryption](#deviceprofilenamedataencryption)
    - [DeviceCompliance](#deviceprofilenamedevicecompliance)
      - [Enabled](#deviceprofilenamedevicecomplianceenabled)
      - [Sso](#deviceprofilenamedevicecompliancesso)
        - [Eku](#deviceprofilenamedevicecompliancessoeku)
        - [Enabled](#deviceprofilenamedevicecompliancessoenabled)
        - [IssuerHash](#deviceprofilenamedevicecompliancessoissuerhash)
    - [DeviceTunnel](#deviceprofilenamedevicetunnel)
    - [DisableAdvancedOptionsEditButton](#deviceprofilenamedisableadvancedoptionseditbutton)
    - [DisableDisconnectButton](#deviceprofilenamedisabledisconnectbutton)
    - [DisableIKEv2Fragmentation](#deviceprofilenamedisableikev2fragmentation)
    - [DnsSuffix](#deviceprofilenamednssuffix)
    - [DomainNameInformationList](#deviceprofilenamedomainnameinformationlist)
      - [{dniRowId}](#deviceprofilenamedomainnameinformationlistdnirowid)
        - [AutoTrigger](#deviceprofilenamedomainnameinformationlistdnirowidautotrigger)
        - [DnsServers](#deviceprofilenamedomainnameinformationlistdnirowiddnsservers)
        - [DomainName](#deviceprofilenamedomainnameinformationlistdnirowiddomainname)
        - [DomainNameType](#deviceprofilenamedomainnameinformationlistdnirowiddomainnametype)
        - [Persistent](#deviceprofilenamedomainnameinformationlistdnirowidpersistent)
        - [WebProxyServers](#deviceprofilenamedomainnameinformationlistdnirowidwebproxyservers)
    - [EdpModeId](#deviceprofilenameedpmodeid)
    - [IPv4InterfaceMetric](#deviceprofilenameipv4interfacemetric)
    - [IPv6InterfaceMetric](#deviceprofilenameipv6interfacemetric)
    - [NativeProfile](#deviceprofilenamenativeprofile)
      - [Authentication](#deviceprofilenamenativeprofileauthentication)
        - [Certificate](#deviceprofilenamenativeprofileauthenticationcertificate)
          - [Eku](#deviceprofilenamenativeprofileauthenticationcertificateeku)
          - [Issuer](#deviceprofilenamenativeprofileauthenticationcertificateissuer)
        - [Eap](#deviceprofilenamenativeprofileauthenticationeap)
          - [Configuration](#deviceprofilenamenativeprofileauthenticationeapconfiguration)
          - [Type](#deviceprofilenamenativeprofileauthenticationeaptype)
        - [MachineMethod](#deviceprofilenamenativeprofileauthenticationmachinemethod)
        - [UserMethod](#deviceprofilenamenativeprofileauthenticationusermethod)
      - [CryptographySuite](#deviceprofilenamenativeprofilecryptographysuite)
        - [AuthenticationTransformConstants](#deviceprofilenamenativeprofilecryptographysuiteauthenticationtransformconstants)
        - [CipherTransformConstants](#deviceprofilenamenativeprofilecryptographysuiteciphertransformconstants)
        - [DHGroup](#deviceprofilenamenativeprofilecryptographysuitedhgroup)
        - [EncryptionMethod](#deviceprofilenamenativeprofilecryptographysuiteencryptionmethod)
        - [IntegrityCheckMethod](#deviceprofilenamenativeprofilecryptographysuiteintegritycheckmethod)
        - [PfsGroup](#deviceprofilenamenativeprofilecryptographysuitepfsgroup)
      - [DisableClassBasedDefaultRoute](#deviceprofilenamenativeprofiledisableclassbaseddefaultroute)
      - [L2tpPsk](#deviceprofilenamenativeprofilel2tppsk)
      - [NativeProtocolType](#deviceprofilenamenativeprofilenativeprotocoltype)
      - [PlumbIKEv2TSAsRoutes](#deviceprofilenamenativeprofileplumbikev2tsasroutes)
      - [ProtocolList](#deviceprofilenamenativeprofileprotocollist)
        - [NativeProtocolList](#deviceprofilenamenativeprofileprotocollistnativeprotocollist)
          - [{NativeProtocolRowId}](#deviceprofilenamenativeprofileprotocollistnativeprotocollistnativeprotocolrowid)
            - [Type](#deviceprofilenamenativeprofileprotocollistnativeprotocollistnativeprotocolrowidtype)
        - [RetryTimeInHours](#deviceprofilenamenativeprofileprotocollistretrytimeinhours)
      - [RoutingPolicyType](#deviceprofilenamenativeprofileroutingpolicytype)
      - [Servers](#deviceprofilenamenativeprofileservers)
    - [NetworkOutageTime](#deviceprofilenamenetworkoutagetime)
    - [PluginProfile](#deviceprofilenamepluginprofile)
      - [CustomConfiguration](#deviceprofilenamepluginprofilecustomconfiguration)
      - [PluginPackageFamilyName](#deviceprofilenamepluginprofilepluginpackagefamilyname)
      - [ServerUrlList](#deviceprofilenamepluginprofileserverurllist)
    - [PrivateNetwork](#deviceprofilenameprivatenetwork)
    - [ProfileXML](#deviceprofilenameprofilexml)
    - [Proxy](#deviceprofilenameproxy)
      - [AutoConfigUrl](#deviceprofilenameproxyautoconfigurl)
      - [Manual](#deviceprofilenameproxymanual)
        - [Server](#deviceprofilenameproxymanualserver)
    - [RegisterDNS](#deviceprofilenameregisterdns)
    - [RememberCredentials](#deviceprofilenameremembercredentials)
    - [RouteList](#deviceprofilenameroutelist)
      - [{routeRowId}](#deviceprofilenameroutelistrouterowid)
        - [Address](#deviceprofilenameroutelistrouterowidaddress)
        - [ExclusionRoute](#deviceprofilenameroutelistrouterowidexclusionroute)
        - [Metric](#deviceprofilenameroutelistrouterowidmetric)
        - [PrefixSize](#deviceprofilenameroutelistrouterowidprefixsize)
    - [TrafficFilterList](#deviceprofilenametrafficfilterlist)
      - [{trafficFilterId}](#deviceprofilenametrafficfilterlisttrafficfilterid)
        - [App](#deviceprofilenametrafficfilterlisttrafficfilteridapp)
          - [Id](#deviceprofilenametrafficfilterlisttrafficfilteridappid)
          - [Type](#deviceprofilenametrafficfilterlisttrafficfilteridapptype)
        - [Claims](#deviceprofilenametrafficfilterlisttrafficfilteridclaims)
        - [Direction](#deviceprofilenametrafficfilterlisttrafficfilteriddirection)
        - [LocalAddressRanges](#deviceprofilenametrafficfilterlisttrafficfilteridlocaladdressranges)
        - [LocalPortRanges](#deviceprofilenametrafficfilterlisttrafficfilteridlocalportranges)
        - [Protocol](#deviceprofilenametrafficfilterlisttrafficfilteridprotocol)
        - [RemoteAddressRanges](#deviceprofilenametrafficfilterlisttrafficfilteridremoteaddressranges)
        - [RemotePortRanges](#deviceprofilenametrafficfilterlisttrafficfilteridremoteportranges)
        - [RoutingPolicyType](#deviceprofilenametrafficfilterlisttrafficfilteridroutingpolicytype)
    - [TrustedNetworkDetection](#deviceprofilenametrustednetworkdetection)
    - [UseRasCredentials](#deviceprofilenameuserascredentials)
- ./User/Vendor/MSFT/VPNv2
  - [{ProfileName}](#userprofilename)
    - [AlwaysOn](#userprofilenamealwayson)
    - [AlwaysOnActive](#userprofilenamealwaysonactive)
    - [APNBinding](#userprofilenameapnbinding)
      - [AccessPointName](#userprofilenameapnbindingaccesspointname)
      - [AuthenticationType](#userprofilenameapnbindingauthenticationtype)
      - [IsCompressionEnabled](#userprofilenameapnbindingiscompressionenabled)
      - [Password](#userprofilenameapnbindingpassword)
      - [ProviderId](#userprofilenameapnbindingproviderid)
      - [UserName](#userprofilenameapnbindingusername)
    - [AppTriggerList](#userprofilenameapptriggerlist)
      - [{appTriggerRowId}](#userprofilenameapptriggerlistapptriggerrowid)
        - [App](#userprofilenameapptriggerlistapptriggerrowidapp)
          - [Id](#userprofilenameapptriggerlistapptriggerrowidappid)
          - [Type](#userprofilenameapptriggerlistapptriggerrowidapptype)
    - [ByPassForLocal](#userprofilenamebypassforlocal)
    - [DataEncryption](#userprofilenamedataencryption)
    - [DeviceCompliance](#userprofilenamedevicecompliance)
      - [Enabled](#userprofilenamedevicecomplianceenabled)
      - [Sso](#userprofilenamedevicecompliancesso)
        - [Eku](#userprofilenamedevicecompliancessoeku)
        - [Enabled](#userprofilenamedevicecompliancessoenabled)
        - [IssuerHash](#userprofilenamedevicecompliancessoissuerhash)
    - [DisableAdvancedOptionsEditButton](#userprofilenamedisableadvancedoptionseditbutton)
    - [DisableDisconnectButton](#userprofilenamedisabledisconnectbutton)
    - [DisableIKEv2Fragmentation](#userprofilenamedisableikev2fragmentation)
    - [DnsSuffix](#userprofilenamednssuffix)
    - [DomainNameInformationList](#userprofilenamedomainnameinformationlist)
      - [{dniRowId}](#userprofilenamedomainnameinformationlistdnirowid)
        - [AutoTrigger](#userprofilenamedomainnameinformationlistdnirowidautotrigger)
        - [DnsServers](#userprofilenamedomainnameinformationlistdnirowiddnsservers)
        - [DomainName](#userprofilenamedomainnameinformationlistdnirowiddomainname)
        - [DomainNameType](#userprofilenamedomainnameinformationlistdnirowiddomainnametype)
        - [Persistent](#userprofilenamedomainnameinformationlistdnirowidpersistent)
        - [WebProxyServers](#userprofilenamedomainnameinformationlistdnirowidwebproxyservers)
    - [EdpModeId](#userprofilenameedpmodeid)
    - [IPv4InterfaceMetric](#userprofilenameipv4interfacemetric)
    - [IPv6InterfaceMetric](#userprofilenameipv6interfacemetric)
    - [NativeProfile](#userprofilenamenativeprofile)
      - [Authentication](#userprofilenamenativeprofileauthentication)
        - [Certificate](#userprofilenamenativeprofileauthenticationcertificate)
          - [Eku](#userprofilenamenativeprofileauthenticationcertificateeku)
          - [Issuer](#userprofilenamenativeprofileauthenticationcertificateissuer)
        - [Eap](#userprofilenamenativeprofileauthenticationeap)
          - [Configuration](#userprofilenamenativeprofileauthenticationeapconfiguration)
          - [Type](#userprofilenamenativeprofileauthenticationeaptype)
        - [MachineMethod](#userprofilenamenativeprofileauthenticationmachinemethod)
        - [UserMethod](#userprofilenamenativeprofileauthenticationusermethod)
      - [CryptographySuite](#userprofilenamenativeprofilecryptographysuite)
        - [AuthenticationTransformConstants](#userprofilenamenativeprofilecryptographysuiteauthenticationtransformconstants)
        - [CipherTransformConstants](#userprofilenamenativeprofilecryptographysuiteciphertransformconstants)
        - [DHGroup](#userprofilenamenativeprofilecryptographysuitedhgroup)
        - [EncryptionMethod](#userprofilenamenativeprofilecryptographysuiteencryptionmethod)
        - [IntegrityCheckMethod](#userprofilenamenativeprofilecryptographysuiteintegritycheckmethod)
        - [PfsGroup](#userprofilenamenativeprofilecryptographysuitepfsgroup)
      - [DisableClassBasedDefaultRoute](#userprofilenamenativeprofiledisableclassbaseddefaultroute)
      - [L2tpPsk](#userprofilenamenativeprofilel2tppsk)
      - [NativeProtocolType](#userprofilenamenativeprofilenativeprotocoltype)
      - [PlumbIKEv2TSAsRoutes](#userprofilenamenativeprofileplumbikev2tsasroutes)
      - [ProtocolList](#userprofilenamenativeprofileprotocollist)
        - [NativeProtocolList](#userprofilenamenativeprofileprotocollistnativeprotocollist)
          - [{NativeProtocolRowId}](#userprofilenamenativeprofileprotocollistnativeprotocollistnativeprotocolrowid)
            - [Type](#userprofilenamenativeprofileprotocollistnativeprotocollistnativeprotocolrowidtype)
        - [RetryTimeInHours](#userprofilenamenativeprofileprotocollistretrytimeinhours)
      - [RoutingPolicyType](#userprofilenamenativeprofileroutingpolicytype)
      - [Servers](#userprofilenamenativeprofileservers)
    - [NetworkOutageTime](#userprofilenamenetworkoutagetime)
    - [PluginProfile](#userprofilenamepluginprofile)
      - [CustomConfiguration](#userprofilenamepluginprofilecustomconfiguration)
      - [PluginPackageFamilyName](#userprofilenamepluginprofilepluginpackagefamilyname)
      - [ServerUrlList](#userprofilenamepluginprofileserverurllist)
    - [PrivateNetwork](#userprofilenameprivatenetwork)
    - [ProfileXML](#userprofilenameprofilexml)
    - [Proxy](#userprofilenameproxy)
      - [AutoConfigUrl](#userprofilenameproxyautoconfigurl)
      - [Manual](#userprofilenameproxymanual)
        - [Server](#userprofilenameproxymanualserver)
    - [RegisterDNS](#userprofilenameregisterdns)
    - [RememberCredentials](#userprofilenameremembercredentials)
    - [RequireVpnClientAppUI](#userprofilenamerequirevpnclientappui)
    - [RouteList](#userprofilenameroutelist)
      - [{routeRowId}](#userprofilenameroutelistrouterowid)
        - [Address](#userprofilenameroutelistrouterowidaddress)
        - [ExclusionRoute](#userprofilenameroutelistrouterowidexclusionroute)
        - [Metric](#userprofilenameroutelistrouterowidmetric)
        - [PrefixSize](#userprofilenameroutelistrouterowidprefixsize)
    - [TrafficFilterList](#userprofilenametrafficfilterlist)
      - [{trafficFilterId}](#userprofilenametrafficfilterlisttrafficfilterid)
        - [App](#userprofilenametrafficfilterlisttrafficfilteridapp)
          - [Id](#userprofilenametrafficfilterlisttrafficfilteridappid)
          - [Type](#userprofilenametrafficfilterlisttrafficfilteridapptype)
        - [Claims](#userprofilenametrafficfilterlisttrafficfilteridclaims)
        - [Direction](#userprofilenametrafficfilterlisttrafficfilteriddirection)
        - [LocalAddressRanges](#userprofilenametrafficfilterlisttrafficfilteridlocaladdressranges)
        - [LocalPortRanges](#userprofilenametrafficfilterlisttrafficfilteridlocalportranges)
        - [Protocol](#userprofilenametrafficfilterlisttrafficfilteridprotocol)
        - [RemoteAddressRanges](#userprofilenametrafficfilterlisttrafficfilteridremoteaddressranges)
        - [RemotePortRanges](#userprofilenametrafficfilterlisttrafficfilteridremoteportranges)
        - [RoutingPolicyType](#userprofilenametrafficfilterlisttrafficfilteridroutingpolicytype)
    - [TrustedNetworkDetection](#userprofilenametrustednetworkdetection)
    - [UseRasCredentials](#userprofilenameuserascredentials)
<!-- VPNv2-Tree-End -->

<!-- Device-{ProfileName}-Begin -->
## Device/{ProfileName}

<!-- Device-{ProfileName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-Applicability-End -->

<!-- Device-{ProfileName}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}
```
<!-- Device-{ProfileName}-OmaUri-End -->

<!-- Device-{ProfileName}-Description-Begin -->
<!-- Description-Source-DDF -->
Unique alpha numeric identifier for the profile. The profile name mustn't include a forward slash (/). If the profile name has a space or other non-alphanumeric character, it must be properly escaped according to the URL encoding standard.
<!-- Device-{ProfileName}-Description-End -->

<!-- Device-{ProfileName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-Editable-End -->

<!-- Device-{ProfileName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Atomic Required | True |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
| Allowed Values | Regular Expression: `^[^/]*$` |
<!-- Device-{ProfileName}-DFProperties-End -->

<!-- Device-{ProfileName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-Examples-End -->

<!-- Device-{ProfileName}-End -->

<!-- Device-{ProfileName}-AlwaysOn-Begin -->
### Device/{ProfileName}/AlwaysOn

<!-- Device-{ProfileName}-AlwaysOn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-AlwaysOn-Applicability-End -->

<!-- Device-{ProfileName}-AlwaysOn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/AlwaysOn
```
<!-- Device-{ProfileName}-AlwaysOn-OmaUri-End -->

<!-- Device-{ProfileName}-AlwaysOn-Description-Begin -->
<!-- Description-Source-DDF -->
An optional flag to enable Always On mode. This will automatically connect the VPN at sign-in and will stay connected until the user manually disconnects.
<!-- Device-{ProfileName}-AlwaysOn-Description-End -->

<!-- Device-{ProfileName}-AlwaysOn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-AlwaysOn-Editable-End -->

<!-- Device-{ProfileName}-AlwaysOn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-{ProfileName}-AlwaysOn-DFProperties-End -->

<!-- Device-{ProfileName}-AlwaysOn-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Always On is turned off. |
| true | Always On is turned on. |
<!-- Device-{ProfileName}-AlwaysOn-AllowedValues-End -->

<!-- Device-{ProfileName}-AlwaysOn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-AlwaysOn-Examples-End -->

<!-- Device-{ProfileName}-AlwaysOn-End -->

<!-- Device-{ProfileName}-AlwaysOnActive-Begin -->
### Device/{ProfileName}/AlwaysOnActive

<!-- Device-{ProfileName}-AlwaysOnActive-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-AlwaysOnActive-Applicability-End -->

<!-- Device-{ProfileName}-AlwaysOnActive-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/AlwaysOnActive
```
<!-- Device-{ProfileName}-AlwaysOnActive-OmaUri-End -->

<!-- Device-{ProfileName}-AlwaysOnActive-Description-Begin -->
<!-- Description-Source-DDF -->
An optional flag to activate Always On mode. This is true by default if AlwaysOn is true. Setting controls whether "Connect Automatically" is toggled on profile creation.
<!-- Device-{ProfileName}-AlwaysOnActive-Description-End -->

<!-- Device-{ProfileName}-AlwaysOnActive-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-AlwaysOnActive-Editable-End -->

<!-- Device-{ProfileName}-AlwaysOnActive-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- Device-{ProfileName}-AlwaysOnActive-DFProperties-End -->

<!-- Device-{ProfileName}-AlwaysOnActive-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Always On is inactive. |
| 1 (Default) | Always On is activated on provisioning. |
<!-- Device-{ProfileName}-AlwaysOnActive-AllowedValues-End -->

<!-- Device-{ProfileName}-AlwaysOnActive-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-AlwaysOnActive-Examples-End -->

<!-- Device-{ProfileName}-AlwaysOnActive-End -->

<!-- Device-{ProfileName}-APNBinding-Begin -->
### Device/{ProfileName}/APNBinding

<!-- Device-{ProfileName}-APNBinding-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-APNBinding-Applicability-End -->

<!-- Device-{ProfileName}-APNBinding-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/APNBinding
```
<!-- Device-{ProfileName}-APNBinding-OmaUri-End -->

<!-- Device-{ProfileName}-APNBinding-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- Device-{ProfileName}-APNBinding-Description-End -->

<!-- Device-{ProfileName}-APNBinding-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-APNBinding-Editable-End -->

<!-- Device-{ProfileName}-APNBinding-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{ProfileName}-APNBinding-DFProperties-End -->

<!-- Device-{ProfileName}-APNBinding-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-APNBinding-Examples-End -->

<!-- Device-{ProfileName}-APNBinding-End -->

<!-- Device-{ProfileName}-APNBinding-AccessPointName-Begin -->
#### Device/{ProfileName}/APNBinding/AccessPointName

<!-- Device-{ProfileName}-APNBinding-AccessPointName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-APNBinding-AccessPointName-Applicability-End -->

<!-- Device-{ProfileName}-APNBinding-AccessPointName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/APNBinding/AccessPointName
```
<!-- Device-{ProfileName}-APNBinding-AccessPointName-OmaUri-End -->

<!-- Device-{ProfileName}-APNBinding-AccessPointName-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- Device-{ProfileName}-APNBinding-AccessPointName-Description-End -->

<!-- Device-{ProfileName}-APNBinding-AccessPointName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-APNBinding-AccessPointName-Editable-End -->

<!-- Device-{ProfileName}-APNBinding-AccessPointName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-APNBinding-AccessPointName-DFProperties-End -->

<!-- Device-{ProfileName}-APNBinding-AccessPointName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-APNBinding-AccessPointName-Examples-End -->

<!-- Device-{ProfileName}-APNBinding-AccessPointName-End -->

<!-- Device-{ProfileName}-APNBinding-AuthenticationType-Begin -->
#### Device/{ProfileName}/APNBinding/AuthenticationType

<!-- Device-{ProfileName}-APNBinding-AuthenticationType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-APNBinding-AuthenticationType-Applicability-End -->

<!-- Device-{ProfileName}-APNBinding-AuthenticationType-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/APNBinding/AuthenticationType
```
<!-- Device-{ProfileName}-APNBinding-AuthenticationType-OmaUri-End -->

<!-- Device-{ProfileName}-APNBinding-AuthenticationType-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- Device-{ProfileName}-APNBinding-AuthenticationType-Description-End -->

<!-- Device-{ProfileName}-APNBinding-AuthenticationType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-APNBinding-AuthenticationType-Editable-End -->

<!-- Device-{ProfileName}-APNBinding-AuthenticationType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-APNBinding-AuthenticationType-DFProperties-End -->

<!-- Device-{ProfileName}-APNBinding-AuthenticationType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-APNBinding-AuthenticationType-Examples-End -->

<!-- Device-{ProfileName}-APNBinding-AuthenticationType-End -->

<!-- Device-{ProfileName}-APNBinding-IsCompressionEnabled-Begin -->
#### Device/{ProfileName}/APNBinding/IsCompressionEnabled

<!-- Device-{ProfileName}-APNBinding-IsCompressionEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-APNBinding-IsCompressionEnabled-Applicability-End -->

<!-- Device-{ProfileName}-APNBinding-IsCompressionEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/APNBinding/IsCompressionEnabled
```
<!-- Device-{ProfileName}-APNBinding-IsCompressionEnabled-OmaUri-End -->

<!-- Device-{ProfileName}-APNBinding-IsCompressionEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- Device-{ProfileName}-APNBinding-IsCompressionEnabled-Description-End -->

<!-- Device-{ProfileName}-APNBinding-IsCompressionEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-APNBinding-IsCompressionEnabled-Editable-End -->

<!-- Device-{ProfileName}-APNBinding-IsCompressionEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-APNBinding-IsCompressionEnabled-DFProperties-End -->

<!-- Device-{ProfileName}-APNBinding-IsCompressionEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-APNBinding-IsCompressionEnabled-Examples-End -->

<!-- Device-{ProfileName}-APNBinding-IsCompressionEnabled-End -->

<!-- Device-{ProfileName}-APNBinding-Password-Begin -->
#### Device/{ProfileName}/APNBinding/Password

<!-- Device-{ProfileName}-APNBinding-Password-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-APNBinding-Password-Applicability-End -->

<!-- Device-{ProfileName}-APNBinding-Password-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/APNBinding/Password
```
<!-- Device-{ProfileName}-APNBinding-Password-OmaUri-End -->

<!-- Device-{ProfileName}-APNBinding-Password-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- Device-{ProfileName}-APNBinding-Password-Description-End -->

<!-- Device-{ProfileName}-APNBinding-Password-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-APNBinding-Password-Editable-End -->

<!-- Device-{ProfileName}-APNBinding-Password-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-APNBinding-Password-DFProperties-End -->

<!-- Device-{ProfileName}-APNBinding-Password-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-APNBinding-Password-Examples-End -->

<!-- Device-{ProfileName}-APNBinding-Password-End -->

<!-- Device-{ProfileName}-APNBinding-ProviderId-Begin -->
#### Device/{ProfileName}/APNBinding/ProviderId

<!-- Device-{ProfileName}-APNBinding-ProviderId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-APNBinding-ProviderId-Applicability-End -->

<!-- Device-{ProfileName}-APNBinding-ProviderId-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/APNBinding/ProviderId
```
<!-- Device-{ProfileName}-APNBinding-ProviderId-OmaUri-End -->

<!-- Device-{ProfileName}-APNBinding-ProviderId-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- Device-{ProfileName}-APNBinding-ProviderId-Description-End -->

<!-- Device-{ProfileName}-APNBinding-ProviderId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-APNBinding-ProviderId-Editable-End -->

<!-- Device-{ProfileName}-APNBinding-ProviderId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-APNBinding-ProviderId-DFProperties-End -->

<!-- Device-{ProfileName}-APNBinding-ProviderId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-APNBinding-ProviderId-Examples-End -->

<!-- Device-{ProfileName}-APNBinding-ProviderId-End -->

<!-- Device-{ProfileName}-APNBinding-UserName-Begin -->
#### Device/{ProfileName}/APNBinding/UserName

<!-- Device-{ProfileName}-APNBinding-UserName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-APNBinding-UserName-Applicability-End -->

<!-- Device-{ProfileName}-APNBinding-UserName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/APNBinding/UserName
```
<!-- Device-{ProfileName}-APNBinding-UserName-OmaUri-End -->

<!-- Device-{ProfileName}-APNBinding-UserName-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- Device-{ProfileName}-APNBinding-UserName-Description-End -->

<!-- Device-{ProfileName}-APNBinding-UserName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-APNBinding-UserName-Editable-End -->

<!-- Device-{ProfileName}-APNBinding-UserName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-APNBinding-UserName-DFProperties-End -->

<!-- Device-{ProfileName}-APNBinding-UserName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-APNBinding-UserName-Examples-End -->

<!-- Device-{ProfileName}-APNBinding-UserName-End -->

<!-- Device-{ProfileName}-AppTriggerList-Begin -->
### Device/{ProfileName}/AppTriggerList

<!-- Device-{ProfileName}-AppTriggerList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-AppTriggerList-Applicability-End -->

<!-- Device-{ProfileName}-AppTriggerList-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/AppTriggerList
```
<!-- Device-{ProfileName}-AppTriggerList-OmaUri-End -->

<!-- Device-{ProfileName}-AppTriggerList-Description-Begin -->
<!-- Description-Source-DDF -->
List of applications set to trigger the VPN. If any of these apps are launched and the VPN Profile is currently the active Profile, this VPN Profile will be triggered to connect.
<!-- Device-{ProfileName}-AppTriggerList-Description-End -->

<!-- Device-{ProfileName}-AppTriggerList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-AppTriggerList-Editable-End -->

<!-- Device-{ProfileName}-AppTriggerList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{ProfileName}-AppTriggerList-DFProperties-End -->

<!-- Device-{ProfileName}-AppTriggerList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-AppTriggerList-Examples-End -->

<!-- Device-{ProfileName}-AppTriggerList-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-Begin -->
#### Device/{ProfileName}/AppTriggerList/{appTriggerRowId}

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-Applicability-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/AppTriggerList/{appTriggerRowId}
```
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-OmaUri-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-Description-Begin -->
<!-- Description-Source-DDF -->
A sequential integer identifier which allows the ability to specify multiple apps for App Trigger. Sequencing must start at 0 and you shouldn't skip numbers.
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-Description-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-Editable-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: A sequential integer identifier which allows the ability to specify multiple apps for App Trigger. Sequencing must start at 0 and you should not skip numbers. |
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-DFProperties-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-Examples-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Begin -->
##### Device/{ProfileName}/AppTriggerList/{appTriggerRowId}/App

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Applicability-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/AppTriggerList/{appTriggerRowId}/App
```
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-OmaUri-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Description-Begin -->
<!-- Description-Source-DDF -->
App Node under the Row Id.
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Description-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Editable-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-DFProperties-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Examples-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-Begin -->
###### Device/{ProfileName}/AppTriggerList/{appTriggerRowId}/App/Id

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-Applicability-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/AppTriggerList/{appTriggerRowId}/App/Id
```
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-OmaUri-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-Description-Begin -->
<!-- Description-Source-DDF -->
App Identity. Specified, based on the Type Field.
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-Description-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-Editable-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-DFProperties-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-Examples-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-Begin -->
###### Device/{ProfileName}/AppTriggerList/{appTriggerRowId}/App/Type

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-Applicability-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/AppTriggerList/{appTriggerRowId}/App/Type
```
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-OmaUri-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the type of App/Id. This value can be either of the following: PackageFamilyName - When this is returned, the App/Id value represents the PackageFamilyName of the app. The PackageFamilyName is the unique name of the Microsoft Store application. FilePath - When this is returned, the App/Id value represents the full file path of the app. For example, C:\Windows\System\Notepad.exe.
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-Description-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-Editable-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-DFProperties-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-Examples-End -->

<!-- Device-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-End -->

<!-- Device-{ProfileName}-ByPassForLocal-Begin -->
### Device/{ProfileName}/ByPassForLocal

<!-- Device-{ProfileName}-ByPassForLocal-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-ByPassForLocal-Applicability-End -->

<!-- Device-{ProfileName}-ByPassForLocal-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/ByPassForLocal
```
<!-- Device-{ProfileName}-ByPassForLocal-OmaUri-End -->

<!-- Device-{ProfileName}-ByPassForLocal-Description-Begin -->
<!-- Description-Source-DDF -->
False: Don't Bypass for Local traffic.

True: ByPass VPN Interface for Local Traffic.

Optional. When this setting is True, requests to local resources that are available on the same Wi-Fi network as the VPN client can bypass the VPN. For example, if enterprise policy for VPN requires force tunnel for VPN, but enterprise intends to allow the remote user to connect locally to media center in their home, then this option should be set to True. The user can bypass VPN for local subnet traffic. When this is set to False, the setting is disabled and no subnet exceptions are allowed.
<!-- Device-{ProfileName}-ByPassForLocal-Description-End -->

<!-- Device-{ProfileName}-ByPassForLocal-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-ByPassForLocal-Editable-End -->

<!-- Device-{ProfileName}-ByPassForLocal-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-ByPassForLocal-DFProperties-End -->

<!-- Device-{ProfileName}-ByPassForLocal-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-ByPassForLocal-Examples-End -->

<!-- Device-{ProfileName}-ByPassForLocal-End -->

<!-- Device-{ProfileName}-DataEncryption-Begin -->
### Device/{ProfileName}/DataEncryption

<!-- Device-{ProfileName}-DataEncryption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-{ProfileName}-DataEncryption-Applicability-End -->

<!-- Device-{ProfileName}-DataEncryption-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DataEncryption
```
<!-- Device-{ProfileName}-DataEncryption-OmaUri-End -->

<!-- Device-{ProfileName}-DataEncryption-Description-Begin -->
<!-- Description-Source-DDF -->
Determines the level of data encryption required for the connection.
<!-- Device-{ProfileName}-DataEncryption-Description-End -->

<!-- Device-{ProfileName}-DataEncryption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DataEncryption-Editable-End -->

<!-- Device-{ProfileName}-DataEncryption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | Require |
<!-- Device-{ProfileName}-DataEncryption-DFProperties-End -->

<!-- Device-{ProfileName}-DataEncryption-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| None | No Data Encryption required. |
| Require (Default) | Data Encryption required. |
| Max | Maximum-strength Data Encryption required. |
| Optional | Perform encryption if possible. |
<!-- Device-{ProfileName}-DataEncryption-AllowedValues-End -->

<!-- Device-{ProfileName}-DataEncryption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DataEncryption-Examples-End -->

<!-- Device-{ProfileName}-DataEncryption-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Begin -->
### Device/{ProfileName}/DeviceCompliance

<!-- Device-{ProfileName}-DeviceCompliance-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-DeviceCompliance-Applicability-End -->

<!-- Device-{ProfileName}-DeviceCompliance-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DeviceCompliance
```
<!-- Device-{ProfileName}-DeviceCompliance-OmaUri-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Description-Begin -->
<!-- Description-Source-DDF -->
Nodes under DeviceCompliance can be used to enable AAD based Conditional Access for VPN.
<!-- Device-{ProfileName}-DeviceCompliance-Description-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DeviceCompliance-Editable-End -->

<!-- Device-{ProfileName}-DeviceCompliance-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Get |
<!-- Device-{ProfileName}-DeviceCompliance-DFProperties-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DeviceCompliance-Examples-End -->

<!-- Device-{ProfileName}-DeviceCompliance-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Enabled-Begin -->
#### Device/{ProfileName}/DeviceCompliance/Enabled

<!-- Device-{ProfileName}-DeviceCompliance-Enabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-DeviceCompliance-Enabled-Applicability-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Enabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DeviceCompliance/Enabled
```
<!-- Device-{ProfileName}-DeviceCompliance-Enabled-OmaUri-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Enabled-Description-Begin -->
<!-- Description-Source-DDF -->
Enables the Device Compliance flow from the client. If marked as True, the VPN Client will attempt to communicate with AAD to get a certificate to use for authentication. The VPN should be set up to use Certificate Auth and the VPN Server must trust the Server returned by Azure Active Directory.
<!-- Device-{ProfileName}-DeviceCompliance-Enabled-Description-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Enabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DeviceCompliance-Enabled-Editable-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Enabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-DeviceCompliance-Enabled-DFProperties-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Enabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disabled. |
| true | Enabled. |
<!-- Device-{ProfileName}-DeviceCompliance-Enabled-AllowedValues-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Enabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DeviceCompliance-Enabled-Examples-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Enabled-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Begin -->
#### Device/{ProfileName}/DeviceCompliance/Sso

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-DeviceCompliance-Sso-Applicability-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DeviceCompliance/Sso
```
<!-- Device-{ProfileName}-DeviceCompliance-Sso-OmaUri-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Description-Begin -->
<!-- Description-Source-DDF -->
Nodes under SSO can be used to choose a certificate different from the VPN Authentication cert for the Kerberos Authentication in the case of Device Compliance.
<!-- Device-{ProfileName}-DeviceCompliance-Sso-Description-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DeviceCompliance-Sso-Editable-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Get |
<!-- Device-{ProfileName}-DeviceCompliance-Sso-DFProperties-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DeviceCompliance-Sso-Examples-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Eku-Begin -->
##### Device/{ProfileName}/DeviceCompliance/Sso/Eku

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Eku-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-DeviceCompliance-Sso-Eku-Applicability-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Eku-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DeviceCompliance/Sso/Eku
```
<!-- Device-{ProfileName}-DeviceCompliance-Sso-Eku-OmaUri-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Eku-Description-Begin -->
<!-- Description-Source-DDF -->
Comma Separated list of EKU's for the VPN Client to look for the correct certificate for Kerberos Authentication.
<!-- Device-{ProfileName}-DeviceCompliance-Sso-Eku-Description-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Eku-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DeviceCompliance-Sso-Eku-Editable-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Eku-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-DeviceCompliance-Sso-Eku-DFProperties-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Eku-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DeviceCompliance-Sso-Eku-Examples-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Eku-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Enabled-Begin -->
##### Device/{ProfileName}/DeviceCompliance/Sso/Enabled

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Enabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-DeviceCompliance-Sso-Enabled-Applicability-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Enabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DeviceCompliance/Sso/Enabled
```
<!-- Device-{ProfileName}-DeviceCompliance-Sso-Enabled-OmaUri-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Enabled-Description-Begin -->
<!-- Description-Source-DDF -->
If this field is set to True the VPN Client will look for a separate certificate for Kerberos Authentication.
<!-- Device-{ProfileName}-DeviceCompliance-Sso-Enabled-Description-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Enabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DeviceCompliance-Sso-Enabled-Editable-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Enabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-DeviceCompliance-Sso-Enabled-DFProperties-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Enabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disabled. |
| true | Enabled. |
<!-- Device-{ProfileName}-DeviceCompliance-Sso-Enabled-AllowedValues-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Enabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DeviceCompliance-Sso-Enabled-Examples-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-Enabled-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-IssuerHash-Begin -->
##### Device/{ProfileName}/DeviceCompliance/Sso/IssuerHash

<!-- Device-{ProfileName}-DeviceCompliance-Sso-IssuerHash-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-DeviceCompliance-Sso-IssuerHash-Applicability-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-IssuerHash-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DeviceCompliance/Sso/IssuerHash
```
<!-- Device-{ProfileName}-DeviceCompliance-Sso-IssuerHash-OmaUri-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-IssuerHash-Description-Begin -->
<!-- Description-Source-DDF -->
Comma Separated list of Issuer Hashes for the VPN Client to look for the correct certificate for Kerberos Authentication.
<!-- Device-{ProfileName}-DeviceCompliance-Sso-IssuerHash-Description-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-IssuerHash-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DeviceCompliance-Sso-IssuerHash-Editable-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-IssuerHash-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-DeviceCompliance-Sso-IssuerHash-DFProperties-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-IssuerHash-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DeviceCompliance-Sso-IssuerHash-Examples-End -->

<!-- Device-{ProfileName}-DeviceCompliance-Sso-IssuerHash-End -->

<!-- Device-{ProfileName}-DeviceTunnel-Begin -->
### Device/{ProfileName}/DeviceTunnel

<!-- Device-{ProfileName}-DeviceTunnel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{ProfileName}-DeviceTunnel-Applicability-End -->

<!-- Device-{ProfileName}-DeviceTunnel-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DeviceTunnel
```
<!-- Device-{ProfileName}-DeviceTunnel-OmaUri-End -->

<!-- Device-{ProfileName}-DeviceTunnel-Description-Begin -->
<!-- Description-Source-DDF -->
If turned on a device tunnel profile does four things.

First, it automatically becomes an always on profile.

Second, it doesn't require the presence or logging in of any user to the machine in order for it to connect.

Third, no other Device Tunnel profile maybe be present on the same machine.

A device tunnel profile must be deleted before another device tunnel profile can be added, removed, or connected.
<!-- Device-{ProfileName}-DeviceTunnel-Description-End -->

<!-- Device-{ProfileName}-DeviceTunnel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DeviceTunnel-Editable-End -->

<!-- Device-{ProfileName}-DeviceTunnel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-{ProfileName}-DeviceTunnel-DFProperties-End -->

<!-- Device-{ProfileName}-DeviceTunnel-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | This isn't a device tunnel profile. |
| true | This is a device tunnel profile. |
<!-- Device-{ProfileName}-DeviceTunnel-AllowedValues-End -->

<!-- Device-{ProfileName}-DeviceTunnel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DeviceTunnel-Examples-End -->

<!-- Device-{ProfileName}-DeviceTunnel-End -->

<!-- Device-{ProfileName}-DisableAdvancedOptionsEditButton-Begin -->
### Device/{ProfileName}/DisableAdvancedOptionsEditButton

<!-- Device-{ProfileName}-DisableAdvancedOptionsEditButton-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-{ProfileName}-DisableAdvancedOptionsEditButton-Applicability-End -->

<!-- Device-{ProfileName}-DisableAdvancedOptionsEditButton-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DisableAdvancedOptionsEditButton
```
<!-- Device-{ProfileName}-DisableAdvancedOptionsEditButton-OmaUri-End -->

<!-- Device-{ProfileName}-DisableAdvancedOptionsEditButton-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. When this setting is True, the Advanced Options page will have its edit functions disabled, only allowing viewing and Clear Sign-In Info.
<!-- Device-{ProfileName}-DisableAdvancedOptionsEditButton-Description-End -->

<!-- Device-{ProfileName}-DisableAdvancedOptionsEditButton-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DisableAdvancedOptionsEditButton-Editable-End -->

<!-- Device-{ProfileName}-DisableAdvancedOptionsEditButton-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-DisableAdvancedOptionsEditButton-DFProperties-End -->

<!-- Device-{ProfileName}-DisableAdvancedOptionsEditButton-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Advanced Options Edit Button is available. |
| true | Advanced Options Edit Button is unavailable. |
<!-- Device-{ProfileName}-DisableAdvancedOptionsEditButton-AllowedValues-End -->

<!-- Device-{ProfileName}-DisableAdvancedOptionsEditButton-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DisableAdvancedOptionsEditButton-Examples-End -->

<!-- Device-{ProfileName}-DisableAdvancedOptionsEditButton-End -->

<!-- Device-{ProfileName}-DisableDisconnectButton-Begin -->
### Device/{ProfileName}/DisableDisconnectButton

<!-- Device-{ProfileName}-DisableDisconnectButton-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-{ProfileName}-DisableDisconnectButton-Applicability-End -->

<!-- Device-{ProfileName}-DisableDisconnectButton-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DisableDisconnectButton
```
<!-- Device-{ProfileName}-DisableDisconnectButton-OmaUri-End -->

<!-- Device-{ProfileName}-DisableDisconnectButton-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. When this setting is True, the Disconnect button won't be visible for connected profiles.
<!-- Device-{ProfileName}-DisableDisconnectButton-Description-End -->

<!-- Device-{ProfileName}-DisableDisconnectButton-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DisableDisconnectButton-Editable-End -->

<!-- Device-{ProfileName}-DisableDisconnectButton-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-DisableDisconnectButton-DFProperties-End -->

<!-- Device-{ProfileName}-DisableDisconnectButton-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disconnect Button is visible. |
| true | Disconnect Button isn't visible. |
<!-- Device-{ProfileName}-DisableDisconnectButton-AllowedValues-End -->

<!-- Device-{ProfileName}-DisableDisconnectButton-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DisableDisconnectButton-Examples-End -->

<!-- Device-{ProfileName}-DisableDisconnectButton-End -->

<!-- Device-{ProfileName}-DisableIKEv2Fragmentation-Begin -->
### Device/{ProfileName}/DisableIKEv2Fragmentation

<!-- Device-{ProfileName}-DisableIKEv2Fragmentation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-{ProfileName}-DisableIKEv2Fragmentation-Applicability-End -->

<!-- Device-{ProfileName}-DisableIKEv2Fragmentation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DisableIKEv2Fragmentation
```
<!-- Device-{ProfileName}-DisableIKEv2Fragmentation-OmaUri-End -->

<!-- Device-{ProfileName}-DisableIKEv2Fragmentation-Description-Begin -->
<!-- Description-Source-DDF -->
Set to disable IKEv2 Fragmentation.
<!-- Device-{ProfileName}-DisableIKEv2Fragmentation-Description-End -->

<!-- Device-{ProfileName}-DisableIKEv2Fragmentation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DisableIKEv2Fragmentation-Editable-End -->

<!-- Device-{ProfileName}-DisableIKEv2Fragmentation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-{ProfileName}-DisableIKEv2Fragmentation-DFProperties-End -->

<!-- Device-{ProfileName}-DisableIKEv2Fragmentation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| true | IKEv2 Fragmentation won't be used. |
| false (Default) | IKEv2 Fragmentation is used as normal. |
<!-- Device-{ProfileName}-DisableIKEv2Fragmentation-AllowedValues-End -->

<!-- Device-{ProfileName}-DisableIKEv2Fragmentation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DisableIKEv2Fragmentation-Examples-End -->

<!-- Device-{ProfileName}-DisableIKEv2Fragmentation-End -->

<!-- Device-{ProfileName}-DnsSuffix-Begin -->
### Device/{ProfileName}/DnsSuffix

<!-- Device-{ProfileName}-DnsSuffix-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-DnsSuffix-Applicability-End -->

<!-- Device-{ProfileName}-DnsSuffix-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DnsSuffix
```
<!-- Device-{ProfileName}-DnsSuffix-OmaUri-End -->

<!-- Device-{ProfileName}-DnsSuffix-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies one or more comma separated DNS suffixes. The first in the list is also used as the primary connection specific DNS suffix for the VPN Interface. The entire list will also be added into the SuffixSearchList.
<!-- Device-{ProfileName}-DnsSuffix-Description-End -->

<!-- Device-{ProfileName}-DnsSuffix-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DnsSuffix-Editable-End -->

<!-- Device-{ProfileName}-DnsSuffix-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-DnsSuffix-DFProperties-End -->

<!-- Device-{ProfileName}-DnsSuffix-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DnsSuffix-Examples-End -->

<!-- Device-{ProfileName}-DnsSuffix-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-Begin -->
### Device/{ProfileName}/DomainNameInformationList

<!-- Device-{ProfileName}-DomainNameInformationList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-DomainNameInformationList-Applicability-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DomainNameInformationList
```
<!-- Device-{ProfileName}-DomainNameInformationList-OmaUri-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-Description-Begin -->
<!-- Description-Source-DDF -->
NRPT ([Name Resolution Policy Table](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn593632(v=ws.11))) Rules for the VPN Profile.
<!-- Device-{ProfileName}-DomainNameInformationList-Description-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Only applications using the [Windows DNS API](/windows/win32/dns/dns-reference) can make use of the NRPT and therefore all settings configured within the DomainNameInformationList section. Applications using their own DNS implementation bypass the Windows DNS API. One example of applications not using the Windows DNS API is nslookup, so always use the PowerShell CmdLet [Resolve-DNSName](/powershell/module/dnsclient/resolve-dnsname) to check the functionality of the NRPT.
<!-- Device-{ProfileName}-DomainNameInformationList-Editable-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{ProfileName}-DomainNameInformationList-DFProperties-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DomainNameInformationList-Examples-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Begin -->
#### Device/{ProfileName}/DomainNameInformationList/{dniRowId}

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Applicability-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DomainNameInformationList/{dniRowId}
```
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-OmaUri-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Description-Begin -->
<!-- Description-Source-DDF -->
A sequential integer identifier for the Domain Name information. Sequencing must start at 0.
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Description-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Editable-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: A sequential integer identifier for the Domain Name information. Sequencing must start at 0. |
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DFProperties-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Examples-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-Begin -->
##### Device/{ProfileName}/DomainNameInformationList/{dniRowId}/AutoTrigger

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-Applicability-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DomainNameInformationList/{dniRowId}/AutoTrigger
```
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-OmaUri-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-Description-Begin -->
<!-- Description-Source-DDF -->
Boolean to determine whether this domain name rule will trigger the VPN.
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-Description-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-Editable-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-DFProperties-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | This DomainName rule won't trigger the VPN. |
| true | This DomainName rule will trigger the VPN. |
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-AllowedValues-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-Examples-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-Begin -->
##### Device/{ProfileName}/DomainNameInformationList/{dniRowId}/DnsServers

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-Applicability-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DomainNameInformationList/{dniRowId}/DnsServers
```
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-OmaUri-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-Description-Begin -->
<!-- Description-Source-DDF -->
Comma Seperated list of IP addresses for the DNS Servers to use for the domain name.
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-Description-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-Editable-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-DFProperties-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-Examples-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-Begin -->
##### Device/{ProfileName}/DomainNameInformationList/{dniRowId}/DomainName

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-Applicability-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DomainNameInformationList/{dniRowId}/DomainName
```
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-OmaUri-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-Description-Begin -->
<!-- Description-Source-DDF -->
Used to indicate the namespace to which the policy applies. When a Name query is issued, the DNS client compares the name in the query to all of the namespaces under DomainNameInformationList to find a match. This parameter can be one of the following types: FQDN - Fully qualified domain name. Suffix - A domain suffix that will be appended to the shortname query for DNS resolution. To specify a suffix, prepend a . to the DNS suffix.
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-Description-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-Editable-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-DFProperties-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-Examples-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-Begin -->
##### Device/{ProfileName}/DomainNameInformationList/{dniRowId}/DomainNameType

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-Applicability-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DomainNameInformationList/{dniRowId}/DomainNameType
```
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-OmaUri-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the namespace type. This value can be one of the following: FQDN - If the DomainName wasn't prepended with a . and applies only to the fully qualified domain name (FQDN) of a specified host. Suffix - If the DomainName was prepended with a . and applies to the specified namespace, all records in that namespace, and all subdomains.
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-Description-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-Editable-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-DFProperties-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-Examples-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-Begin -->
##### Device/{ProfileName}/DomainNameInformationList/{dniRowId}/Persistent

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-Applicability-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DomainNameInformationList/{dniRowId}/Persistent
```
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-OmaUri-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-Description-Begin -->
<!-- Description-Source-DDF -->
A boolean value that specifies if the rule being added should persist even when the VPN isn't connected.
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-Description-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-Editable-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-DFProperties-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | This DomainName rule will only be applied when VPN is connected. |
| true | This DomainName rule will always be present and applied. |
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-AllowedValues-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-Examples-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-Begin -->
##### Device/{ProfileName}/DomainNameInformationList/{dniRowId}/WebProxyServers

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-Applicability-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/DomainNameInformationList/{dniRowId}/WebProxyServers
```
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-OmaUri-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-Description-Begin -->
<!-- Description-Source-DDF -->
Web Proxy Server IP address if you are redirecting traffic through your intranet.
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-Description-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-Editable-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-DFProperties-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-Examples-End -->

<!-- Device-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-End -->

<!-- Device-{ProfileName}-EdpModeId-Begin -->
### Device/{ProfileName}/EdpModeId

<!-- Device-{ProfileName}-EdpModeId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-EdpModeId-Applicability-End -->

<!-- Device-{ProfileName}-EdpModeId-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/EdpModeId
```
<!-- Device-{ProfileName}-EdpModeId-OmaUri-End -->

<!-- Device-{ProfileName}-EdpModeId-Description-Begin -->
<!-- Description-Source-DDF -->
Enterprise ID, which is required for connecting this VPN profile with an WIP policy. When this is set, the networking stack looks for this Enterprise ID in the app token to determine if the traffic is allowed to go over the VPN. If the profile is active, it also automatically triggers the VPN to connect. We recommend having only one such profile per device.
<!-- Device-{ProfileName}-EdpModeId-Description-End -->

<!-- Device-{ProfileName}-EdpModeId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-EdpModeId-Editable-End -->

<!-- Device-{ProfileName}-EdpModeId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-EdpModeId-DFProperties-End -->

<!-- Device-{ProfileName}-EdpModeId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-EdpModeId-Examples-End -->

<!-- Device-{ProfileName}-EdpModeId-End -->

<!-- Device-{ProfileName}-IPv4InterfaceMetric-Begin -->
### Device/{ProfileName}/IPv4InterfaceMetric

<!-- Device-{ProfileName}-IPv4InterfaceMetric-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-{ProfileName}-IPv4InterfaceMetric-Applicability-End -->

<!-- Device-{ProfileName}-IPv4InterfaceMetric-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/IPv4InterfaceMetric
```
<!-- Device-{ProfileName}-IPv4InterfaceMetric-OmaUri-End -->

<!-- Device-{ProfileName}-IPv4InterfaceMetric-Description-Begin -->
<!-- Description-Source-DDF -->
The metric for the IPv4 interface.
<!-- Device-{ProfileName}-IPv4InterfaceMetric-Description-End -->

<!-- Device-{ProfileName}-IPv4InterfaceMetric-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-IPv4InterfaceMetric-Editable-End -->

<!-- Device-{ProfileName}-IPv4InterfaceMetric-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-9999]` |
<!-- Device-{ProfileName}-IPv4InterfaceMetric-DFProperties-End -->

<!-- Device-{ProfileName}-IPv4InterfaceMetric-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-IPv4InterfaceMetric-Examples-End -->

<!-- Device-{ProfileName}-IPv4InterfaceMetric-End -->

<!-- Device-{ProfileName}-IPv6InterfaceMetric-Begin -->
### Device/{ProfileName}/IPv6InterfaceMetric

<!-- Device-{ProfileName}-IPv6InterfaceMetric-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-{ProfileName}-IPv6InterfaceMetric-Applicability-End -->

<!-- Device-{ProfileName}-IPv6InterfaceMetric-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/IPv6InterfaceMetric
```
<!-- Device-{ProfileName}-IPv6InterfaceMetric-OmaUri-End -->

<!-- Device-{ProfileName}-IPv6InterfaceMetric-Description-Begin -->
<!-- Description-Source-DDF -->
The metric for the IPv6 interface.
<!-- Device-{ProfileName}-IPv6InterfaceMetric-Description-End -->

<!-- Device-{ProfileName}-IPv6InterfaceMetric-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-IPv6InterfaceMetric-Editable-End -->

<!-- Device-{ProfileName}-IPv6InterfaceMetric-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-9999]` |
<!-- Device-{ProfileName}-IPv6InterfaceMetric-DFProperties-End -->

<!-- Device-{ProfileName}-IPv6InterfaceMetric-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-IPv6InterfaceMetric-Examples-End -->

<!-- Device-{ProfileName}-IPv6InterfaceMetric-End -->

<!-- Device-{ProfileName}-NativeProfile-Begin -->
### Device/{ProfileName}/NativeProfile

<!-- Device-{ProfileName}-NativeProfile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-NativeProfile-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile
```
<!-- Device-{ProfileName}-NativeProfile-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-Description-Begin -->
<!-- Description-Source-DDF -->
Nodes under NativeProfile are required when using a Windows Inbox VPN Protocol (IKEv2, PPTP, L2TP, SSTP).
<!-- Device-{ProfileName}-NativeProfile-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Get |
<!-- Device-{ProfileName}-NativeProfile-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Begin -->
#### Device/{ProfileName}/NativeProfile/Authentication

<!-- Device-{ProfileName}-NativeProfile-Authentication-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-NativeProfile-Authentication-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Authentication
```
<!-- Device-{ProfileName}-NativeProfile-Authentication-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Description-Begin -->
<!-- Description-Source-DDF -->
Required node for native profile. It contains authentication information for the native VPN profile.
<!-- Device-{ProfileName}-NativeProfile-Authentication-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Authentication-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{ProfileName}-NativeProfile-Authentication-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Authentication-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Begin -->
##### Device/{ProfileName}/NativeProfile/Authentication/Certificate

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Authentication/Certificate
```
<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-Begin -->
###### Device/{ProfileName}/NativeProfile/Authentication/Certificate/Eku

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Authentication/Certificate/Eku
```
<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-Begin -->
###### Device/{ProfileName}/NativeProfile/Authentication/Certificate/Issuer

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Authentication/Certificate/Issuer
```
<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Begin -->
##### Device/{ProfileName}/NativeProfile/Authentication/Eap

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Authentication/Eap
```
<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Description-Begin -->
<!-- Description-Source-DDF -->
Required when the native profile specifies EAP authentication. EAP configuration XML.
<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-Begin -->
###### Device/{ProfileName}/NativeProfile/Authentication/Eap/Configuration

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Authentication/Eap/Configuration
```
<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-Description-Begin -->
<!-- Description-Source-DDF -->
HTML encoded XML of the EAP configuration. For more information,see [EAP configuration](eap-configuration.md).
<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Type-Begin -->
###### Device/{ProfileName}/NativeProfile/Authentication/Eap/Type

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Type-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Type-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Type-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Authentication/Eap/Type
```
<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Type-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Type-Description-Begin -->
<!-- Description-Source-DDF -->
Required node for EAP profiles. This specifies the EAP Type ID
13 = EAP-TLS
26 = Ms-Chapv2
27 = Peap.
<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Type-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Type-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Type-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Type-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Type-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Type-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Type-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-Eap-Type-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-MachineMethod-Begin -->
##### Device/{ProfileName}/NativeProfile/Authentication/MachineMethod

<!-- Device-{ProfileName}-NativeProfile-Authentication-MachineMethod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-NativeProfile-Authentication-MachineMethod-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-MachineMethod-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Authentication/MachineMethod
```
<!-- Device-{ProfileName}-NativeProfile-Authentication-MachineMethod-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-MachineMethod-Description-Begin -->
<!-- Description-Source-DDF -->
This is only supported in IKEv2.
<!-- Device-{ProfileName}-NativeProfile-Authentication-MachineMethod-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-MachineMethod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Authentication-MachineMethod-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-MachineMethod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-Authentication-MachineMethod-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-MachineMethod-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| Certificate | Certificate. |
<!-- Device-{ProfileName}-NativeProfile-Authentication-MachineMethod-AllowedValues-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-MachineMethod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Authentication-MachineMethod-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-MachineMethod-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-UserMethod-Begin -->
##### Device/{ProfileName}/NativeProfile/Authentication/UserMethod

<!-- Device-{ProfileName}-NativeProfile-Authentication-UserMethod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-NativeProfile-Authentication-UserMethod-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-UserMethod-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Authentication/UserMethod
```
<!-- Device-{ProfileName}-NativeProfile-Authentication-UserMethod-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-UserMethod-Description-Begin -->
<!-- Description-Source-DDF -->
Type of user authentication.
<!-- Device-{ProfileName}-NativeProfile-Authentication-UserMethod-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-UserMethod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Authentication-UserMethod-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-UserMethod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-Authentication-UserMethod-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-UserMethod-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| EAP | EAP. |
| MSChapv2 | MSChapv2: This isn't supported for IKEv2. |
<!-- Device-{ProfileName}-NativeProfile-Authentication-UserMethod-AllowedValues-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-UserMethod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Authentication-UserMethod-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-Authentication-UserMethod-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-Begin -->
#### Device/{ProfileName}/NativeProfile/CryptographySuite

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/CryptographySuite
```
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-Description-Begin -->
<!-- Description-Source-DDF -->
Properties of IPSec tunnels.
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-Begin -->
##### Device/{ProfileName}/NativeProfile/CryptographySuite/AuthenticationTransformConstants

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/CryptographySuite/AuthenticationTransformConstants
```
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-Description-Begin -->
<!-- Description-Source-DDF -->
Type of authentication transform constant.
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| MD596 | MD596. |
| SHA196 | SHA196. |
| SHA256128 | SHA256128. |
| GCMAES128 | GCMAES128. |
| GCMAES192 | GCMAES192. |
| GCMAES256 | GCMAES256. |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-AllowedValues-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-Begin -->
##### Device/{ProfileName}/NativeProfile/CryptographySuite/CipherTransformConstants

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/CryptographySuite/CipherTransformConstants
```
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-Description-Begin -->
<!-- Description-Source-DDF -->
Type of Cipher transform constant.
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| DES | DES. |
| DES3 | DES3. |
| AES128 | AES128. |
| AES192 | AES192. |
| AES256 | AES256. |
| GCMAES128 | GCMAES128. |
| GCMAES192 | GCMAES192. |
| GCMAES256 | GCMAES256. |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-AllowedValues-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-Begin -->
##### Device/{ProfileName}/NativeProfile/CryptographySuite/DHGroup

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/CryptographySuite/DHGroup
```
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-Description-Begin -->
<!-- Description-Source-DDF -->
Group used for DH (Diffie-Hellman).
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| None | None. |
| Group1 | Group1. |
| Group2 | Group2. |
| Group14 | Group14. |
| ECP256 | ECP256. |
| ECP384 | ECP384. |
| Group24 | Group24. |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-AllowedValues-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-Begin -->
##### Device/{ProfileName}/NativeProfile/CryptographySuite/EncryptionMethod

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/CryptographySuite/EncryptionMethod
```
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-Description-Begin -->
<!-- Description-Source-DDF -->
Type of encryption method.
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| DES | DES. |
| DES3 | DES3. |
| AES128 | AES128. |
| AES192 | AES192. |
| AES256 | AES256. |
| AES_GCM_128 | AES_GCM_128. |
| AES_GCM_256 | AES_GCM_256. |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-AllowedValues-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-Begin -->
##### Device/{ProfileName}/NativeProfile/CryptographySuite/IntegrityCheckMethod

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/CryptographySuite/IntegrityCheckMethod
```
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-Description-Begin -->
<!-- Description-Source-DDF -->
Type of integrity check.
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| MD5 | MD5. |
| SHA196 | SHA196. |
| SHA256 | SHA256. |
| SHA384 | SHA384. |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-AllowedValues-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-Begin -->
##### Device/{ProfileName}/NativeProfile/CryptographySuite/PfsGroup

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/CryptographySuite/PfsGroup
```
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-Description-Begin -->
<!-- Description-Source-DDF -->
Group used for PFS (Perfect Forward Secrecy).
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| None | None. |
| PFS1 | PFS1. |
| PFS2 | PFS2. |
| PFS2048 | PFS2048. |
| ECP256 | ECP256. |
| ECP384 | ECP384. |
| PFSMM | PFSMM. |
| PFS24 | PFS24. |
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-AllowedValues-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-End -->

<!-- Device-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-Begin -->
#### Device/{ProfileName}/NativeProfile/DisableClassBasedDefaultRoute

<!-- Device-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/DisableClassBasedDefaultRoute
```
<!-- Device-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the class based default routes. For example, if the interface IP begins with 10, it assumes a class a IP and pushes the route to 10.0.0.0/8.
<!-- Device-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Enabled. |
| true | Disabled. |
<!-- Device-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-AllowedValues-End -->

<!-- Device-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-End -->

<!-- Device-{ProfileName}-NativeProfile-L2tpPsk-Begin -->
#### Device/{ProfileName}/NativeProfile/L2tpPsk

<!-- Device-{ProfileName}-NativeProfile-L2tpPsk-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-NativeProfile-L2tpPsk-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-L2tpPsk-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/L2tpPsk
```
<!-- Device-{ProfileName}-NativeProfile-L2tpPsk-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-L2tpPsk-Description-Begin -->
<!-- Description-Source-DDF -->
The preshared key used for an L2TP connection.
<!-- Device-{ProfileName}-NativeProfile-L2tpPsk-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-L2tpPsk-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-L2tpPsk-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-L2tpPsk-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-L2tpPsk-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-L2tpPsk-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-L2tpPsk-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-L2tpPsk-End -->

<!-- Device-{ProfileName}-NativeProfile-NativeProtocolType-Begin -->
#### Device/{ProfileName}/NativeProfile/NativeProtocolType

<!-- Device-{ProfileName}-NativeProfile-NativeProtocolType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-NativeProfile-NativeProtocolType-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-NativeProtocolType-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/NativeProtocolType
```
<!-- Device-{ProfileName}-NativeProfile-NativeProtocolType-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-NativeProtocolType-Description-Begin -->
<!-- Description-Source-DDF -->
Required for native profiles. Type of tunneling protocol used.
<!-- Device-{ProfileName}-NativeProfile-NativeProtocolType-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-NativeProtocolType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Using NativeProtocolType requires additional configuration of the NativeProfile/ProtocolList parameter.
<!-- Device-{ProfileName}-NativeProfile-NativeProtocolType-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-NativeProtocolType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-NativeProtocolType-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-NativeProtocolType-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| PPTP | PPTP. |
| L2TP | L2TP. |
| IKEv2 | IKEv2. |
| Automatic | Automatic. |
| SSTP | SSTP. |
| ProtocolList | ProtocolList. |
<!-- Device-{ProfileName}-NativeProfile-NativeProtocolType-AllowedValues-End -->

<!-- Device-{ProfileName}-NativeProfile-NativeProtocolType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-NativeProtocolType-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-NativeProtocolType-End -->

<!-- Device-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-Begin -->
#### Device/{ProfileName}/NativeProfile/PlumbIKEv2TSAsRoutes

<!-- Device-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- Device-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/PlumbIKEv2TSAsRoutes
```
<!-- Device-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-Description-Begin -->
<!-- Description-Source-DDF -->
True: Plumb traffic selectors as routes onto VPN interface, False: Don't plumb traffic selectors as routes.
<!-- Device-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-Begin -->
#### Device/{ProfileName}/NativeProfile/ProtocolList

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ [10.0.20207] and later |
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/ProtocolList
```
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-Begin -->
##### Device/{ProfileName}/NativeProfile/ProtocolList/NativeProtocolList

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ [10.0.20207] and later |
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/ProtocolList/NativeProtocolList
```
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-Description-Begin -->
<!-- Description-Source-DDF -->
List of inbox VPN protocols in priority order.
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Up to 4 VPN protocols are supported. A separate entry is needed for every VPN protocol. For a sample format, see [Examples](#examples).
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Begin -->
###### Device/{ProfileName}/NativeProfile/ProtocolList/NativeProtocolList/{NativeProtocolRowId}

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ [10.0.20207] and later |
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/ProtocolList/NativeProtocolList/{NativeProtocolRowId}
```
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> A separate entry is needed for every VPN protocol. For a sample format, see [Examples](#examples).
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-Begin -->
###### Device/{ProfileName}/NativeProfile/ProtocolList/NativeProtocolList/{NativeProtocolRowId}/Type

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ [10.0.20207] and later |
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/ProtocolList/NativeProtocolList/{NativeProtocolRowId}/Type
```
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-Description-Begin -->
<!-- Description-Source-DDF -->
Inbox VPN protocols type.
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> A separate entry is needed for every VPN protocol. For a sample format, see [Examples](#examples).
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| Pptp | Pptp. |
| L2tp | L2tp. |
| Ikev2 | Ikev2. |
| Sstp | Sstp. |
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-AllowedValues-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-Begin -->
##### Device/{ProfileName}/NativeProfile/ProtocolList/RetryTimeInHours

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ [10.0.20207] and later |
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/ProtocolList/RetryTimeInHours
```
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-Description-Begin -->
<!-- Description-Source-DDF -->
Default 168, max 500000.
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
RetryTimeInHours specifies the length of time Windows tries to use the last succesful protocol when making a new connection. Setting this value to 0 disables remembering the last successful protocol.
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-End -->

<!-- Device-{ProfileName}-NativeProfile-RoutingPolicyType-Begin -->
#### Device/{ProfileName}/NativeProfile/RoutingPolicyType

<!-- Device-{ProfileName}-NativeProfile-RoutingPolicyType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-NativeProfile-RoutingPolicyType-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-RoutingPolicyType-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/RoutingPolicyType
```
<!-- Device-{ProfileName}-NativeProfile-RoutingPolicyType-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-RoutingPolicyType-Description-Begin -->
<!-- Description-Source-DDF -->
Type of routing policy.
<!-- Device-{ProfileName}-NativeProfile-RoutingPolicyType-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-RoutingPolicyType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-RoutingPolicyType-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-RoutingPolicyType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-RoutingPolicyType-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-RoutingPolicyType-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| SplitTunnel | Traffic can go over any interface as determined by the networking stack. |
| ForceTunnel | All IP traffic must go over the VPN interface. |
<!-- Device-{ProfileName}-NativeProfile-RoutingPolicyType-AllowedValues-End -->

<!-- Device-{ProfileName}-NativeProfile-RoutingPolicyType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-RoutingPolicyType-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-RoutingPolicyType-End -->

<!-- Device-{ProfileName}-NativeProfile-Servers-Begin -->
#### Device/{ProfileName}/NativeProfile/Servers

<!-- Device-{ProfileName}-NativeProfile-Servers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-NativeProfile-Servers-Applicability-End -->

<!-- Device-{ProfileName}-NativeProfile-Servers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Servers
```
<!-- Device-{ProfileName}-NativeProfile-Servers-OmaUri-End -->

<!-- Device-{ProfileName}-NativeProfile-Servers-Description-Begin -->
<!-- Description-Source-DDF -->
Required for native profiles. Public or routable IP address or DNS name for the VPN gateway. It can point to the external IP of a gateway or a virtual IP for a server farm. Examples, 208.147.66.130 or vpn.contoso.com The name can be a server name plus a friendly name separated with a semi-colon. For example, server2.example.com;server2FriendlyName. When you get the value, the return will include both the server name and the friendly name; if no friendly name had been supplied it will default to the server name. You can make a list of server by making a list of server names (with optional friendly names) seperated by commas. For example, server1.example.com,server2.example.com.
<!-- Device-{ProfileName}-NativeProfile-Servers-Description-End -->

<!-- Device-{ProfileName}-NativeProfile-Servers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Servers-Editable-End -->

<!-- Device-{ProfileName}-NativeProfile-Servers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-NativeProfile-Servers-DFProperties-End -->

<!-- Device-{ProfileName}-NativeProfile-Servers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NativeProfile-Servers-Examples-End -->

<!-- Device-{ProfileName}-NativeProfile-Servers-End -->

<!-- Device-{ProfileName}-NetworkOutageTime-Begin -->
### Device/{ProfileName}/NetworkOutageTime

<!-- Device-{ProfileName}-NetworkOutageTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-{ProfileName}-NetworkOutageTime-Applicability-End -->

<!-- Device-{ProfileName}-NetworkOutageTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/NetworkOutageTime
```
<!-- Device-{ProfileName}-NetworkOutageTime-OmaUri-End -->

<!-- Device-{ProfileName}-NetworkOutageTime-Description-Begin -->
<!-- Description-Source-DDF -->
The amount of time in seconds the network is allowed to idle. 0 means no limit.
<!-- Device-{ProfileName}-NetworkOutageTime-Description-End -->

<!-- Device-{ProfileName}-NetworkOutageTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NetworkOutageTime-Editable-End -->

<!-- Device-{ProfileName}-NetworkOutageTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
<!-- Device-{ProfileName}-NetworkOutageTime-DFProperties-End -->

<!-- Device-{ProfileName}-NetworkOutageTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-NetworkOutageTime-Examples-End -->

<!-- Device-{ProfileName}-NetworkOutageTime-End -->

<!-- Device-{ProfileName}-PluginProfile-Begin -->
### Device/{ProfileName}/PluginProfile

<!-- Device-{ProfileName}-PluginProfile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-PluginProfile-Applicability-End -->

<!-- Device-{ProfileName}-PluginProfile-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/PluginProfile
```
<!-- Device-{ProfileName}-PluginProfile-OmaUri-End -->

<!-- Device-{ProfileName}-PluginProfile-Description-Begin -->
<!-- Description-Source-DDF -->
Nodes under the PluginProfile are required when using a Microsoft Store based VPN plugin.
<!-- Device-{ProfileName}-PluginProfile-Description-End -->

<!-- Device-{ProfileName}-PluginProfile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-PluginProfile-Editable-End -->

<!-- Device-{ProfileName}-PluginProfile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Get |
<!-- Device-{ProfileName}-PluginProfile-DFProperties-End -->

<!-- Device-{ProfileName}-PluginProfile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-PluginProfile-Examples-End -->

<!-- Device-{ProfileName}-PluginProfile-End -->

<!-- Device-{ProfileName}-PluginProfile-CustomConfiguration-Begin -->
#### Device/{ProfileName}/PluginProfile/CustomConfiguration

<!-- Device-{ProfileName}-PluginProfile-CustomConfiguration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-PluginProfile-CustomConfiguration-Applicability-End -->

<!-- Device-{ProfileName}-PluginProfile-CustomConfiguration-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/PluginProfile/CustomConfiguration
```
<!-- Device-{ProfileName}-PluginProfile-CustomConfiguration-OmaUri-End -->

<!-- Device-{ProfileName}-PluginProfile-CustomConfiguration-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. This is an HTML encoded XML blob for SSL-VPN plug-in specific configuration including authentication information that's deployed to the device to make it available for SSL-VPN plug-ins. Contact the plugin provider for format and other details. Most plugins can also configure values based on the server negotiations as well as defaults.
<!-- Device-{ProfileName}-PluginProfile-CustomConfiguration-Description-End -->

<!-- Device-{ProfileName}-PluginProfile-CustomConfiguration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-PluginProfile-CustomConfiguration-Editable-End -->

<!-- Device-{ProfileName}-PluginProfile-CustomConfiguration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-PluginProfile-CustomConfiguration-DFProperties-End -->

<!-- Device-{ProfileName}-PluginProfile-CustomConfiguration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-PluginProfile-CustomConfiguration-Examples-End -->

<!-- Device-{ProfileName}-PluginProfile-CustomConfiguration-End -->

<!-- Device-{ProfileName}-PluginProfile-PluginPackageFamilyName-Begin -->
#### Device/{ProfileName}/PluginProfile/PluginPackageFamilyName

<!-- Device-{ProfileName}-PluginProfile-PluginPackageFamilyName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-PluginProfile-PluginPackageFamilyName-Applicability-End -->

<!-- Device-{ProfileName}-PluginProfile-PluginPackageFamilyName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/PluginProfile/PluginPackageFamilyName
```
<!-- Device-{ProfileName}-PluginProfile-PluginPackageFamilyName-OmaUri-End -->

<!-- Device-{ProfileName}-PluginProfile-PluginPackageFamilyName-Description-Begin -->
<!-- Description-Source-DDF -->
Required for Plugin Profiles. This node specifies the Package Family Name of the SSL-VPN plugin app.
<!-- Device-{ProfileName}-PluginProfile-PluginPackageFamilyName-Description-End -->

<!-- Device-{ProfileName}-PluginProfile-PluginPackageFamilyName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-PluginProfile-PluginPackageFamilyName-Editable-End -->

<!-- Device-{ProfileName}-PluginProfile-PluginPackageFamilyName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-PluginProfile-PluginPackageFamilyName-DFProperties-End -->

<!-- Device-{ProfileName}-PluginProfile-PluginPackageFamilyName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-PluginProfile-PluginPackageFamilyName-Examples-End -->

<!-- Device-{ProfileName}-PluginProfile-PluginPackageFamilyName-End -->

<!-- Device-{ProfileName}-PluginProfile-ServerUrlList-Begin -->
#### Device/{ProfileName}/PluginProfile/ServerUrlList

<!-- Device-{ProfileName}-PluginProfile-ServerUrlList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-PluginProfile-ServerUrlList-Applicability-End -->

<!-- Device-{ProfileName}-PluginProfile-ServerUrlList-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/PluginProfile/ServerUrlList
```
<!-- Device-{ProfileName}-PluginProfile-ServerUrlList-OmaUri-End -->

<!-- Device-{ProfileName}-PluginProfile-ServerUrlList-Description-Begin -->
<!-- Description-Source-DDF -->
Required for plug-in profiles. Semicolon-separated list of servers in URL, hostname, or IP format.
<!-- Device-{ProfileName}-PluginProfile-ServerUrlList-Description-End -->

<!-- Device-{ProfileName}-PluginProfile-ServerUrlList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-PluginProfile-ServerUrlList-Editable-End -->

<!-- Device-{ProfileName}-PluginProfile-ServerUrlList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-PluginProfile-ServerUrlList-DFProperties-End -->

<!-- Device-{ProfileName}-PluginProfile-ServerUrlList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-PluginProfile-ServerUrlList-Examples-End -->

<!-- Device-{ProfileName}-PluginProfile-ServerUrlList-End -->

<!-- Device-{ProfileName}-PrivateNetwork-Begin -->
### Device/{ProfileName}/PrivateNetwork

<!-- Device-{ProfileName}-PrivateNetwork-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-{ProfileName}-PrivateNetwork-Applicability-End -->

<!-- Device-{ProfileName}-PrivateNetwork-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/PrivateNetwork
```
<!-- Device-{ProfileName}-PrivateNetwork-OmaUri-End -->

<!-- Device-{ProfileName}-PrivateNetwork-Description-Begin -->
<!-- Description-Source-DDF -->
Determines whether the VPN connection is public or private.
<!-- Device-{ProfileName}-PrivateNetwork-Description-End -->

<!-- Device-{ProfileName}-PrivateNetwork-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-PrivateNetwork-Editable-End -->

<!-- Device-{ProfileName}-PrivateNetwork-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | true |
<!-- Device-{ProfileName}-PrivateNetwork-DFProperties-End -->

<!-- Device-{ProfileName}-PrivateNetwork-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | VPN connection is public. |
| true (Default) | VPN connection is private. |
<!-- Device-{ProfileName}-PrivateNetwork-AllowedValues-End -->

<!-- Device-{ProfileName}-PrivateNetwork-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-PrivateNetwork-Examples-End -->

<!-- Device-{ProfileName}-PrivateNetwork-End -->

<!-- Device-{ProfileName}-ProfileXML-Begin -->
### Device/{ProfileName}/ProfileXML

<!-- Device-{ProfileName}-ProfileXML-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-ProfileXML-Applicability-End -->

<!-- Device-{ProfileName}-ProfileXML-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/ProfileXML
```
<!-- Device-{ProfileName}-ProfileXML-OmaUri-End -->

<!-- Device-{ProfileName}-ProfileXML-Description-Begin -->
<!-- Description-Source-DDF -->
The XML schema for provisioning all the fields of a VPN.
<!-- Device-{ProfileName}-ProfileXML-Description-End -->

<!-- Device-{ProfileName}-ProfileXML-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-ProfileXML-Editable-End -->

<!-- Device-{ProfileName}-ProfileXML-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | See [ProfileXML XSD Schema](#profilexml-xsd-schema) |
<!-- Device-{ProfileName}-ProfileXML-DFProperties-End -->

<!-- Device-{ProfileName}-ProfileXML-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-ProfileXML-Examples-End -->

<!-- Device-{ProfileName}-ProfileXML-End -->

<!-- Device-{ProfileName}-Proxy-Begin -->
### Device/{ProfileName}/Proxy

<!-- Device-{ProfileName}-Proxy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-Proxy-Applicability-End -->

<!-- Device-{ProfileName}-Proxy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/Proxy
```
<!-- Device-{ProfileName}-Proxy-OmaUri-End -->

<!-- Device-{ProfileName}-Proxy-Description-Begin -->
<!-- Description-Source-DDF -->
A collection of configuration objects to enable a post-connect proxy support for VPN. The proxy defined for this profile is applied when this profile is active and connected.
<!-- Device-{ProfileName}-Proxy-Description-End -->

<!-- Device-{ProfileName}-Proxy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-Proxy-Editable-End -->

<!-- Device-{ProfileName}-Proxy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{ProfileName}-Proxy-DFProperties-End -->

<!-- Device-{ProfileName}-Proxy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-Proxy-Examples-End -->

<!-- Device-{ProfileName}-Proxy-End -->

<!-- Device-{ProfileName}-Proxy-AutoConfigUrl-Begin -->
#### Device/{ProfileName}/Proxy/AutoConfigUrl

<!-- Device-{ProfileName}-Proxy-AutoConfigUrl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-Proxy-AutoConfigUrl-Applicability-End -->

<!-- Device-{ProfileName}-Proxy-AutoConfigUrl-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/Proxy/AutoConfigUrl
```
<!-- Device-{ProfileName}-Proxy-AutoConfigUrl-OmaUri-End -->

<!-- Device-{ProfileName}-Proxy-AutoConfigUrl-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Set a URL to automatically retrieve the proxy settings.
<!-- Device-{ProfileName}-Proxy-AutoConfigUrl-Description-End -->

<!-- Device-{ProfileName}-Proxy-AutoConfigUrl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-Proxy-AutoConfigUrl-Editable-End -->

<!-- Device-{ProfileName}-Proxy-AutoConfigUrl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-Proxy-AutoConfigUrl-DFProperties-End -->

<!-- Device-{ProfileName}-Proxy-AutoConfigUrl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-Proxy-AutoConfigUrl-Examples-End -->

<!-- Device-{ProfileName}-Proxy-AutoConfigUrl-End -->

<!-- Device-{ProfileName}-Proxy-Manual-Begin -->
#### Device/{ProfileName}/Proxy/Manual

<!-- Device-{ProfileName}-Proxy-Manual-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-Proxy-Manual-Applicability-End -->

<!-- Device-{ProfileName}-Proxy-Manual-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/Proxy/Manual
```
<!-- Device-{ProfileName}-Proxy-Manual-OmaUri-End -->

<!-- Device-{ProfileName}-Proxy-Manual-Description-Begin -->
<!-- Description-Source-DDF -->
Optional node containing the manual server settings.
<!-- Device-{ProfileName}-Proxy-Manual-Description-End -->

<!-- Device-{ProfileName}-Proxy-Manual-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-Proxy-Manual-Editable-End -->

<!-- Device-{ProfileName}-Proxy-Manual-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{ProfileName}-Proxy-Manual-DFProperties-End -->

<!-- Device-{ProfileName}-Proxy-Manual-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-Proxy-Manual-Examples-End -->

<!-- Device-{ProfileName}-Proxy-Manual-End -->

<!-- Device-{ProfileName}-Proxy-Manual-Server-Begin -->
##### Device/{ProfileName}/Proxy/Manual/Server

<!-- Device-{ProfileName}-Proxy-Manual-Server-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-Proxy-Manual-Server-Applicability-End -->

<!-- Device-{ProfileName}-Proxy-Manual-Server-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/Proxy/Manual/Server
```
<!-- Device-{ProfileName}-Proxy-Manual-Server-OmaUri-End -->

<!-- Device-{ProfileName}-Proxy-Manual-Server-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. The value is the proxy server address as a fully qualified hostname or an IP address, with port appended after a colon for example, proxy.constoso.com:80.
<!-- Device-{ProfileName}-Proxy-Manual-Server-Description-End -->

<!-- Device-{ProfileName}-Proxy-Manual-Server-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-Proxy-Manual-Server-Editable-End -->

<!-- Device-{ProfileName}-Proxy-Manual-Server-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-Proxy-Manual-Server-DFProperties-End -->

<!-- Device-{ProfileName}-Proxy-Manual-Server-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-Proxy-Manual-Server-Examples-End -->

<!-- Device-{ProfileName}-Proxy-Manual-Server-End -->

<!-- Device-{ProfileName}-RegisterDNS-Begin -->
### Device/{ProfileName}/RegisterDNS

<!-- Device-{ProfileName}-RegisterDNS-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{ProfileName}-RegisterDNS-Applicability-End -->

<!-- Device-{ProfileName}-RegisterDNS-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/RegisterDNS
```
<!-- Device-{ProfileName}-RegisterDNS-OmaUri-End -->

<!-- Device-{ProfileName}-RegisterDNS-Description-Begin -->
<!-- Description-Source-DDF -->
Allows registration of the connection's address in DNS.
<!-- Device-{ProfileName}-RegisterDNS-Description-End -->

<!-- Device-{ProfileName}-RegisterDNS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-RegisterDNS-Editable-End -->

<!-- Device-{ProfileName}-RegisterDNS-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-{ProfileName}-RegisterDNS-DFProperties-End -->

<!-- Device-{ProfileName}-RegisterDNS-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Don't register the connection's address in DNS. |
| true | Register the connection's addresses in DNS. |
<!-- Device-{ProfileName}-RegisterDNS-AllowedValues-End -->

<!-- Device-{ProfileName}-RegisterDNS-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-RegisterDNS-Examples-End -->

<!-- Device-{ProfileName}-RegisterDNS-End -->

<!-- Device-{ProfileName}-RememberCredentials-Begin -->
### Device/{ProfileName}/RememberCredentials

<!-- Device-{ProfileName}-RememberCredentials-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-RememberCredentials-Applicability-End -->

<!-- Device-{ProfileName}-RememberCredentials-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/RememberCredentials
```
<!-- Device-{ProfileName}-RememberCredentials-OmaUri-End -->

<!-- Device-{ProfileName}-RememberCredentials-Description-Begin -->
<!-- Description-Source-DDF -->
Boolean value (true or false) for caching credentials.
<!-- Device-{ProfileName}-RememberCredentials-Description-End -->

<!-- Device-{ProfileName}-RememberCredentials-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-RememberCredentials-Editable-End -->

<!-- Device-{ProfileName}-RememberCredentials-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-{ProfileName}-RememberCredentials-DFProperties-End -->

<!-- Device-{ProfileName}-RememberCredentials-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Don't cache credentials. |
| true | Credentials are cached whenever possible. |
<!-- Device-{ProfileName}-RememberCredentials-AllowedValues-End -->

<!-- Device-{ProfileName}-RememberCredentials-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-RememberCredentials-Examples-End -->

<!-- Device-{ProfileName}-RememberCredentials-End -->

<!-- Device-{ProfileName}-RouteList-Begin -->
### Device/{ProfileName}/RouteList

<!-- Device-{ProfileName}-RouteList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-RouteList-Applicability-End -->

<!-- Device-{ProfileName}-RouteList-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/RouteList
```
<!-- Device-{ProfileName}-RouteList-OmaUri-End -->

<!-- Device-{ProfileName}-RouteList-Description-Begin -->
<!-- Description-Source-DDF -->
List of routes to be added to the Routing table for the VPN Interface. Required in the Split Tunneling case where the VPN Server site has more subnets than the default subnet based on the IP assigned to Interface.
<!-- Device-{ProfileName}-RouteList-Description-End -->

<!-- Device-{ProfileName}-RouteList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-RouteList-Editable-End -->

<!-- Device-{ProfileName}-RouteList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{ProfileName}-RouteList-DFProperties-End -->

<!-- Device-{ProfileName}-RouteList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-RouteList-Examples-End -->

<!-- Device-{ProfileName}-RouteList-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Begin -->
#### Device/{ProfileName}/RouteList/{routeRowId}

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-RouteList-{routeRowId}-Applicability-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/RouteList/{routeRowId}
```
<!-- Device-{ProfileName}-RouteList-{routeRowId}-OmaUri-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Description-Begin -->
<!-- Description-Source-DDF -->
A sequential integer identifier for the RouteList. This is required if you are adding routes. Sequencing must start at 0.
<!-- Device-{ProfileName}-RouteList-{routeRowId}-Description-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-RouteList-{routeRowId}-Editable-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: A sequential integer identifier for the RouteList. This is required if you are adding routes. Sequencing must start at 0. |
<!-- Device-{ProfileName}-RouteList-{routeRowId}-DFProperties-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-RouteList-{routeRowId}-Examples-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Address-Begin -->
##### Device/{ProfileName}/RouteList/{routeRowId}/Address

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Address-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-RouteList-{routeRowId}-Address-Applicability-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Address-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/RouteList/{routeRowId}/Address
```
<!-- Device-{ProfileName}-RouteList-{routeRowId}-Address-OmaUri-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Address-Description-Begin -->
<!-- Description-Source-DDF -->
Subnet address in IPv4/v6 address format which, along with the prefix will be used to determine the destination prefix to send via the VPN Interface. This is the IP address part of the destination prefix.
<!-- Device-{ProfileName}-RouteList-{routeRowId}-Address-Description-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Address-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-RouteList-{routeRowId}-Address-Editable-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Address-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-RouteList-{routeRowId}-Address-DFProperties-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Address-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-RouteList-{routeRowId}-Address-Examples-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Address-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-Begin -->
##### Device/{ProfileName}/RouteList/{routeRowId}/ExclusionRoute

<!-- Device-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-Applicability-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/RouteList/{routeRowId}/ExclusionRoute
```
<!-- Device-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-OmaUri-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-Description-Begin -->
<!-- Description-Source-DDF -->
A boolean value that specifies if the route being added should point to the VPN Interface or the Physical Interface as the Gateway.
<!-- Device-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-Description-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-Editable-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-DFProperties-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | This route will direct traffic over the VPN. |
| true | This route will direct traffic over the physical interface. |
<!-- Device-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-AllowedValues-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-Examples-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Metric-Begin -->
##### Device/{ProfileName}/RouteList/{routeRowId}/Metric

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Metric-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-{ProfileName}-RouteList-{routeRowId}-Metric-Applicability-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Metric-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/RouteList/{routeRowId}/Metric
```
<!-- Device-{ProfileName}-RouteList-{routeRowId}-Metric-OmaUri-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Metric-Description-Begin -->
<!-- Description-Source-DDF -->
The route's metric.
<!-- Device-{ProfileName}-RouteList-{routeRowId}-Metric-Description-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Metric-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-RouteList-{routeRowId}-Metric-Editable-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Metric-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-RouteList-{routeRowId}-Metric-DFProperties-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Metric-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-RouteList-{routeRowId}-Metric-Examples-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-Metric-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-PrefixSize-Begin -->
##### Device/{ProfileName}/RouteList/{routeRowId}/PrefixSize

<!-- Device-{ProfileName}-RouteList-{routeRowId}-PrefixSize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-RouteList-{routeRowId}-PrefixSize-Applicability-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-PrefixSize-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/RouteList/{routeRowId}/PrefixSize
```
<!-- Device-{ProfileName}-RouteList-{routeRowId}-PrefixSize-OmaUri-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-PrefixSize-Description-Begin -->
<!-- Description-Source-DDF -->
The subnet prefix size part of the destination prefix for the route entry. This, along with the address will be used to determine the destination prefix to route through the VPN Interface.
<!-- Device-{ProfileName}-RouteList-{routeRowId}-PrefixSize-Description-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-PrefixSize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-RouteList-{routeRowId}-PrefixSize-Editable-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-PrefixSize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
<!-- Device-{ProfileName}-RouteList-{routeRowId}-PrefixSize-DFProperties-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-PrefixSize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-RouteList-{routeRowId}-PrefixSize-Examples-End -->

<!-- Device-{ProfileName}-RouteList-{routeRowId}-PrefixSize-End -->

<!-- Device-{ProfileName}-TrafficFilterList-Begin -->
### Device/{ProfileName}/TrafficFilterList

<!-- Device-{ProfileName}-TrafficFilterList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-TrafficFilterList-Applicability-End -->

<!-- Device-{ProfileName}-TrafficFilterList-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList
```
<!-- Device-{ProfileName}-TrafficFilterList-OmaUri-End -->

<!-- Device-{ProfileName}-TrafficFilterList-Description-Begin -->
<!-- Description-Source-DDF -->
A list of rules allowing traffic over the VPN Interface. Each Rule ID is OR'ed. Within each rule ID each Filter type is AND'ed.
<!-- Device-{ProfileName}-TrafficFilterList-Description-End -->

<!-- Device-{ProfileName}-TrafficFilterList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Once a TrafficFilterList is added, all traffic is blocked other than the ones matching the rules.
<!-- Device-{ProfileName}-TrafficFilterList-Editable-End -->

<!-- Device-{ProfileName}-TrafficFilterList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{ProfileName}-TrafficFilterList-DFProperties-End -->

<!-- Device-{ProfileName}-TrafficFilterList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-Examples-End -->

<!-- Device-{ProfileName}-TrafficFilterList-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Begin -->
#### Device/{ProfileName}/TrafficFilterList/{trafficFilterId}

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Applicability-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}
```
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-OmaUri-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Description-Begin -->
<!-- Description-Source-DDF -->
A sequential integer identifier for the Traffic Filter rules. Sequencing must start at 0.
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Description-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Editable-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: A sequential integer identifier for the Traffic Filter rules. Sequencing must start at 0. |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-DFProperties-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Examples-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Begin -->
##### Device/{ProfileName}/TrafficFilterList/{trafficFilterId}/App

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Applicability-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/App
```
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-OmaUri-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Description-Begin -->
<!-- Description-Source-DDF -->
Per App VPN Rule. This will Allow only the Apps specified to be allowed over VPN Interface.
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Description-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Editable-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-DFProperties-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Examples-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-Begin -->
###### Device/{ProfileName}/TrafficFilterList/{trafficFilterId}/App/Id

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-Applicability-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/App/Id
```
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-OmaUri-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-Description-Begin -->
<!-- Description-Source-DDF -->
App identity for the app-based traffic filter. The value for this node can be one of the following: PackageFamilyName - This App/Id value represents the PackageFamilyName of the app. The PackageFamilyName is the unique name of a Microsoft Store application. FilePath - This App/Id value represents the full file path of the app. For example, C:\Windows\System\Notepad.exe. SYSTEM - This value enables Kernel Drivers to send traffic through VPN (for example, PING or SMB).
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-Description-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-Editable-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-DFProperties-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-Examples-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-Begin -->
###### Device/{ProfileName}/TrafficFilterList/{trafficFilterId}/App/Type

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-Applicability-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/App/Type
```
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-OmaUri-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the type of ID of the App/Id. Either PackageFamilyName, FilePath, or System.
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-Description-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-Editable-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-DFProperties-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-Examples-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-Begin -->
##### Device/{ProfileName}/TrafficFilterList/{trafficFilterId}/Claims

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-Applicability-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/Claims
```
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-OmaUri-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies a rule in Security Descriptor Definition Language (SDDL) format to check against local user token.
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-Description-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-Editable-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-DFProperties-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-Examples-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-Begin -->
##### Device/{ProfileName}/TrafficFilterList/{trafficFilterId}/Direction

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-Applicability-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/Direction
```
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-OmaUri-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-Description-Begin -->
<!-- Description-Source-DDF -->
Outbound - The traffic filter allows traffic to reach destinations matching this rule. This is the default.

Inbound - The traffic filter allows traffic coming from external locations matching this rule.
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-Description-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-Editable-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-DFProperties-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-Examples-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-Begin -->
##### Device/{ProfileName}/TrafficFilterList/{trafficFilterId}/LocalAddressRanges

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-Applicability-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/LocalAddressRanges
```
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-OmaUri-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-Description-Begin -->
<!-- Description-Source-DDF -->
A list of comma separated values specifying local IP address ranges to allow.
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-Description-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-Editable-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-DFProperties-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-Examples-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-Begin -->
##### Device/{ProfileName}/TrafficFilterList/{trafficFilterId}/LocalPortRanges

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-Applicability-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/LocalPortRanges
```
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-OmaUri-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-Description-Begin -->
<!-- Description-Source-DDF -->
Comma Separated list of ranges for eg. 100-120,200,300-320.
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-Description-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-Editable-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Regular Expression: `^[\d]*$` |
| Dependency [ProtocolDependency] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/VPNv2/[ProfileName]/TrafficFilterList/[trafficFilterId]/Protocol` <br> Dependency Allowed Value: `[6,17]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-DFProperties-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-Examples-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-Begin -->
##### Device/{ProfileName}/TrafficFilterList/{trafficFilterId}/Protocol

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-Applicability-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/Protocol
```
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-OmaUri-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-Description-Begin -->
<!-- Description-Source-DDF -->
0-255 number representing the ip protocol (TCP = 6, UDP = 17).
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-Description-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-Editable-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-255]` |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-DFProperties-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-Examples-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-Begin -->
##### Device/{ProfileName}/TrafficFilterList/{trafficFilterId}/RemoteAddressRanges

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-Applicability-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/RemoteAddressRanges
```
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-OmaUri-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-Description-Begin -->
<!-- Description-Source-DDF -->
A list of comma separated values specifying remote IP address ranges to allow.
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-Description-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-Editable-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-DFProperties-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-Examples-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-Begin -->
##### Device/{ProfileName}/TrafficFilterList/{trafficFilterId}/RemotePortRanges

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-Applicability-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/RemotePortRanges
```
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-OmaUri-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-Description-Begin -->
<!-- Description-Source-DDF -->
A list of comma separated values specifying remote port ranges to allow. For example, 100-120, 200, 300-320.
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-Description-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-Editable-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Regular Expression: `^[\d]*$` |
| Dependency [ProtocolDependency] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/VPNv2/[ProfileName]/TrafficFilterList/[trafficFilterId]/Protocol` <br> Dependency Allowed Value: `[6,17]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-DFProperties-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-Examples-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-Begin -->
##### Device/{ProfileName}/TrafficFilterList/{trafficFilterId}/RoutingPolicyType

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-Applicability-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/RoutingPolicyType
```
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-OmaUri-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the routing policy if an App or Claims type is used in the traffic filter. The scope of this property is for this traffic filter rule alone.
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-Description-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-Editable-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-DFProperties-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| SplitTunnel | For this traffic filter rule, only the traffic meant for the VPN interface (as determined by the networking stack) goes over the interface. Internet traffic can continue to go over the other interfaces. |
| ForceTunnel | For this traffic rule all IP traffic must go through the VPN Interface only. |
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-AllowedValues-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-Examples-End -->

<!-- Device-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-End -->

<!-- Device-{ProfileName}-TrustedNetworkDetection-Begin -->
### Device/{ProfileName}/TrustedNetworkDetection

<!-- Device-{ProfileName}-TrustedNetworkDetection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProfileName}-TrustedNetworkDetection-Applicability-End -->

<!-- Device-{ProfileName}-TrustedNetworkDetection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/TrustedNetworkDetection
```
<!-- Device-{ProfileName}-TrustedNetworkDetection-OmaUri-End -->

<!-- Device-{ProfileName}-TrustedNetworkDetection-Description-Begin -->
<!-- Description-Source-DDF -->
Comma separated string to identify the trusted network. VPN won't connect automatically when the user is on their corporate wireless network where protected resources are directly accessible to the device.
<!-- Device-{ProfileName}-TrustedNetworkDetection-Description-End -->

<!-- Device-{ProfileName}-TrustedNetworkDetection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrustedNetworkDetection-Editable-End -->

<!-- Device-{ProfileName}-TrustedNetworkDetection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | `,` |
<!-- Device-{ProfileName}-TrustedNetworkDetection-DFProperties-End -->

<!-- Device-{ProfileName}-TrustedNetworkDetection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-TrustedNetworkDetection-Examples-End -->

<!-- Device-{ProfileName}-TrustedNetworkDetection-End -->

<!-- Device-{ProfileName}-UseRasCredentials-Begin -->
### Device/{ProfileName}/UseRasCredentials

<!-- Device-{ProfileName}-UseRasCredentials-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-{ProfileName}-UseRasCredentials-Applicability-End -->

<!-- Device-{ProfileName}-UseRasCredentials-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/VPNv2/{ProfileName}/UseRasCredentials
```
<!-- Device-{ProfileName}-UseRasCredentials-OmaUri-End -->

<!-- Device-{ProfileName}-UseRasCredentials-Description-Begin -->
<!-- Description-Source-DDF -->
Determines whether the credential manager will save ras credentials after a connection.
<!-- Device-{ProfileName}-UseRasCredentials-Description-End -->

<!-- Device-{ProfileName}-UseRasCredentials-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProfileName}-UseRasCredentials-Editable-End -->

<!-- Device-{ProfileName}-UseRasCredentials-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | true |
<!-- Device-{ProfileName}-UseRasCredentials-DFProperties-End -->

<!-- Device-{ProfileName}-UseRasCredentials-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Ras Credentials aren't saved. |
| true (Default) | Ras Credentials are saved. |
<!-- Device-{ProfileName}-UseRasCredentials-AllowedValues-End -->

<!-- Device-{ProfileName}-UseRasCredentials-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProfileName}-UseRasCredentials-Examples-End -->

<!-- Device-{ProfileName}-UseRasCredentials-End -->

<!-- User-{ProfileName}-Begin -->
## User/{ProfileName}

<!-- User-{ProfileName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-Applicability-End -->

<!-- User-{ProfileName}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}
```
<!-- User-{ProfileName}-OmaUri-End -->

<!-- User-{ProfileName}-Description-Begin -->
<!-- Description-Source-DDF -->
Unique alpha numeric identifier for the profile. The profile name mustn't include a forward slash (/). If the profile name has a space or other non-alphanumeric character, it must be properly escaped according to the URL encoding standard.
<!-- User-{ProfileName}-Description-End -->

<!-- User-{ProfileName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-Editable-End -->

<!-- User-{ProfileName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Atomic Required | True |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
| Allowed Values | Regular Expression: `^[^/]*$` |
<!-- User-{ProfileName}-DFProperties-End -->

<!-- User-{ProfileName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-Examples-End -->

<!-- User-{ProfileName}-End -->

<!-- User-{ProfileName}-AlwaysOn-Begin -->
### User/{ProfileName}/AlwaysOn

<!-- User-{ProfileName}-AlwaysOn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-AlwaysOn-Applicability-End -->

<!-- User-{ProfileName}-AlwaysOn-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/AlwaysOn
```
<!-- User-{ProfileName}-AlwaysOn-OmaUri-End -->

<!-- User-{ProfileName}-AlwaysOn-Description-Begin -->
<!-- Description-Source-DDF -->
An optional flag to enable Always On mode. This will automatically connect the VPN at sign-in and will stay connected until the user manually disconnects.
<!-- User-{ProfileName}-AlwaysOn-Description-End -->

<!-- User-{ProfileName}-AlwaysOn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-AlwaysOn-Editable-End -->

<!-- User-{ProfileName}-AlwaysOn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- User-{ProfileName}-AlwaysOn-DFProperties-End -->

<!-- User-{ProfileName}-AlwaysOn-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Always On is turned off. |
| true | Always On is turned on. |
<!-- User-{ProfileName}-AlwaysOn-AllowedValues-End -->

<!-- User-{ProfileName}-AlwaysOn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-AlwaysOn-Examples-End -->

<!-- User-{ProfileName}-AlwaysOn-End -->

<!-- User-{ProfileName}-AlwaysOnActive-Begin -->
### User/{ProfileName}/AlwaysOnActive

<!-- User-{ProfileName}-AlwaysOnActive-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-AlwaysOnActive-Applicability-End -->

<!-- User-{ProfileName}-AlwaysOnActive-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/AlwaysOnActive
```
<!-- User-{ProfileName}-AlwaysOnActive-OmaUri-End -->

<!-- User-{ProfileName}-AlwaysOnActive-Description-Begin -->
<!-- Description-Source-DDF -->
An optional flag to activate Always On mode. This is true by default if AlwaysOn is true. Setting controls whether "Connect Automatically" is toggled on profile creation.
<!-- User-{ProfileName}-AlwaysOnActive-Description-End -->

<!-- User-{ProfileName}-AlwaysOnActive-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-AlwaysOnActive-Editable-End -->

<!-- User-{ProfileName}-AlwaysOnActive-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- User-{ProfileName}-AlwaysOnActive-DFProperties-End -->

<!-- User-{ProfileName}-AlwaysOnActive-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Always On is inactive. |
| 1 (Default) | Always On is activated on provisioning. |
<!-- User-{ProfileName}-AlwaysOnActive-AllowedValues-End -->

<!-- User-{ProfileName}-AlwaysOnActive-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-AlwaysOnActive-Examples-End -->

<!-- User-{ProfileName}-AlwaysOnActive-End -->

<!-- User-{ProfileName}-APNBinding-Begin -->
### User/{ProfileName}/APNBinding

<!-- User-{ProfileName}-APNBinding-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-APNBinding-Applicability-End -->

<!-- User-{ProfileName}-APNBinding-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/APNBinding
```
<!-- User-{ProfileName}-APNBinding-OmaUri-End -->

<!-- User-{ProfileName}-APNBinding-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- User-{ProfileName}-APNBinding-Description-End -->

<!-- User-{ProfileName}-APNBinding-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-APNBinding-Editable-End -->

<!-- User-{ProfileName}-APNBinding-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-{ProfileName}-APNBinding-DFProperties-End -->

<!-- User-{ProfileName}-APNBinding-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-APNBinding-Examples-End -->

<!-- User-{ProfileName}-APNBinding-End -->

<!-- User-{ProfileName}-APNBinding-AccessPointName-Begin -->
#### User/{ProfileName}/APNBinding/AccessPointName

<!-- User-{ProfileName}-APNBinding-AccessPointName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-APNBinding-AccessPointName-Applicability-End -->

<!-- User-{ProfileName}-APNBinding-AccessPointName-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/APNBinding/AccessPointName
```
<!-- User-{ProfileName}-APNBinding-AccessPointName-OmaUri-End -->

<!-- User-{ProfileName}-APNBinding-AccessPointName-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- User-{ProfileName}-APNBinding-AccessPointName-Description-End -->

<!-- User-{ProfileName}-APNBinding-AccessPointName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-APNBinding-AccessPointName-Editable-End -->

<!-- User-{ProfileName}-APNBinding-AccessPointName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-APNBinding-AccessPointName-DFProperties-End -->

<!-- User-{ProfileName}-APNBinding-AccessPointName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-APNBinding-AccessPointName-Examples-End -->

<!-- User-{ProfileName}-APNBinding-AccessPointName-End -->

<!-- User-{ProfileName}-APNBinding-AuthenticationType-Begin -->
#### User/{ProfileName}/APNBinding/AuthenticationType

<!-- User-{ProfileName}-APNBinding-AuthenticationType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-APNBinding-AuthenticationType-Applicability-End -->

<!-- User-{ProfileName}-APNBinding-AuthenticationType-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/APNBinding/AuthenticationType
```
<!-- User-{ProfileName}-APNBinding-AuthenticationType-OmaUri-End -->

<!-- User-{ProfileName}-APNBinding-AuthenticationType-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- User-{ProfileName}-APNBinding-AuthenticationType-Description-End -->

<!-- User-{ProfileName}-APNBinding-AuthenticationType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-APNBinding-AuthenticationType-Editable-End -->

<!-- User-{ProfileName}-APNBinding-AuthenticationType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-APNBinding-AuthenticationType-DFProperties-End -->

<!-- User-{ProfileName}-APNBinding-AuthenticationType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-APNBinding-AuthenticationType-Examples-End -->

<!-- User-{ProfileName}-APNBinding-AuthenticationType-End -->

<!-- User-{ProfileName}-APNBinding-IsCompressionEnabled-Begin -->
#### User/{ProfileName}/APNBinding/IsCompressionEnabled

<!-- User-{ProfileName}-APNBinding-IsCompressionEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-APNBinding-IsCompressionEnabled-Applicability-End -->

<!-- User-{ProfileName}-APNBinding-IsCompressionEnabled-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/APNBinding/IsCompressionEnabled
```
<!-- User-{ProfileName}-APNBinding-IsCompressionEnabled-OmaUri-End -->

<!-- User-{ProfileName}-APNBinding-IsCompressionEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- User-{ProfileName}-APNBinding-IsCompressionEnabled-Description-End -->

<!-- User-{ProfileName}-APNBinding-IsCompressionEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-APNBinding-IsCompressionEnabled-Editable-End -->

<!-- User-{ProfileName}-APNBinding-IsCompressionEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-APNBinding-IsCompressionEnabled-DFProperties-End -->

<!-- User-{ProfileName}-APNBinding-IsCompressionEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-APNBinding-IsCompressionEnabled-Examples-End -->

<!-- User-{ProfileName}-APNBinding-IsCompressionEnabled-End -->

<!-- User-{ProfileName}-APNBinding-Password-Begin -->
#### User/{ProfileName}/APNBinding/Password

<!-- User-{ProfileName}-APNBinding-Password-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-APNBinding-Password-Applicability-End -->

<!-- User-{ProfileName}-APNBinding-Password-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/APNBinding/Password
```
<!-- User-{ProfileName}-APNBinding-Password-OmaUri-End -->

<!-- User-{ProfileName}-APNBinding-Password-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- User-{ProfileName}-APNBinding-Password-Description-End -->

<!-- User-{ProfileName}-APNBinding-Password-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-APNBinding-Password-Editable-End -->

<!-- User-{ProfileName}-APNBinding-Password-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-APNBinding-Password-DFProperties-End -->

<!-- User-{ProfileName}-APNBinding-Password-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-APNBinding-Password-Examples-End -->

<!-- User-{ProfileName}-APNBinding-Password-End -->

<!-- User-{ProfileName}-APNBinding-ProviderId-Begin -->
#### User/{ProfileName}/APNBinding/ProviderId

<!-- User-{ProfileName}-APNBinding-ProviderId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-APNBinding-ProviderId-Applicability-End -->

<!-- User-{ProfileName}-APNBinding-ProviderId-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/APNBinding/ProviderId
```
<!-- User-{ProfileName}-APNBinding-ProviderId-OmaUri-End -->

<!-- User-{ProfileName}-APNBinding-ProviderId-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- User-{ProfileName}-APNBinding-ProviderId-Description-End -->

<!-- User-{ProfileName}-APNBinding-ProviderId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-APNBinding-ProviderId-Editable-End -->

<!-- User-{ProfileName}-APNBinding-ProviderId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-APNBinding-ProviderId-DFProperties-End -->

<!-- User-{ProfileName}-APNBinding-ProviderId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-APNBinding-ProviderId-Examples-End -->

<!-- User-{ProfileName}-APNBinding-ProviderId-End -->

<!-- User-{ProfileName}-APNBinding-UserName-Begin -->
#### User/{ProfileName}/APNBinding/UserName

<!-- User-{ProfileName}-APNBinding-UserName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-APNBinding-UserName-Applicability-End -->

<!-- User-{ProfileName}-APNBinding-UserName-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/APNBinding/UserName
```
<!-- User-{ProfileName}-APNBinding-UserName-OmaUri-End -->

<!-- User-{ProfileName}-APNBinding-UserName-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- User-{ProfileName}-APNBinding-UserName-Description-End -->

<!-- User-{ProfileName}-APNBinding-UserName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-APNBinding-UserName-Editable-End -->

<!-- User-{ProfileName}-APNBinding-UserName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-APNBinding-UserName-DFProperties-End -->

<!-- User-{ProfileName}-APNBinding-UserName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-APNBinding-UserName-Examples-End -->

<!-- User-{ProfileName}-APNBinding-UserName-End -->

<!-- User-{ProfileName}-AppTriggerList-Begin -->
### User/{ProfileName}/AppTriggerList

<!-- User-{ProfileName}-AppTriggerList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-AppTriggerList-Applicability-End -->

<!-- User-{ProfileName}-AppTriggerList-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/AppTriggerList
```
<!-- User-{ProfileName}-AppTriggerList-OmaUri-End -->

<!-- User-{ProfileName}-AppTriggerList-Description-Begin -->
<!-- Description-Source-DDF -->
List of applications set to trigger the VPN. If any of these apps are launched and the VPN Profile is currently the active Profile, this VPN Profile will be triggered to connect.
<!-- User-{ProfileName}-AppTriggerList-Description-End -->

<!-- User-{ProfileName}-AppTriggerList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-AppTriggerList-Editable-End -->

<!-- User-{ProfileName}-AppTriggerList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-{ProfileName}-AppTriggerList-DFProperties-End -->

<!-- User-{ProfileName}-AppTriggerList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-AppTriggerList-Examples-End -->

<!-- User-{ProfileName}-AppTriggerList-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-Begin -->
#### User/{ProfileName}/AppTriggerList/{appTriggerRowId}

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-Applicability-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/AppTriggerList/{appTriggerRowId}
```
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-OmaUri-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-Description-Begin -->
<!-- Description-Source-DDF -->
A sequential integer identifier which allows the ability to specify multiple apps for App Trigger. Sequencing must start at 0 and you shouldn't skip numbers.
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-Description-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-Editable-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: A sequential integer identifier which allows the ability to specify multiple apps for App Trigger. Sequencing must start at 0 and you should not skip numbers. |
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-DFProperties-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-Examples-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Begin -->
##### User/{ProfileName}/AppTriggerList/{appTriggerRowId}/App

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Applicability-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/AppTriggerList/{appTriggerRowId}/App
```
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-OmaUri-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Description-Begin -->
<!-- Description-Source-DDF -->
App Node under the Row Id.
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Description-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Editable-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-DFProperties-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Examples-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-Begin -->
###### User/{ProfileName}/AppTriggerList/{appTriggerRowId}/App/Id

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-Applicability-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/AppTriggerList/{appTriggerRowId}/App/Id
```
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-OmaUri-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-Description-Begin -->
<!-- Description-Source-DDF -->
App Identity. Specified, based on the Type Field.
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-Description-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-Editable-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-DFProperties-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-Examples-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Id-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-Begin -->
###### User/{ProfileName}/AppTriggerList/{appTriggerRowId}/App/Type

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-Applicability-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/AppTriggerList/{appTriggerRowId}/App/Type
```
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-OmaUri-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the type of App/Id. This value can be either of the following: PackageFamilyName - When this is returned, the App/Id value represents the PackageFamilyName of the app. The PackageFamilyName is the unique name of the Microsoft Store application. FilePath - When this is returned, the App/Id value represents the full file path of the app. For example, C:\Windows\System\Notepad.exe.
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-Description-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-Editable-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-DFProperties-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-Examples-End -->

<!-- User-{ProfileName}-AppTriggerList-{appTriggerRowId}-App-Type-End -->

<!-- User-{ProfileName}-ByPassForLocal-Begin -->
### User/{ProfileName}/ByPassForLocal

<!-- User-{ProfileName}-ByPassForLocal-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-ByPassForLocal-Applicability-End -->

<!-- User-{ProfileName}-ByPassForLocal-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/ByPassForLocal
```
<!-- User-{ProfileName}-ByPassForLocal-OmaUri-End -->

<!-- User-{ProfileName}-ByPassForLocal-Description-Begin -->
<!-- Description-Source-DDF -->
False: Don't Bypass for Local traffic.

True: ByPass VPN Interface for Local Traffic.

Optional. When this setting is True, requests to local resources that are available on the same Wi-Fi network as the VPN client can bypass the VPN. For example, if enterprise policy for VPN requires force tunnel for VPN, but enterprise intends to allow the remote user to connect locally to media center in their home, then this option should be set to True. The user can bypass VPN for local subnet traffic. When this is set to False, the setting is disabled and no subnet exceptions are allowed.
<!-- User-{ProfileName}-ByPassForLocal-Description-End -->

<!-- User-{ProfileName}-ByPassForLocal-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-ByPassForLocal-Editable-End -->

<!-- User-{ProfileName}-ByPassForLocal-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-ByPassForLocal-DFProperties-End -->

<!-- User-{ProfileName}-ByPassForLocal-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-ByPassForLocal-Examples-End -->

<!-- User-{ProfileName}-ByPassForLocal-End -->

<!-- User-{ProfileName}-DataEncryption-Begin -->
### User/{ProfileName}/DataEncryption

<!-- User-{ProfileName}-DataEncryption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-{ProfileName}-DataEncryption-Applicability-End -->

<!-- User-{ProfileName}-DataEncryption-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/DataEncryption
```
<!-- User-{ProfileName}-DataEncryption-OmaUri-End -->

<!-- User-{ProfileName}-DataEncryption-Description-Begin -->
<!-- Description-Source-DDF -->
Determines the level of data encryption required for the connection.
<!-- User-{ProfileName}-DataEncryption-Description-End -->

<!-- User-{ProfileName}-DataEncryption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-DataEncryption-Editable-End -->

<!-- User-{ProfileName}-DataEncryption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | Require |
<!-- User-{ProfileName}-DataEncryption-DFProperties-End -->

<!-- User-{ProfileName}-DataEncryption-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| None | No Data Encryption required. |
| Require (Default) | Data Encryption required. |
| Max | Maximum-strength Data Encryption required. |
| Optional | Perform encryption if possible. |
<!-- User-{ProfileName}-DataEncryption-AllowedValues-End -->

<!-- User-{ProfileName}-DataEncryption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-DataEncryption-Examples-End -->

<!-- User-{ProfileName}-DataEncryption-End -->

<!-- User-{ProfileName}-DeviceCompliance-Begin -->
### User/{ProfileName}/DeviceCompliance

<!-- User-{ProfileName}-DeviceCompliance-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-DeviceCompliance-Applicability-End -->

<!-- User-{ProfileName}-DeviceCompliance-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/DeviceCompliance
```
<!-- User-{ProfileName}-DeviceCompliance-OmaUri-End -->

<!-- User-{ProfileName}-DeviceCompliance-Description-Begin -->
<!-- Description-Source-DDF -->
Nodes under DeviceCompliance can be used to enable AAD based Conditional Access for VPN.
<!-- User-{ProfileName}-DeviceCompliance-Description-End -->

<!-- User-{ProfileName}-DeviceCompliance-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-DeviceCompliance-Editable-End -->

<!-- User-{ProfileName}-DeviceCompliance-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Get |
<!-- User-{ProfileName}-DeviceCompliance-DFProperties-End -->

<!-- User-{ProfileName}-DeviceCompliance-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-DeviceCompliance-Examples-End -->

<!-- User-{ProfileName}-DeviceCompliance-End -->

<!-- User-{ProfileName}-DeviceCompliance-Enabled-Begin -->
#### User/{ProfileName}/DeviceCompliance/Enabled

<!-- User-{ProfileName}-DeviceCompliance-Enabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-DeviceCompliance-Enabled-Applicability-End -->

<!-- User-{ProfileName}-DeviceCompliance-Enabled-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/DeviceCompliance/Enabled
```
<!-- User-{ProfileName}-DeviceCompliance-Enabled-OmaUri-End -->

<!-- User-{ProfileName}-DeviceCompliance-Enabled-Description-Begin -->
<!-- Description-Source-DDF -->
Enables the Device Compliance flow from the client. If marked as True, the VPN Client will attempt to communicate with AAD to get a certificate to use for authentication. The VPN should be set up to use Certificate Auth and the VPN Server must trust the Server returned by Azure Active Directory.
<!-- User-{ProfileName}-DeviceCompliance-Enabled-Description-End -->

<!-- User-{ProfileName}-DeviceCompliance-Enabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-DeviceCompliance-Enabled-Editable-End -->

<!-- User-{ProfileName}-DeviceCompliance-Enabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-DeviceCompliance-Enabled-DFProperties-End -->

<!-- User-{ProfileName}-DeviceCompliance-Enabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disabled. |
| true | Enabled. |
<!-- User-{ProfileName}-DeviceCompliance-Enabled-AllowedValues-End -->

<!-- User-{ProfileName}-DeviceCompliance-Enabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-DeviceCompliance-Enabled-Examples-End -->

<!-- User-{ProfileName}-DeviceCompliance-Enabled-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-Begin -->
#### User/{ProfileName}/DeviceCompliance/Sso

<!-- User-{ProfileName}-DeviceCompliance-Sso-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-DeviceCompliance-Sso-Applicability-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/DeviceCompliance/Sso
```
<!-- User-{ProfileName}-DeviceCompliance-Sso-OmaUri-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-Description-Begin -->
<!-- Description-Source-DDF -->
Nodes under SSO can be used to choose a certificate different from the VPN Authentication cert for the Kerberos Authentication in the case of Device Compliance.
<!-- User-{ProfileName}-DeviceCompliance-Sso-Description-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-DeviceCompliance-Sso-Editable-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Get |
<!-- User-{ProfileName}-DeviceCompliance-Sso-DFProperties-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-DeviceCompliance-Sso-Examples-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-Eku-Begin -->
##### User/{ProfileName}/DeviceCompliance/Sso/Eku

<!-- User-{ProfileName}-DeviceCompliance-Sso-Eku-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-DeviceCompliance-Sso-Eku-Applicability-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-Eku-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/DeviceCompliance/Sso/Eku
```
<!-- User-{ProfileName}-DeviceCompliance-Sso-Eku-OmaUri-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-Eku-Description-Begin -->
<!-- Description-Source-DDF -->
Comma Separated list of EKU's for the VPN Client to look for the correct certificate for Kerberos Authentication.
<!-- User-{ProfileName}-DeviceCompliance-Sso-Eku-Description-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-Eku-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-DeviceCompliance-Sso-Eku-Editable-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-Eku-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-DeviceCompliance-Sso-Eku-DFProperties-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-Eku-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-DeviceCompliance-Sso-Eku-Examples-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-Eku-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-Enabled-Begin -->
##### User/{ProfileName}/DeviceCompliance/Sso/Enabled

<!-- User-{ProfileName}-DeviceCompliance-Sso-Enabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-DeviceCompliance-Sso-Enabled-Applicability-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-Enabled-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/DeviceCompliance/Sso/Enabled
```
<!-- User-{ProfileName}-DeviceCompliance-Sso-Enabled-OmaUri-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-Enabled-Description-Begin -->
<!-- Description-Source-DDF -->
If this field is set to True the VPN Client will look for a separate certificate for Kerberos Authentication.
<!-- User-{ProfileName}-DeviceCompliance-Sso-Enabled-Description-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-Enabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-DeviceCompliance-Sso-Enabled-Editable-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-Enabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-DeviceCompliance-Sso-Enabled-DFProperties-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-Enabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disabled. |
| true | Enabled. |
<!-- User-{ProfileName}-DeviceCompliance-Sso-Enabled-AllowedValues-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-Enabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-DeviceCompliance-Sso-Enabled-Examples-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-Enabled-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-IssuerHash-Begin -->
##### User/{ProfileName}/DeviceCompliance/Sso/IssuerHash

<!-- User-{ProfileName}-DeviceCompliance-Sso-IssuerHash-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-DeviceCompliance-Sso-IssuerHash-Applicability-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-IssuerHash-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/DeviceCompliance/Sso/IssuerHash
```
<!-- User-{ProfileName}-DeviceCompliance-Sso-IssuerHash-OmaUri-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-IssuerHash-Description-Begin -->
<!-- Description-Source-DDF -->
Comma Separated list of Issuer Hashes for the VPN Client to look for the correct certificate for Kerberos Authentication.
<!-- User-{ProfileName}-DeviceCompliance-Sso-IssuerHash-Description-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-IssuerHash-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-DeviceCompliance-Sso-IssuerHash-Editable-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-IssuerHash-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-DeviceCompliance-Sso-IssuerHash-DFProperties-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-IssuerHash-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-DeviceCompliance-Sso-IssuerHash-Examples-End -->

<!-- User-{ProfileName}-DeviceCompliance-Sso-IssuerHash-End -->

<!-- User-{ProfileName}-DisableAdvancedOptionsEditButton-Begin -->
### User/{ProfileName}/DisableAdvancedOptionsEditButton

<!-- User-{ProfileName}-DisableAdvancedOptionsEditButton-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-{ProfileName}-DisableAdvancedOptionsEditButton-Applicability-End -->

<!-- User-{ProfileName}-DisableAdvancedOptionsEditButton-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/DisableAdvancedOptionsEditButton
```
<!-- User-{ProfileName}-DisableAdvancedOptionsEditButton-OmaUri-End -->

<!-- User-{ProfileName}-DisableAdvancedOptionsEditButton-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. When this setting is True, the Advanced Options page will have its edit functions disabled, only allowing viewing and Clear Sign-In Info.
<!-- User-{ProfileName}-DisableAdvancedOptionsEditButton-Description-End -->

<!-- User-{ProfileName}-DisableAdvancedOptionsEditButton-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-DisableAdvancedOptionsEditButton-Editable-End -->

<!-- User-{ProfileName}-DisableAdvancedOptionsEditButton-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-DisableAdvancedOptionsEditButton-DFProperties-End -->

<!-- User-{ProfileName}-DisableAdvancedOptionsEditButton-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Advanced Options Edit Button is available. |
| true | Advanced Options Edit Button is unavailable. |
<!-- User-{ProfileName}-DisableAdvancedOptionsEditButton-AllowedValues-End -->

<!-- User-{ProfileName}-DisableAdvancedOptionsEditButton-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-DisableAdvancedOptionsEditButton-Examples-End -->

<!-- User-{ProfileName}-DisableAdvancedOptionsEditButton-End -->

<!-- User-{ProfileName}-DisableDisconnectButton-Begin -->
### User/{ProfileName}/DisableDisconnectButton

<!-- User-{ProfileName}-DisableDisconnectButton-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-{ProfileName}-DisableDisconnectButton-Applicability-End -->

<!-- User-{ProfileName}-DisableDisconnectButton-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/DisableDisconnectButton
```
<!-- User-{ProfileName}-DisableDisconnectButton-OmaUri-End -->

<!-- User-{ProfileName}-DisableDisconnectButton-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. When this setting is True, the Disconnect button won't be visible for connected profiles.
<!-- User-{ProfileName}-DisableDisconnectButton-Description-End -->

<!-- User-{ProfileName}-DisableDisconnectButton-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-DisableDisconnectButton-Editable-End -->

<!-- User-{ProfileName}-DisableDisconnectButton-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-DisableDisconnectButton-DFProperties-End -->

<!-- User-{ProfileName}-DisableDisconnectButton-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disconnect Button is visible. |
| true | Disconnect Button isn't visible. |
<!-- User-{ProfileName}-DisableDisconnectButton-AllowedValues-End -->

<!-- User-{ProfileName}-DisableDisconnectButton-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-DisableDisconnectButton-Examples-End -->

<!-- User-{ProfileName}-DisableDisconnectButton-End -->

<!-- User-{ProfileName}-DisableIKEv2Fragmentation-Begin -->
### User/{ProfileName}/DisableIKEv2Fragmentation

<!-- User-{ProfileName}-DisableIKEv2Fragmentation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-{ProfileName}-DisableIKEv2Fragmentation-Applicability-End -->

<!-- User-{ProfileName}-DisableIKEv2Fragmentation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/DisableIKEv2Fragmentation
```
<!-- User-{ProfileName}-DisableIKEv2Fragmentation-OmaUri-End -->

<!-- User-{ProfileName}-DisableIKEv2Fragmentation-Description-Begin -->
<!-- Description-Source-DDF -->
Set to disable IKEv2 Fragmentation.
<!-- User-{ProfileName}-DisableIKEv2Fragmentation-Description-End -->

<!-- User-{ProfileName}-DisableIKEv2Fragmentation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-DisableIKEv2Fragmentation-Editable-End -->

<!-- User-{ProfileName}-DisableIKEv2Fragmentation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- User-{ProfileName}-DisableIKEv2Fragmentation-DFProperties-End -->

<!-- User-{ProfileName}-DisableIKEv2Fragmentation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| true | IKEv2 Fragmentation won't be used. |
| false (Default) | IKEv2 Fragmentation is used as normal. |
<!-- User-{ProfileName}-DisableIKEv2Fragmentation-AllowedValues-End -->

<!-- User-{ProfileName}-DisableIKEv2Fragmentation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-DisableIKEv2Fragmentation-Examples-End -->

<!-- User-{ProfileName}-DisableIKEv2Fragmentation-End -->

<!-- User-{ProfileName}-DnsSuffix-Begin -->
### User/{ProfileName}/DnsSuffix

<!-- User-{ProfileName}-DnsSuffix-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-DnsSuffix-Applicability-End -->

<!-- User-{ProfileName}-DnsSuffix-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/DnsSuffix
```
<!-- User-{ProfileName}-DnsSuffix-OmaUri-End -->

<!-- User-{ProfileName}-DnsSuffix-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies one or more comma separated DNS suffixes. The first in the list is also used as the primary connection specific DNS suffix for the VPN Interface. The entire list will also be added into the SuffixSearchList.
<!-- User-{ProfileName}-DnsSuffix-Description-End -->

<!-- User-{ProfileName}-DnsSuffix-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-DnsSuffix-Editable-End -->

<!-- User-{ProfileName}-DnsSuffix-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-DnsSuffix-DFProperties-End -->

<!-- User-{ProfileName}-DnsSuffix-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-DnsSuffix-Examples-End -->

<!-- User-{ProfileName}-DnsSuffix-End -->

<!-- User-{ProfileName}-DomainNameInformationList-Begin -->
### User/{ProfileName}/DomainNameInformationList

<!-- User-{ProfileName}-DomainNameInformationList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-DomainNameInformationList-Applicability-End -->

<!-- User-{ProfileName}-DomainNameInformationList-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/DomainNameInformationList
```
<!-- User-{ProfileName}-DomainNameInformationList-OmaUri-End -->

<!-- User-{ProfileName}-DomainNameInformationList-Description-Begin -->
<!-- Description-Source-DDF -->
NRPT ([Name Resolution Policy Table](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn593632(v=ws.11))) Rules for the VPN Profile.
<!-- User-{ProfileName}-DomainNameInformationList-Description-End -->

<!-- User-{ProfileName}-DomainNameInformationList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Only applications using the [Windows DNS API](/windows/win32/dns/dns-reference) can make use of the NRPT and therefore all settings configured within the DomainNameInformationList section. Applications using their own DNS implementation bypass the Windows DNS API. One example of applications not using the Windows DNS API is nslookup, so always use the PowerShell CmdLet [Resolve-DNSName](/powershell/module/dnsclient/resolve-dnsname) to check the functionality of the NRPT.
<!-- User-{ProfileName}-DomainNameInformationList-Editable-End -->

<!-- User-{ProfileName}-DomainNameInformationList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-{ProfileName}-DomainNameInformationList-DFProperties-End -->

<!-- User-{ProfileName}-DomainNameInformationList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-DomainNameInformationList-Examples-End -->

<!-- User-{ProfileName}-DomainNameInformationList-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Begin -->
#### User/{ProfileName}/DomainNameInformationList/{dniRowId}

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Applicability-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/DomainNameInformationList/{dniRowId}
```
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-OmaUri-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Description-Begin -->
<!-- Description-Source-DDF -->
A sequential integer identifier for the Domain Name information. Sequencing must start at 0.
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Description-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Editable-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: A sequential integer identifier for the Domain Name information. Sequencing must start at 0. |
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DFProperties-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Examples-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-Begin -->
##### User/{ProfileName}/DomainNameInformationList/{dniRowId}/AutoTrigger

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-Applicability-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/DomainNameInformationList/{dniRowId}/AutoTrigger
```
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-OmaUri-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-Description-Begin -->
<!-- Description-Source-DDF -->
Boolean to determine whether this domain name rule will trigger the VPN.
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-Description-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-Editable-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-DFProperties-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | This DomainName rule won't trigger the VPN. |
| true | This DomainName rule will trigger the VPN. |
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-AllowedValues-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-Examples-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-AutoTrigger-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-Begin -->
##### User/{ProfileName}/DomainNameInformationList/{dniRowId}/DnsServers

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-Applicability-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/DomainNameInformationList/{dniRowId}/DnsServers
```
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-OmaUri-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-Description-Begin -->
<!-- Description-Source-DDF -->
Comma Seperated list of IP addresses for the DNS Servers to use for the domain name.
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-Description-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-Editable-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-DFProperties-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-Examples-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DnsServers-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-Begin -->
##### User/{ProfileName}/DomainNameInformationList/{dniRowId}/DomainName

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-Applicability-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/DomainNameInformationList/{dniRowId}/DomainName
```
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-OmaUri-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-Description-Begin -->
<!-- Description-Source-DDF -->
Used to indicate the namespace to which the policy applies. When a Name query is issued, the DNS client compares the name in the query to all of the namespaces under DomainNameInformationList to find a match. This parameter can be one of the following types: FQDN - Fully qualified domain name. Suffix - A domain suffix that will be appended to the shortname query for DNS resolution. To specify a suffix, prepend a . to the DNS suffix.
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-Description-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-Editable-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-DFProperties-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-Examples-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainName-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-Begin -->
##### User/{ProfileName}/DomainNameInformationList/{dniRowId}/DomainNameType

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-Applicability-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/DomainNameInformationList/{dniRowId}/DomainNameType
```
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-OmaUri-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the namespace type. This value can be one of the following: FQDN - If the DomainName wasn't prepended with a . and applies only to the fully qualified domain name (FQDN) of a specified host. Suffix - If the DomainName was prepended with a . and applies to the specified namespace, all records in that namespace, and all subdomains.
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-Description-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-Editable-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-DFProperties-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-Examples-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-DomainNameType-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-Begin -->
##### User/{ProfileName}/DomainNameInformationList/{dniRowId}/Persistent

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-Applicability-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/DomainNameInformationList/{dniRowId}/Persistent
```
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-OmaUri-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-Description-Begin -->
<!-- Description-Source-DDF -->
A boolean value that specifies if the rule being added should persist even when the VPN isn't connected.
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-Description-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-Editable-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-DFProperties-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | This DomainName rule will only be applied when VPN is connected. |
| true | This DomainName rule will always be present and applied. |
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-AllowedValues-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-Examples-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-Persistent-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-Begin -->
##### User/{ProfileName}/DomainNameInformationList/{dniRowId}/WebProxyServers

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-Applicability-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/DomainNameInformationList/{dniRowId}/WebProxyServers
```
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-OmaUri-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-Description-Begin -->
<!-- Description-Source-DDF -->
Web Proxy Server IP address if you are redirecting traffic through your intranet.
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-Description-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-Editable-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-DFProperties-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-Examples-End -->

<!-- User-{ProfileName}-DomainNameInformationList-{dniRowId}-WebProxyServers-End -->

<!-- User-{ProfileName}-EdpModeId-Begin -->
### User/{ProfileName}/EdpModeId

<!-- User-{ProfileName}-EdpModeId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-EdpModeId-Applicability-End -->

<!-- User-{ProfileName}-EdpModeId-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/EdpModeId
```
<!-- User-{ProfileName}-EdpModeId-OmaUri-End -->

<!-- User-{ProfileName}-EdpModeId-Description-Begin -->
<!-- Description-Source-DDF -->
Enterprise ID, which is required for connecting this VPN profile with an WIP policy. When this is set, the networking stack looks for this Enterprise ID in the app token to determine if the traffic is allowed to go over the VPN. If the profile is active, it also automatically triggers the VPN to connect. We recommend having only one such profile per device.
<!-- User-{ProfileName}-EdpModeId-Description-End -->

<!-- User-{ProfileName}-EdpModeId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-EdpModeId-Editable-End -->

<!-- User-{ProfileName}-EdpModeId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-EdpModeId-DFProperties-End -->

<!-- User-{ProfileName}-EdpModeId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-EdpModeId-Examples-End -->

<!-- User-{ProfileName}-EdpModeId-End -->

<!-- User-{ProfileName}-IPv4InterfaceMetric-Begin -->
### User/{ProfileName}/IPv4InterfaceMetric

<!-- User-{ProfileName}-IPv4InterfaceMetric-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-{ProfileName}-IPv4InterfaceMetric-Applicability-End -->

<!-- User-{ProfileName}-IPv4InterfaceMetric-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/IPv4InterfaceMetric
```
<!-- User-{ProfileName}-IPv4InterfaceMetric-OmaUri-End -->

<!-- User-{ProfileName}-IPv4InterfaceMetric-Description-Begin -->
<!-- Description-Source-DDF -->
The metric for the IPv4 interface.
<!-- User-{ProfileName}-IPv4InterfaceMetric-Description-End -->

<!-- User-{ProfileName}-IPv4InterfaceMetric-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-IPv4InterfaceMetric-Editable-End -->

<!-- User-{ProfileName}-IPv4InterfaceMetric-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-9999]` |
<!-- User-{ProfileName}-IPv4InterfaceMetric-DFProperties-End -->

<!-- User-{ProfileName}-IPv4InterfaceMetric-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-IPv4InterfaceMetric-Examples-End -->

<!-- User-{ProfileName}-IPv4InterfaceMetric-End -->

<!-- User-{ProfileName}-IPv6InterfaceMetric-Begin -->
### User/{ProfileName}/IPv6InterfaceMetric

<!-- User-{ProfileName}-IPv6InterfaceMetric-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-{ProfileName}-IPv6InterfaceMetric-Applicability-End -->

<!-- User-{ProfileName}-IPv6InterfaceMetric-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/IPv6InterfaceMetric
```
<!-- User-{ProfileName}-IPv6InterfaceMetric-OmaUri-End -->

<!-- User-{ProfileName}-IPv6InterfaceMetric-Description-Begin -->
<!-- Description-Source-DDF -->
The metric for the IPv6 interface.
<!-- User-{ProfileName}-IPv6InterfaceMetric-Description-End -->

<!-- User-{ProfileName}-IPv6InterfaceMetric-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-IPv6InterfaceMetric-Editable-End -->

<!-- User-{ProfileName}-IPv6InterfaceMetric-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-9999]` |
<!-- User-{ProfileName}-IPv6InterfaceMetric-DFProperties-End -->

<!-- User-{ProfileName}-IPv6InterfaceMetric-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-IPv6InterfaceMetric-Examples-End -->

<!-- User-{ProfileName}-IPv6InterfaceMetric-End -->

<!-- User-{ProfileName}-NativeProfile-Begin -->
### User/{ProfileName}/NativeProfile

<!-- User-{ProfileName}-NativeProfile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-NativeProfile-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile
```
<!-- User-{ProfileName}-NativeProfile-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-Description-Begin -->
<!-- Description-Source-DDF -->
InboxNodes under NativeProfile are required when using a Windows Inbox VPN Protocol (IKEv2, PPTP, L2TP, SSTP).
<!-- User-{ProfileName}-NativeProfile-Description-End -->

<!-- User-{ProfileName}-NativeProfile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Get |
<!-- User-{ProfileName}-NativeProfile-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Begin -->
#### User/{ProfileName}/NativeProfile/Authentication

<!-- User-{ProfileName}-NativeProfile-Authentication-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-NativeProfile-Authentication-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Authentication
```
<!-- User-{ProfileName}-NativeProfile-Authentication-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Description-Begin -->
<!-- Description-Source-DDF -->
Required node for native profile. It contains authentication information for the native VPN profile.
<!-- User-{ProfileName}-NativeProfile-Authentication-Description-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Authentication-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-{ProfileName}-NativeProfile-Authentication-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Authentication-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Begin -->
##### User/{ProfileName}/NativeProfile/Authentication/Certificate

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Authentication/Certificate
```
<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Description-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-Begin -->
###### User/{ProfileName}/NativeProfile/Authentication/Certificate/Eku

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Authentication/Certificate/Eku
```
<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-Description-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Eku-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-Begin -->
###### User/{ProfileName}/NativeProfile/Authentication/Certificate/Issuer

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Authentication/Certificate/Issuer
```
<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-Description-Begin -->
<!-- Description-Source-DDF -->
Reserved for future use.
<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-Description-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Certificate-Issuer-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Begin -->
##### User/{ProfileName}/NativeProfile/Authentication/Eap

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Authentication/Eap
```
<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Description-Begin -->
<!-- Description-Source-DDF -->
Required when the native profile specifies EAP authentication. EAP configuration XML.
<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Description-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-Begin -->
###### User/{ProfileName}/NativeProfile/Authentication/Eap/Configuration

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Authentication/Eap/Configuration
```
<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-Description-Begin -->
<!-- Description-Source-DDF -->
HTML encoded XML of the EAP configuration. For more information,see [EAP configuration](eap-configuration.md).
<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-Description-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Configuration-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Type-Begin -->
###### User/{ProfileName}/NativeProfile/Authentication/Eap/Type

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Type-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Type-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Type-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Authentication/Eap/Type
```
<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Type-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Type-Description-Begin -->
<!-- Description-Source-DDF -->
Required node for EAP profiles. This specifies the EAP Type ID
13 = EAP-TLS
26 = Ms-Chapv2
27 = Peap.
<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Type-Description-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Type-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Type-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Type-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Type-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Type-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Type-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-Eap-Type-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-MachineMethod-Begin -->
##### User/{ProfileName}/NativeProfile/Authentication/MachineMethod

<!-- User-{ProfileName}-NativeProfile-Authentication-MachineMethod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-NativeProfile-Authentication-MachineMethod-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-MachineMethod-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Authentication/MachineMethod
```
<!-- User-{ProfileName}-NativeProfile-Authentication-MachineMethod-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-MachineMethod-Description-Begin -->
<!-- Description-Source-DDF -->
This is only supported in IKEv2.
<!-- User-{ProfileName}-NativeProfile-Authentication-MachineMethod-Description-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-MachineMethod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Authentication-MachineMethod-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-MachineMethod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-Authentication-MachineMethod-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-MachineMethod-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| Certificate | Certificate. |
<!-- User-{ProfileName}-NativeProfile-Authentication-MachineMethod-AllowedValues-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-MachineMethod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Authentication-MachineMethod-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-MachineMethod-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-UserMethod-Begin -->
##### User/{ProfileName}/NativeProfile/Authentication/UserMethod

<!-- User-{ProfileName}-NativeProfile-Authentication-UserMethod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-NativeProfile-Authentication-UserMethod-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-UserMethod-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Authentication/UserMethod
```
<!-- User-{ProfileName}-NativeProfile-Authentication-UserMethod-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-UserMethod-Description-Begin -->
<!-- Description-Source-DDF -->
This value can be one of the following: EAP or MSChapv2 (This isn't supported for IKEv2).
<!-- User-{ProfileName}-NativeProfile-Authentication-UserMethod-Description-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-UserMethod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Authentication-UserMethod-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-UserMethod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-Authentication-UserMethod-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-UserMethod-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| EAP | EAP. |
| MSChapv2 | MSChapv2: This isn't supported for IKEv2. |
<!-- User-{ProfileName}-NativeProfile-Authentication-UserMethod-AllowedValues-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-UserMethod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Authentication-UserMethod-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-Authentication-UserMethod-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-Begin -->
#### User/{ProfileName}/NativeProfile/CryptographySuite

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/CryptographySuite
```
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-Description-Begin -->
<!-- Description-Source-DDF -->
Properties of IPSec tunnels.
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-Description-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-Begin -->
##### User/{ProfileName}/NativeProfile/CryptographySuite/AuthenticationTransformConstants

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/CryptographySuite/AuthenticationTransformConstants
```
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-Description-Begin -->
<!-- Description-Source-DDF -->
Type of authentication transform constant.
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-Description-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| MD596 | MD596. |
| SHA196 | SHA196. |
| SHA256128 | SHA256128. |
| GCMAES128 | GCMAES128. |
| GCMAES192 | GCMAES192. |
| GCMAES256 | GCMAES256. |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-AllowedValues-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-AuthenticationTransformConstants-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-Begin -->
##### User/{ProfileName}/NativeProfile/CryptographySuite/CipherTransformConstants

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/CryptographySuite/CipherTransformConstants
```
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-Description-Begin -->
<!-- Description-Source-DDF -->
Type of Cipher transform constant.
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-Description-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| DES | DES. |
| DES3 | DES3. |
| AES128 | AES128. |
| AES192 | AES192. |
| AES256 | AES256. |
| GCMAES128 | GCMAES128. |
| GCMAES192 | GCMAES192. |
| GCMAES256 | GCMAES256. |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-AllowedValues-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-CipherTransformConstants-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-Begin -->
##### User/{ProfileName}/NativeProfile/CryptographySuite/DHGroup

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/CryptographySuite/DHGroup
```
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-Description-Begin -->
<!-- Description-Source-DDF -->
Group used for DH (Diffie-Hellman).
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-Description-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| None | None. |
| Group1 | Group1. |
| Group2 | Group2. |
| Group14 | Group14. |
| ECP256 | ECP256. |
| ECP384 | ECP384. |
| Group24 | Group24. |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-AllowedValues-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-DHGroup-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-Begin -->
##### User/{ProfileName}/NativeProfile/CryptographySuite/EncryptionMethod

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/CryptographySuite/EncryptionMethod
```
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-Description-Begin -->
<!-- Description-Source-DDF -->
Type of encryption method.
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-Description-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| DES | DES. |
| DES3 | DES3. |
| AES128 | AES128. |
| AES192 | AES192. |
| AES256 | AES256. |
| AES_GCM_128 | AES_GCM_128. |
| AES_GCM_256 | AES_GCM_256. |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-AllowedValues-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-EncryptionMethod-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-Begin -->
##### User/{ProfileName}/NativeProfile/CryptographySuite/IntegrityCheckMethod

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/CryptographySuite/IntegrityCheckMethod
```
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-Description-Begin -->
<!-- Description-Source-DDF -->
Type of integrity check.
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-Description-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| MD5 | MD5. |
| SHA196 | SHA196. |
| SHA256 | SHA256. |
| SHA384 | SHA384. |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-AllowedValues-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-IntegrityCheckMethod-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-Begin -->
##### User/{ProfileName}/NativeProfile/CryptographySuite/PfsGroup

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/CryptographySuite/PfsGroup
```
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-Description-Begin -->
<!-- Description-Source-DDF -->
Group used for PFS (Perfect Forward Secrecy).
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-Description-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| None | None. |
| PFS1 | PFS1. |
| PFS2 | PFS2. |
| PFS2048 | PFS2048. |
| ECP256 | ECP256. |
| ECP384 | ECP384. |
| PFSMM | PFSMM. |
| PFS24 | PFS24. |
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-AllowedValues-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-CryptographySuite-PfsGroup-End -->

<!-- User-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-Begin -->
#### User/{ProfileName}/NativeProfile/DisableClassBasedDefaultRoute

<!-- User-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/DisableClassBasedDefaultRoute
```
<!-- User-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the class based default routes. For example, if the interface IP begins with 10, it assumes a class a IP and pushes the route to 10.0.0.0/8.
<!-- User-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-Description-End -->

<!-- User-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Enabled. |
| true | Disabled. |
<!-- User-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-AllowedValues-End -->

<!-- User-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-DisableClassBasedDefaultRoute-End -->

<!-- User-{ProfileName}-NativeProfile-L2tpPsk-Begin -->
#### User/{ProfileName}/NativeProfile/L2tpPsk

<!-- User-{ProfileName}-NativeProfile-L2tpPsk-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-NativeProfile-L2tpPsk-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-L2tpPsk-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/L2tpPsk
```
<!-- User-{ProfileName}-NativeProfile-L2tpPsk-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-L2tpPsk-Description-Begin -->
<!-- Description-Source-DDF -->
The preshared key used for an L2TP connection.
<!-- User-{ProfileName}-NativeProfile-L2tpPsk-Description-End -->

<!-- User-{ProfileName}-NativeProfile-L2tpPsk-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-L2tpPsk-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-L2tpPsk-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-L2tpPsk-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-L2tpPsk-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-L2tpPsk-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-L2tpPsk-End -->

<!-- User-{ProfileName}-NativeProfile-NativeProtocolType-Begin -->
#### User/{ProfileName}/NativeProfile/NativeProtocolType

<!-- User-{ProfileName}-NativeProfile-NativeProtocolType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-NativeProfile-NativeProtocolType-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-NativeProtocolType-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/NativeProtocolType
```
<!-- User-{ProfileName}-NativeProfile-NativeProtocolType-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-NativeProtocolType-Description-Begin -->
<!-- Description-Source-DDF -->
Required for native profiles. Type of tunneling protocol used.
<!-- User-{ProfileName}-NativeProfile-NativeProtocolType-Description-End -->

<!-- User-{ProfileName}-NativeProfile-NativeProtocolType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Using NativeProtocolType requires additional configuration of the NativeProfile/ProtocolList parameter.
<!-- User-{ProfileName}-NativeProfile-NativeProtocolType-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-NativeProtocolType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-NativeProtocolType-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-NativeProtocolType-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| PPTP | PPTP. |
| L2TP | L2TP. |
| IKEv2 | IKEv2. |
| Automatic | Automatic. |
| SSTP | SSTP. |
| ProtocolList | ProtocolList. |
<!-- User-{ProfileName}-NativeProfile-NativeProtocolType-AllowedValues-End -->

<!-- User-{ProfileName}-NativeProfile-NativeProtocolType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-NativeProtocolType-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-NativeProtocolType-End -->

<!-- User-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-Begin -->
#### User/{ProfileName}/NativeProfile/PlumbIKEv2TSAsRoutes

<!-- User-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- User-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/PlumbIKEv2TSAsRoutes
```
<!-- User-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-Description-Begin -->
<!-- Description-Source-DDF -->
True: Plumb traffic selectors as routes onto VPN interface, False: Don't plumb traffic selectors as routes.
<!-- User-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-Description-End -->

<!-- User-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-PlumbIKEv2TSAsRoutes-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-Begin -->
#### User/{ProfileName}/NativeProfile/ProtocolList

<!-- User-{ProfileName}-NativeProfile-ProtocolList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ [10.0.20207] and later |
<!-- User-{ProfileName}-NativeProfile-ProtocolList-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/ProtocolList
```
<!-- User-{ProfileName}-NativeProfile-ProtocolList-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-{ProfileName}-NativeProfile-ProtocolList-Description-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-ProtocolList-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-{ProfileName}-NativeProfile-ProtocolList-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-ProtocolList-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-Begin -->
##### User/{ProfileName}/NativeProfile/ProtocolList/NativeProtocolList

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ [10.0.20207] and later |
<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/ProtocolList/NativeProtocolList
```
<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-Description-Begin -->
<!-- Description-Source-DDF -->
List of inbox VPN protocols in priority order.
<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-Description-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Up to 4 VPN protocols are supported. A separate entry is needed for every VPN protocol. For a sample format, see [Examples](#examples).
<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Begin -->
###### User/{ProfileName}/NativeProfile/ProtocolList/NativeProtocolList/{NativeProtocolRowId}

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ [10.0.20207] and later |
<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/ProtocolList/NativeProtocolList/{NativeProtocolRowId}
```
<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Description-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> A separate entry is needed for every VPN protocol. For a sample format, see [Examples](#examples).
<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-Begin -->
###### User/{ProfileName}/NativeProfile/ProtocolList/NativeProtocolList/{NativeProtocolRowId}/Type

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ [10.0.20207] and later |
<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/ProtocolList/NativeProtocolList/{NativeProtocolRowId}/Type
```
<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-Description-Begin -->
<!-- Description-Source-DDF -->
Inbox VPN protocols type.
<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-Description-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> A separate entry is needed for every VPN protocol. For a sample format, see [Examples](#examples).
<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| Pptp | Pptp. |
| L2tp | L2tp. |
| Ikev2 | Ikev2. |
| Sstp | Sstp. |
<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-AllowedValues-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-NativeProtocolList-{NativeProtocolRowId}-Type-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-Begin -->
##### User/{ProfileName}/NativeProfile/ProtocolList/RetryTimeInHours

<!-- User-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ [10.0.20207] and later |
<!-- User-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/ProtocolList/RetryTimeInHours
```
<!-- User-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-Description-Begin -->
<!-- Description-Source-DDF -->
Default 168, max 500000.
<!-- User-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-Description-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
RetryTimeInHours specifies the length of time Windows tries to use the last succesful protocol when making a new connection. Setting this value to 0 disables remembering the last successful protocol.
<!-- User-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-ProtocolList-RetryTimeInHours-End -->

<!-- User-{ProfileName}-NativeProfile-RoutingPolicyType-Begin -->
#### User/{ProfileName}/NativeProfile/RoutingPolicyType

<!-- User-{ProfileName}-NativeProfile-RoutingPolicyType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-NativeProfile-RoutingPolicyType-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-RoutingPolicyType-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/RoutingPolicyType
```
<!-- User-{ProfileName}-NativeProfile-RoutingPolicyType-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-RoutingPolicyType-Description-Begin -->
<!-- Description-Source-DDF -->
Type of routing policy.
<!-- User-{ProfileName}-NativeProfile-RoutingPolicyType-Description-End -->

<!-- User-{ProfileName}-NativeProfile-RoutingPolicyType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-RoutingPolicyType-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-RoutingPolicyType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-RoutingPolicyType-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-RoutingPolicyType-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| SplitTunnel | Traffic can go over any interface as determined by the networking stack. |
| ForceTunnel | All IP traffic must go over the VPN interface. |
<!-- User-{ProfileName}-NativeProfile-RoutingPolicyType-AllowedValues-End -->

<!-- User-{ProfileName}-NativeProfile-RoutingPolicyType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-RoutingPolicyType-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-RoutingPolicyType-End -->

<!-- User-{ProfileName}-NativeProfile-Servers-Begin -->
#### User/{ProfileName}/NativeProfile/Servers

<!-- User-{ProfileName}-NativeProfile-Servers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-NativeProfile-Servers-Applicability-End -->

<!-- User-{ProfileName}-NativeProfile-Servers-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NativeProfile/Servers
```
<!-- User-{ProfileName}-NativeProfile-Servers-OmaUri-End -->

<!-- User-{ProfileName}-NativeProfile-Servers-Description-Begin -->
<!-- Description-Source-DDF -->
Required for native profiles. Public or routable IP address or DNS name for the VPN gateway. It can point to the external IP of a gateway or a virtual IP for a server farm. Examples, 208.147.66.130 or vpn.contoso.com The name can be a server name plus a friendly name separated with a semi-colon. For example, server2.example.com;server2FriendlyName. When you get the value, the return will include both the server name and the friendly name; if no friendly name had been supplied it will default to the server name. You can make a list of server by making a list of server names (with optional friendly names) seperated by commas. For example, server1.example.com,server2.example.com.
<!-- User-{ProfileName}-NativeProfile-Servers-Description-End -->

<!-- User-{ProfileName}-NativeProfile-Servers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Servers-Editable-End -->

<!-- User-{ProfileName}-NativeProfile-Servers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-NativeProfile-Servers-DFProperties-End -->

<!-- User-{ProfileName}-NativeProfile-Servers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NativeProfile-Servers-Examples-End -->

<!-- User-{ProfileName}-NativeProfile-Servers-End -->

<!-- User-{ProfileName}-NetworkOutageTime-Begin -->
### User/{ProfileName}/NetworkOutageTime

<!-- User-{ProfileName}-NetworkOutageTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-{ProfileName}-NetworkOutageTime-Applicability-End -->

<!-- User-{ProfileName}-NetworkOutageTime-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/NetworkOutageTime
```
<!-- User-{ProfileName}-NetworkOutageTime-OmaUri-End -->

<!-- User-{ProfileName}-NetworkOutageTime-Description-Begin -->
<!-- Description-Source-DDF -->
The amount of time in seconds the network is allowed to idle. 0 means no limit.
<!-- User-{ProfileName}-NetworkOutageTime-Description-End -->

<!-- User-{ProfileName}-NetworkOutageTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-NetworkOutageTime-Editable-End -->

<!-- User-{ProfileName}-NetworkOutageTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
<!-- User-{ProfileName}-NetworkOutageTime-DFProperties-End -->

<!-- User-{ProfileName}-NetworkOutageTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-NetworkOutageTime-Examples-End -->

<!-- User-{ProfileName}-NetworkOutageTime-End -->

<!-- User-{ProfileName}-PluginProfile-Begin -->
### User/{ProfileName}/PluginProfile

<!-- User-{ProfileName}-PluginProfile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-PluginProfile-Applicability-End -->

<!-- User-{ProfileName}-PluginProfile-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/PluginProfile
```
<!-- User-{ProfileName}-PluginProfile-OmaUri-End -->

<!-- User-{ProfileName}-PluginProfile-Description-Begin -->
<!-- Description-Source-DDF -->
Nodes under the PluginProfile are required when using a Microsoft Store based VPN plugin.
<!-- User-{ProfileName}-PluginProfile-Description-End -->

<!-- User-{ProfileName}-PluginProfile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-PluginProfile-Editable-End -->

<!-- User-{ProfileName}-PluginProfile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Get |
<!-- User-{ProfileName}-PluginProfile-DFProperties-End -->

<!-- User-{ProfileName}-PluginProfile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-PluginProfile-Examples-End -->

<!-- User-{ProfileName}-PluginProfile-End -->

<!-- User-{ProfileName}-PluginProfile-CustomConfiguration-Begin -->
#### User/{ProfileName}/PluginProfile/CustomConfiguration

<!-- User-{ProfileName}-PluginProfile-CustomConfiguration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-PluginProfile-CustomConfiguration-Applicability-End -->

<!-- User-{ProfileName}-PluginProfile-CustomConfiguration-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/PluginProfile/CustomConfiguration
```
<!-- User-{ProfileName}-PluginProfile-CustomConfiguration-OmaUri-End -->

<!-- User-{ProfileName}-PluginProfile-CustomConfiguration-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. This is an HTML encoded XML blob for SSL-VPN plug-in specific configuration including authentication information that's deployed to the device to make it available for SSL-VPN plug-ins. Contact the plugin provider for format and other details. Most plugins can also configure values based on the server negotiations as well as defaults.
<!-- User-{ProfileName}-PluginProfile-CustomConfiguration-Description-End -->

<!-- User-{ProfileName}-PluginProfile-CustomConfiguration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-PluginProfile-CustomConfiguration-Editable-End -->

<!-- User-{ProfileName}-PluginProfile-CustomConfiguration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-PluginProfile-CustomConfiguration-DFProperties-End -->

<!-- User-{ProfileName}-PluginProfile-CustomConfiguration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-PluginProfile-CustomConfiguration-Examples-End -->

<!-- User-{ProfileName}-PluginProfile-CustomConfiguration-End -->

<!-- User-{ProfileName}-PluginProfile-PluginPackageFamilyName-Begin -->
#### User/{ProfileName}/PluginProfile/PluginPackageFamilyName

<!-- User-{ProfileName}-PluginProfile-PluginPackageFamilyName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-PluginProfile-PluginPackageFamilyName-Applicability-End -->

<!-- User-{ProfileName}-PluginProfile-PluginPackageFamilyName-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/PluginProfile/PluginPackageFamilyName
```
<!-- User-{ProfileName}-PluginProfile-PluginPackageFamilyName-OmaUri-End -->

<!-- User-{ProfileName}-PluginProfile-PluginPackageFamilyName-Description-Begin -->
<!-- Description-Source-DDF -->
Required for Plugin Profiles. This node specifies the Package Family Name of the SSL-VPN plugin app.
<!-- User-{ProfileName}-PluginProfile-PluginPackageFamilyName-Description-End -->

<!-- User-{ProfileName}-PluginProfile-PluginPackageFamilyName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-PluginProfile-PluginPackageFamilyName-Editable-End -->

<!-- User-{ProfileName}-PluginProfile-PluginPackageFamilyName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-PluginProfile-PluginPackageFamilyName-DFProperties-End -->

<!-- User-{ProfileName}-PluginProfile-PluginPackageFamilyName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-PluginProfile-PluginPackageFamilyName-Examples-End -->

<!-- User-{ProfileName}-PluginProfile-PluginPackageFamilyName-End -->

<!-- User-{ProfileName}-PluginProfile-ServerUrlList-Begin -->
#### User/{ProfileName}/PluginProfile/ServerUrlList

<!-- User-{ProfileName}-PluginProfile-ServerUrlList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-PluginProfile-ServerUrlList-Applicability-End -->

<!-- User-{ProfileName}-PluginProfile-ServerUrlList-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/PluginProfile/ServerUrlList
```
<!-- User-{ProfileName}-PluginProfile-ServerUrlList-OmaUri-End -->

<!-- User-{ProfileName}-PluginProfile-ServerUrlList-Description-Begin -->
<!-- Description-Source-DDF -->
Required for plug-in profiles. Semicolon-separated list of servers in URL, hostname, or IP format.
<!-- User-{ProfileName}-PluginProfile-ServerUrlList-Description-End -->

<!-- User-{ProfileName}-PluginProfile-ServerUrlList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-PluginProfile-ServerUrlList-Editable-End -->

<!-- User-{ProfileName}-PluginProfile-ServerUrlList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-PluginProfile-ServerUrlList-DFProperties-End -->

<!-- User-{ProfileName}-PluginProfile-ServerUrlList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-PluginProfile-ServerUrlList-Examples-End -->

<!-- User-{ProfileName}-PluginProfile-ServerUrlList-End -->

<!-- User-{ProfileName}-PrivateNetwork-Begin -->
### User/{ProfileName}/PrivateNetwork

<!-- User-{ProfileName}-PrivateNetwork-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-{ProfileName}-PrivateNetwork-Applicability-End -->

<!-- User-{ProfileName}-PrivateNetwork-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/PrivateNetwork
```
<!-- User-{ProfileName}-PrivateNetwork-OmaUri-End -->

<!-- User-{ProfileName}-PrivateNetwork-Description-Begin -->
<!-- Description-Source-DDF -->
Determines whether the VPN connection is public or private.
<!-- User-{ProfileName}-PrivateNetwork-Description-End -->

<!-- User-{ProfileName}-PrivateNetwork-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-PrivateNetwork-Editable-End -->

<!-- User-{ProfileName}-PrivateNetwork-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | true |
<!-- User-{ProfileName}-PrivateNetwork-DFProperties-End -->

<!-- User-{ProfileName}-PrivateNetwork-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | VPN connection is public. |
| true (Default) | VPN connection is private. |
<!-- User-{ProfileName}-PrivateNetwork-AllowedValues-End -->

<!-- User-{ProfileName}-PrivateNetwork-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-PrivateNetwork-Examples-End -->

<!-- User-{ProfileName}-PrivateNetwork-End -->

<!-- User-{ProfileName}-ProfileXML-Begin -->
### User/{ProfileName}/ProfileXML

<!-- User-{ProfileName}-ProfileXML-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-ProfileXML-Applicability-End -->

<!-- User-{ProfileName}-ProfileXML-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/ProfileXML
```
<!-- User-{ProfileName}-ProfileXML-OmaUri-End -->

<!-- User-{ProfileName}-ProfileXML-Description-Begin -->
<!-- Description-Source-DDF -->
The XML schema for provisioning all the fields of a VPN.
<!-- User-{ProfileName}-ProfileXML-Description-End -->

<!-- User-{ProfileName}-ProfileXML-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-ProfileXML-Editable-End -->

<!-- User-{ProfileName}-ProfileXML-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | See [ProfileXML XSD Schema](#profilexml-xsd-schema) |
<!-- User-{ProfileName}-ProfileXML-DFProperties-End -->

<!-- User-{ProfileName}-ProfileXML-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-ProfileXML-Examples-End -->

<!-- User-{ProfileName}-ProfileXML-End -->

<!-- User-{ProfileName}-Proxy-Begin -->
### User/{ProfileName}/Proxy

<!-- User-{ProfileName}-Proxy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-Proxy-Applicability-End -->

<!-- User-{ProfileName}-Proxy-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/Proxy
```
<!-- User-{ProfileName}-Proxy-OmaUri-End -->

<!-- User-{ProfileName}-Proxy-Description-Begin -->
<!-- Description-Source-DDF -->
A collection of configuration objects to enable a post-connect proxy support for VPN. The proxy defined for this profile is applied when this profile is active and connected.
<!-- User-{ProfileName}-Proxy-Description-End -->

<!-- User-{ProfileName}-Proxy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-Proxy-Editable-End -->

<!-- User-{ProfileName}-Proxy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-{ProfileName}-Proxy-DFProperties-End -->

<!-- User-{ProfileName}-Proxy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-Proxy-Examples-End -->

<!-- User-{ProfileName}-Proxy-End -->

<!-- User-{ProfileName}-Proxy-AutoConfigUrl-Begin -->
#### User/{ProfileName}/Proxy/AutoConfigUrl

<!-- User-{ProfileName}-Proxy-AutoConfigUrl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-Proxy-AutoConfigUrl-Applicability-End -->

<!-- User-{ProfileName}-Proxy-AutoConfigUrl-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/Proxy/AutoConfigUrl
```
<!-- User-{ProfileName}-Proxy-AutoConfigUrl-OmaUri-End -->

<!-- User-{ProfileName}-Proxy-AutoConfigUrl-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Set a URL to automatically retrieve the proxy settings.
<!-- User-{ProfileName}-Proxy-AutoConfigUrl-Description-End -->

<!-- User-{ProfileName}-Proxy-AutoConfigUrl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-Proxy-AutoConfigUrl-Editable-End -->

<!-- User-{ProfileName}-Proxy-AutoConfigUrl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-Proxy-AutoConfigUrl-DFProperties-End -->

<!-- User-{ProfileName}-Proxy-AutoConfigUrl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-Proxy-AutoConfigUrl-Examples-End -->

<!-- User-{ProfileName}-Proxy-AutoConfigUrl-End -->

<!-- User-{ProfileName}-Proxy-Manual-Begin -->
#### User/{ProfileName}/Proxy/Manual

<!-- User-{ProfileName}-Proxy-Manual-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-Proxy-Manual-Applicability-End -->

<!-- User-{ProfileName}-Proxy-Manual-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/Proxy/Manual
```
<!-- User-{ProfileName}-Proxy-Manual-OmaUri-End -->

<!-- User-{ProfileName}-Proxy-Manual-Description-Begin -->
<!-- Description-Source-DDF -->
Optional node containing the manual server settings.
<!-- User-{ProfileName}-Proxy-Manual-Description-End -->

<!-- User-{ProfileName}-Proxy-Manual-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-Proxy-Manual-Editable-End -->

<!-- User-{ProfileName}-Proxy-Manual-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-{ProfileName}-Proxy-Manual-DFProperties-End -->

<!-- User-{ProfileName}-Proxy-Manual-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-Proxy-Manual-Examples-End -->

<!-- User-{ProfileName}-Proxy-Manual-End -->

<!-- User-{ProfileName}-Proxy-Manual-Server-Begin -->
##### User/{ProfileName}/Proxy/Manual/Server

<!-- User-{ProfileName}-Proxy-Manual-Server-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-Proxy-Manual-Server-Applicability-End -->

<!-- User-{ProfileName}-Proxy-Manual-Server-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/Proxy/Manual/Server
```
<!-- User-{ProfileName}-Proxy-Manual-Server-OmaUri-End -->

<!-- User-{ProfileName}-Proxy-Manual-Server-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. The value is the proxy server address as a fully qualified hostname or an IP address, with port appended after a colon for example, proxy.constoso.com:80.
<!-- User-{ProfileName}-Proxy-Manual-Server-Description-End -->

<!-- User-{ProfileName}-Proxy-Manual-Server-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-Proxy-Manual-Server-Editable-End -->

<!-- User-{ProfileName}-Proxy-Manual-Server-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-Proxy-Manual-Server-DFProperties-End -->

<!-- User-{ProfileName}-Proxy-Manual-Server-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-Proxy-Manual-Server-Examples-End -->

<!-- User-{ProfileName}-Proxy-Manual-Server-End -->

<!-- User-{ProfileName}-RegisterDNS-Begin -->
### User/{ProfileName}/RegisterDNS

<!-- User-{ProfileName}-RegisterDNS-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- User-{ProfileName}-RegisterDNS-Applicability-End -->

<!-- User-{ProfileName}-RegisterDNS-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/RegisterDNS
```
<!-- User-{ProfileName}-RegisterDNS-OmaUri-End -->

<!-- User-{ProfileName}-RegisterDNS-Description-Begin -->
<!-- Description-Source-DDF -->
Allows registration of the connection's address in DNS.
<!-- User-{ProfileName}-RegisterDNS-Description-End -->

<!-- User-{ProfileName}-RegisterDNS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-RegisterDNS-Editable-End -->

<!-- User-{ProfileName}-RegisterDNS-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- User-{ProfileName}-RegisterDNS-DFProperties-End -->

<!-- User-{ProfileName}-RegisterDNS-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Don't register the connection's address in DNS. |
| true | Register the connection's addresses in DNS. |
<!-- User-{ProfileName}-RegisterDNS-AllowedValues-End -->

<!-- User-{ProfileName}-RegisterDNS-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-RegisterDNS-Examples-End -->

<!-- User-{ProfileName}-RegisterDNS-End -->

<!-- User-{ProfileName}-RememberCredentials-Begin -->
### User/{ProfileName}/RememberCredentials

<!-- User-{ProfileName}-RememberCredentials-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-RememberCredentials-Applicability-End -->

<!-- User-{ProfileName}-RememberCredentials-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/RememberCredentials
```
<!-- User-{ProfileName}-RememberCredentials-OmaUri-End -->

<!-- User-{ProfileName}-RememberCredentials-Description-Begin -->
<!-- Description-Source-DDF -->
Boolean value (true or false) for caching credentials.
<!-- User-{ProfileName}-RememberCredentials-Description-End -->

<!-- User-{ProfileName}-RememberCredentials-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-RememberCredentials-Editable-End -->

<!-- User-{ProfileName}-RememberCredentials-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- User-{ProfileName}-RememberCredentials-DFProperties-End -->

<!-- User-{ProfileName}-RememberCredentials-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Don't cache credentials. |
| true | Credentials are cached whenever possible. |
<!-- User-{ProfileName}-RememberCredentials-AllowedValues-End -->

<!-- User-{ProfileName}-RememberCredentials-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-RememberCredentials-Examples-End -->

<!-- User-{ProfileName}-RememberCredentials-End -->

<!-- User-{ProfileName}-RequireVpnClientAppUI-Begin -->
### User/{ProfileName}/RequireVpnClientAppUI

<!-- User-{ProfileName}-RequireVpnClientAppUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ [10.0.19628] and later |
<!-- User-{ProfileName}-RequireVpnClientAppUI-Applicability-End -->

<!-- User-{ProfileName}-RequireVpnClientAppUI-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/RequireVpnClientAppUI
```
<!-- User-{ProfileName}-RequireVpnClientAppUI-OmaUri-End -->

<!-- User-{ProfileName}-RequireVpnClientAppUI-Description-Begin -->
<!-- Description-Source-DDF -->
Applicable only to AppContainer profiles.

False: Don't show profile in Settings UI.

True: Show profile in Settings UI.

Optional. This node is only relevant for AppContainer profiles (i.e. using the VpnManagementAgent::AddProfileFromXmlAsync method).
<!-- User-{ProfileName}-RequireVpnClientAppUI-Description-End -->

<!-- User-{ProfileName}-RequireVpnClientAppUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-RequireVpnClientAppUI-Editable-End -->

<!-- User-{ProfileName}-RequireVpnClientAppUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-RequireVpnClientAppUI-DFProperties-End -->

<!-- User-{ProfileName}-RequireVpnClientAppUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-RequireVpnClientAppUI-Examples-End -->

<!-- User-{ProfileName}-RequireVpnClientAppUI-End -->

<!-- User-{ProfileName}-RouteList-Begin -->
### User/{ProfileName}/RouteList

<!-- User-{ProfileName}-RouteList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-RouteList-Applicability-End -->

<!-- User-{ProfileName}-RouteList-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/RouteList
```
<!-- User-{ProfileName}-RouteList-OmaUri-End -->

<!-- User-{ProfileName}-RouteList-Description-Begin -->
<!-- Description-Source-DDF -->
List of routes to be added to the Routing table for the VPN Interface. Required in the Split Tunneling case where the VPN Server site has more subnets than the default subnet based on the IP assigned to Interface.
<!-- User-{ProfileName}-RouteList-Description-End -->

<!-- User-{ProfileName}-RouteList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-RouteList-Editable-End -->

<!-- User-{ProfileName}-RouteList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-{ProfileName}-RouteList-DFProperties-End -->

<!-- User-{ProfileName}-RouteList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-RouteList-Examples-End -->

<!-- User-{ProfileName}-RouteList-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-Begin -->
#### User/{ProfileName}/RouteList/{routeRowId}

<!-- User-{ProfileName}-RouteList-{routeRowId}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-RouteList-{routeRowId}-Applicability-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/RouteList/{routeRowId}
```
<!-- User-{ProfileName}-RouteList-{routeRowId}-OmaUri-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-Description-Begin -->
<!-- Description-Source-DDF -->
A sequential integer identifier for the RouteList. This is required if you are adding routes. Sequencing must start at 0.
<!-- User-{ProfileName}-RouteList-{routeRowId}-Description-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-RouteList-{routeRowId}-Editable-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: A sequential integer identifier for the RouteList. This is required if you are adding routes. Sequencing must start at 0. |
<!-- User-{ProfileName}-RouteList-{routeRowId}-DFProperties-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-RouteList-{routeRowId}-Examples-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-Address-Begin -->
##### User/{ProfileName}/RouteList/{routeRowId}/Address

<!-- User-{ProfileName}-RouteList-{routeRowId}-Address-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-RouteList-{routeRowId}-Address-Applicability-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-Address-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/RouteList/{routeRowId}/Address
```
<!-- User-{ProfileName}-RouteList-{routeRowId}-Address-OmaUri-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-Address-Description-Begin -->
<!-- Description-Source-DDF -->
Subnet address in IPv4/v6 address format which, along with the prefix will be used to determine the destination prefix to send via the VPN Interface. This is the IP address part of the destination prefix.
<!-- User-{ProfileName}-RouteList-{routeRowId}-Address-Description-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-Address-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-RouteList-{routeRowId}-Address-Editable-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-Address-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-RouteList-{routeRowId}-Address-DFProperties-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-Address-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-RouteList-{routeRowId}-Address-Examples-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-Address-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-Begin -->
##### User/{ProfileName}/RouteList/{routeRowId}/ExclusionRoute

<!-- User-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-Applicability-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/RouteList/{routeRowId}/ExclusionRoute
```
<!-- User-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-OmaUri-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-Description-Begin -->
<!-- Description-Source-DDF -->
A boolean value that specifies if the route being added should point to the VPN Interface or the Physical Interface as the Gateway.
<!-- User-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-Description-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-Editable-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- User-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-DFProperties-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | This route will direct traffic over the VPN. |
| true | This route will direct traffic over the physical interface. |
<!-- User-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-AllowedValues-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-Examples-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-ExclusionRoute-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-Metric-Begin -->
##### User/{ProfileName}/RouteList/{routeRowId}/Metric

<!-- User-{ProfileName}-RouteList-{routeRowId}-Metric-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-{ProfileName}-RouteList-{routeRowId}-Metric-Applicability-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-Metric-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/RouteList/{routeRowId}/Metric
```
<!-- User-{ProfileName}-RouteList-{routeRowId}-Metric-OmaUri-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-Metric-Description-Begin -->
<!-- Description-Source-DDF -->
The route's metric.
<!-- User-{ProfileName}-RouteList-{routeRowId}-Metric-Description-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-Metric-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-RouteList-{routeRowId}-Metric-Editable-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-Metric-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-RouteList-{routeRowId}-Metric-DFProperties-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-Metric-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-RouteList-{routeRowId}-Metric-Examples-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-Metric-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-PrefixSize-Begin -->
##### User/{ProfileName}/RouteList/{routeRowId}/PrefixSize

<!-- User-{ProfileName}-RouteList-{routeRowId}-PrefixSize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-RouteList-{routeRowId}-PrefixSize-Applicability-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-PrefixSize-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/RouteList/{routeRowId}/PrefixSize
```
<!-- User-{ProfileName}-RouteList-{routeRowId}-PrefixSize-OmaUri-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-PrefixSize-Description-Begin -->
<!-- Description-Source-DDF -->
The subnet prefix size part of the destination prefix for the route entry. This, along with the address will be used to determine the destination prefix to route through the VPN Interface.
<!-- User-{ProfileName}-RouteList-{routeRowId}-PrefixSize-Description-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-PrefixSize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-RouteList-{routeRowId}-PrefixSize-Editable-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-PrefixSize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
<!-- User-{ProfileName}-RouteList-{routeRowId}-PrefixSize-DFProperties-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-PrefixSize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-RouteList-{routeRowId}-PrefixSize-Examples-End -->

<!-- User-{ProfileName}-RouteList-{routeRowId}-PrefixSize-End -->

<!-- User-{ProfileName}-TrafficFilterList-Begin -->
### User/{ProfileName}/TrafficFilterList

<!-- User-{ProfileName}-TrafficFilterList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-TrafficFilterList-Applicability-End -->

<!-- User-{ProfileName}-TrafficFilterList-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList
```
<!-- User-{ProfileName}-TrafficFilterList-OmaUri-End -->

<!-- User-{ProfileName}-TrafficFilterList-Description-Begin -->
<!-- Description-Source-DDF -->
A list of rules allowing traffic over the VPN Interface. Each Rule ID is OR'ed. Within each rule ID each Filter type is AND'ed.
<!-- User-{ProfileName}-TrafficFilterList-Description-End -->

<!-- User-{ProfileName}-TrafficFilterList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Once a TrafficFilterList is added, all traffic is blocked other than the ones matching the rules.
<!-- User-{ProfileName}-TrafficFilterList-Editable-End -->

<!-- User-{ProfileName}-TrafficFilterList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-{ProfileName}-TrafficFilterList-DFProperties-End -->

<!-- User-{ProfileName}-TrafficFilterList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-Examples-End -->

<!-- User-{ProfileName}-TrafficFilterList-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Begin -->
#### User/{ProfileName}/TrafficFilterList/{trafficFilterId}

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Applicability-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}
```
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-OmaUri-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Description-Begin -->
<!-- Description-Source-DDF -->
A sequential integer identifier for the Traffic Filter rules. Sequencing must start at 0.
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Description-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Editable-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: A sequential integer identifier for the Traffic Filter rules. Sequencing must start at 0. |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-DFProperties-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Examples-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Begin -->
##### User/{ProfileName}/TrafficFilterList/{trafficFilterId}/App

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Applicability-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/App
```
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-OmaUri-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Description-Begin -->
<!-- Description-Source-DDF -->
Per App VPN Rule. This will Allow only the Apps specified to be allowed over VPN Interface.
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Description-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Editable-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-DFProperties-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Examples-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-Begin -->
###### User/{ProfileName}/TrafficFilterList/{trafficFilterId}/App/Id

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-Applicability-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/App/Id
```
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-OmaUri-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-Description-Begin -->
<!-- Description-Source-DDF -->
App identity for the app-based traffic filter. The value for this node can be one of the following: PackageFamilyName - This App/Id value represents the PackageFamilyName of the app. The PackageFamilyName is the unique name of a Microsoft Store application. FilePath - This App/Id value represents the full file path of the app. For example, C:\Windows\System\Notepad.exe. SYSTEM - This value enables Kernel Drivers to send traffic through VPN (for example, PING or SMB).
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-Description-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-Editable-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-DFProperties-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-Examples-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Id-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-Begin -->
###### User/{ProfileName}/TrafficFilterList/{trafficFilterId}/App/Type

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-Applicability-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/App/Type
```
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-OmaUri-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the type of ID of the App/Id. Either PackageFamilyName, FilePath, or System.
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-Description-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-Editable-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-DFProperties-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-Examples-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-App-Type-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-Begin -->
##### User/{ProfileName}/TrafficFilterList/{trafficFilterId}/Claims

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-Applicability-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/Claims
```
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-OmaUri-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies a rule in Security Descriptor Definition Language (SDDL) format to check against local user token.
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-Description-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-Editable-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-DFProperties-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-Examples-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Claims-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-Begin -->
##### User/{ProfileName}/TrafficFilterList/{trafficFilterId}/Direction

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-Applicability-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/Direction
```
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-OmaUri-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-Description-Begin -->
<!-- Description-Source-DDF -->
Outbound - The traffic filter allows traffic to reach destinations matching this rule. This is the default.

Inbound - The traffic filter allows traffic coming from external locations matching this rule.
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-Description-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-Editable-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-DFProperties-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-Examples-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Direction-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-Begin -->
##### User/{ProfileName}/TrafficFilterList/{trafficFilterId}/LocalAddressRanges

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-Applicability-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/LocalAddressRanges
```
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-OmaUri-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-Description-Begin -->
<!-- Description-Source-DDF -->
A list of comma separated values specifying local IP address ranges to allow.
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-Description-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-Editable-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-DFProperties-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-Examples-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalAddressRanges-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-Begin -->
##### User/{ProfileName}/TrafficFilterList/{trafficFilterId}/LocalPortRanges

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-Applicability-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/LocalPortRanges
```
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-OmaUri-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-Description-Begin -->
<!-- Description-Source-DDF -->
Comma Separated list of ranges for eg. 100-120,200,300-320.
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-Description-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-Editable-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Regular Expression: `^[\d]*$` |
| Dependency [ProtocolDependency] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/VPNv2/[ProfileName]/TrafficFilterList/[trafficFilterId]/Protocol` <br> Dependency Allowed Value: `[6,17]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-DFProperties-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-Examples-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-LocalPortRanges-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-Begin -->
##### User/{ProfileName}/TrafficFilterList/{trafficFilterId}/Protocol

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-Applicability-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/Protocol
```
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-OmaUri-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-Description-Begin -->
<!-- Description-Source-DDF -->
0-255 number representing the ip protocol (TCP = 6, UDP = 17).
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-Description-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-Editable-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-255]` |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-DFProperties-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-Examples-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-Protocol-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-Begin -->
##### User/{ProfileName}/TrafficFilterList/{trafficFilterId}/RemoteAddressRanges

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-Applicability-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/RemoteAddressRanges
```
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-OmaUri-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-Description-Begin -->
<!-- Description-Source-DDF -->
A list of comma separated values specifying remote IP address ranges to allow.
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-Description-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-Editable-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-DFProperties-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-Examples-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemoteAddressRanges-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-Begin -->
##### User/{ProfileName}/TrafficFilterList/{trafficFilterId}/RemotePortRanges

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-Applicability-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/RemotePortRanges
```
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-OmaUri-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-Description-Begin -->
<!-- Description-Source-DDF -->
A list of comma separated values specifying remote port ranges to allow. For example, 100-120, 200, 300-320.
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-Description-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-Editable-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Regular Expression: `^[\d]*$` |
| Dependency [ProtocolDependency] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/VPNv2/[ProfileName]/TrafficFilterList/[trafficFilterId]/Protocol` <br> Dependency Allowed Value: `[6,17]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-DFProperties-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-Examples-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RemotePortRanges-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-Begin -->
##### User/{ProfileName}/TrafficFilterList/{trafficFilterId}/RoutingPolicyType

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-Applicability-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/TrafficFilterList/{trafficFilterId}/RoutingPolicyType
```
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-OmaUri-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the routing policy if an App or Claims type is used in the traffic filter. The scope of this property is for this traffic filter rule alone.
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-Description-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-Editable-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-DFProperties-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| SplitTunnel | For this traffic filter rule, only the traffic meant for the VPN interface (as determined by the networking stack) goes over the interface. Internet traffic can continue to go over the other interfaces. |
| ForceTunnel | For this traffic rule all IP traffic must go through the VPN Interface only. |
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-AllowedValues-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-Examples-End -->

<!-- User-{ProfileName}-TrafficFilterList-{trafficFilterId}-RoutingPolicyType-End -->

<!-- User-{ProfileName}-TrustedNetworkDetection-Begin -->
### User/{ProfileName}/TrustedNetworkDetection

<!-- User-{ProfileName}-TrustedNetworkDetection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{ProfileName}-TrustedNetworkDetection-Applicability-End -->

<!-- User-{ProfileName}-TrustedNetworkDetection-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/TrustedNetworkDetection
```
<!-- User-{ProfileName}-TrustedNetworkDetection-OmaUri-End -->

<!-- User-{ProfileName}-TrustedNetworkDetection-Description-Begin -->
<!-- Description-Source-DDF -->
Comma separated string to identify the trusted network. VPN won't connect automatically when the user is on their corporate wireless network where protected resources are directly accessible to the device.
<!-- User-{ProfileName}-TrustedNetworkDetection-Description-End -->

<!-- User-{ProfileName}-TrustedNetworkDetection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrustedNetworkDetection-Editable-End -->

<!-- User-{ProfileName}-TrustedNetworkDetection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | `,` |
<!-- User-{ProfileName}-TrustedNetworkDetection-DFProperties-End -->

<!-- User-{ProfileName}-TrustedNetworkDetection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-TrustedNetworkDetection-Examples-End -->

<!-- User-{ProfileName}-TrustedNetworkDetection-End -->

<!-- User-{ProfileName}-UseRasCredentials-Begin -->
### User/{ProfileName}/UseRasCredentials

<!-- User-{ProfileName}-UseRasCredentials-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-{ProfileName}-UseRasCredentials-Applicability-End -->

<!-- User-{ProfileName}-UseRasCredentials-OmaUri-Begin -->
```User
./User/Vendor/MSFT/VPNv2/{ProfileName}/UseRasCredentials
```
<!-- User-{ProfileName}-UseRasCredentials-OmaUri-End -->

<!-- User-{ProfileName}-UseRasCredentials-Description-Begin -->
<!-- Description-Source-DDF -->
Determines whether the credential manager will save ras credentials after a connection.
<!-- User-{ProfileName}-UseRasCredentials-Description-End -->

<!-- User-{ProfileName}-UseRasCredentials-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProfileName}-UseRasCredentials-Editable-End -->

<!-- User-{ProfileName}-UseRasCredentials-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | true |
<!-- User-{ProfileName}-UseRasCredentials-DFProperties-End -->

<!-- User-{ProfileName}-UseRasCredentials-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Ras Credentials aren't saved. |
| true (Default) | Ras Credentials are saved. |
<!-- User-{ProfileName}-UseRasCredentials-AllowedValues-End -->

<!-- User-{ProfileName}-UseRasCredentials-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProfileName}-UseRasCredentials-Examples-End -->

<!-- User-{ProfileName}-UseRasCredentials-End -->

<!-- VPNv2-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## ProfileXML XSD Schema

```xml
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:import namespace="http://www.microsoft.com/provisioning/EapHostConfig" schemaLocation="EapHostConfig.xsd" />
  <xs:element name="VPNProfile">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="ProfileName" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="EdpModeId" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="RememberCredentials" type="xs:boolean" minOccurs="0" maxOccurs="1" />
        <xs:element name="AlwaysOn" type="xs:boolean" minOccurs="0" maxOccurs="1" />
        <xs:element name="DnsSuffix" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="TrustedNetworkDetection" type="xs:string" minOccurs="0" maxOccurs="1" />
        <xs:element name="DisableAdvancedOptionsEditButton" type="xs:boolean" minOccurs="0" maxOccurs="1" />
        <xs:element name="DisableDisconnectButton" type="xs:boolean" minOccurs="0" maxOccurs="1" />
        <xs:element name="LockDown" type="xs:boolean" minOccurs="0" maxOccurs="1" />
        <xs:element name="DeviceTunnel" type="xs:boolean" minOccurs="0" maxOccurs="1" />
        <xs:element name="RegisterDNS" type="xs:boolean" minOccurs="0" maxOccurs="1" />
        <xs:element name="ByPassForLocal" type="xs:boolean" minOccurs="0" maxOccurs="1" />
        <xs:element name="RequireVpnClientAppUI" type="xs:boolean" minOccurs="0" maxOccurs="1" />
        <xs:element name="Proxy" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="AutoConfigUrl" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="Manual" minOccurs="0" maxOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Server" type="xs:string" minOccurs="1" maxOccurs="1" />
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="APNBinding" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ProviderId" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="AccessPointName" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="UserName" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="Password" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="IsCompressionEnabled" type="xs:boolean" minOccurs="0" maxOccurs="1" />
              <xs:element name="AuthenticationType" type="xs:string" minOccurs="0" maxOccurs="1" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="DeviceCompliance" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="Enabled" type="xs:boolean" minOccurs="1" maxOccurs="1" />
              <xs:element name="Sso" minOccurs="0" maxOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Enabled" type="xs:boolean" minOccurs="1" maxOccurs="1" />
                    <xs:element name="Eku" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="IssuerHash" type="xs:string" minOccurs="0" maxOccurs="1" />
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="PluginProfile" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ServerUrlList" type="xs:string" minOccurs="1" maxOccurs="1" />
              <xs:element name="CustomConfiguration" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="PluginPackageFamilyName" type="xs:string" minOccurs="1" maxOccurs="1" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="AppTrigger" minOccurs="0" maxOccurs="unbounded">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="App" minOccurs="1" maxOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Id" type="xs:string" minOccurs="1" maxOccurs="1" />
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="DomainNameInformation" minOccurs="0" maxOccurs="unbounded">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="DomainName" type="xs:string" minOccurs="1" maxOccurs="1" />
              <xs:element name="DnsServers" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="WebProxyServers" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="AutoTrigger" type="xs:boolean" minOccurs="0" maxOccurs="1" />
              <xs:element name="Persistent" type="xs:boolean" minOccurs="0" maxOccurs="1" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="TrafficFilter" minOccurs="0" maxOccurs="unbounded">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="App" minOccurs="0" maxOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Id" type="xs:string" minOccurs="1" maxOccurs="1" />
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element name="Claims" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="Protocol" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="LocalPortRanges" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="RemotePortRanges" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="LocalAddressRanges" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="RemoteAddressRanges" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="RoutingPolicyType" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="Direction" type="xs:string" minOccurs="0" maxOccurs="1" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="NativeProfile" minOccurs="0" maxOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="Servers" type="xs:string" minOccurs="1" maxOccurs="1" />
              <xs:element name="RoutingPolicyType" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="NativeProtocolType" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="L2tpPsk" type="xs:string" minOccurs="0" maxOccurs="1" />
              <xs:element name="DisableClassBasedDefaultRoute" type="xs:boolean" minOccurs="0" maxOccurs="1" />
              <xs:element name="PlumbIKEv2TSAsRoutes" type="xs:boolean" minOccurs="0" maxOccurs="1" />
              <xs:element name="CryptographySuite" minOccurs="0" maxOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="AuthenticationTransformConstants" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="CipherTransformConstants" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="PfsGroup" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="DHGroup" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="IntegrityCheckMethod" type="xs:string" minOccurs="0" maxOccurs="1" />
                    <xs:element name="EncryptionMethod" type="xs:string" minOccurs="0" maxOccurs="1" />
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
              <xs:element name="Authentication" minOccurs="1" maxOccurs="1">
                <xs:complexType>
                  <xs:choice>
                    <xs:sequence>
                      <xs:element name="UserMethod" type="xs:string" minOccurs="0" maxOccurs="1" />
                      <xs:element name="Eap" minOccurs="0" maxOccurs="1">
                        <xs:complexType>
                          <xs:sequence>
                            <xs:element name="Configuration" minOccurs="1" maxOccurs="1">
                              <xs:complexType>
                                <xs:sequence>
                                  <xs:element xmlns:q1="http://www.microsoft.com/provisioning/EapHostConfig" ref="q1:EapHostConfig" />
                                </xs:sequence>
                              </xs:complexType>
                            </xs:element>
                          </xs:sequence>
                        </xs:complexType>
                      </xs:element>
                    </xs:sequence>
                    <xs:element name="MachineMethod" type="xs:string" minOccurs="0" maxOccurs="1" />
                  </xs:choice>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="Route" minOccurs="0" maxOccurs="unbounded">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="Address" type="xs:string" minOccurs="1" maxOccurs="1" />
              <xs:element name="PrefixSize" type="xs:unsignedByte" minOccurs="1" maxOccurs="1" />
              <xs:element name="ExclusionRoute" type="xs:boolean" minOccurs="0" maxOccurs="1" />
              <xs:element name="Metric" type="xs:unsignedInt" minOccurs="0" maxOccurs="1" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>
```

## Examples

Profile example

```xml
<SyncML xmlns="SYNCML:SYNCML1.2" xmlns:A="syncml:metinf">
  <SyncBody>
    <Atomic>
      <CmdID>10000</CmdID>

      <!-- Configure VPN Server Name or Address (PhoneNumber=) [Comma Separated]-->
      <Add>
        <CmdID>10001</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPN_Demo/ProfileXML</LocURI>
          </Target>
          <Data><VPNProfile>
  <ProfileName>VPN_Demo</ProfileName>
  <NativeProfile>
    <Servers>VPNServer.contoso.com</Servers>
    <NativeProtocolType>ProtocolList</NativeProtocolType>
      <ProtocolList>
        <NativeProtocol>
          <Type>Ikev2</Type>
        </NativeProtocol>
        <NativeProtocol>
          <Type>Sstp</Type>
        </NativeProtocol>
        <RetryTimeinHours>168</RetryTimeinHours>
      </ProtocolList>
    <Authentication>
      <UserMethod>Eap</UserMethod>
      <Eap>
        <Configuration>
<EapHostConfig xmlns="http://www.microsoft.com/provisioning/EapHostConfig"> <EapMethod> <Type xmlns="http://www.microsoft.com/provisioning/EapCommon">25</Type> <VendorId xmlns="http://www.microsoft.com/provisioning/EapCommon">0</VendorId> <VendorType xmlns="http://www.microsoft.com/provisioning/EapCommon">0</VendorType> <AuthorId xmlns="http://www.microsoft.com/provisioning/EapCommon">0</AuthorId> </EapMethod> <Config xmlns="http://www.microsoft.com/provisioning/EapHostConfig"> <Eap xmlns="http://www.microsoft.com/provisioning/BaseEapConnectionPropertiesV1"> <Type>25</Type> <EapType xmlns="http://www.microsoft.com/provisioning/MsPeapConnectionPropertiesV1"> <ServerValidation> <DisableUserPromptForServerValidation>false</DisableUserPromptForServerValidation> <ServerNames></ServerNames> </ServerValidation> <FastReconnect>true</FastReconnect> <InnerEapOptional>false</InnerEapOptional> <Eap xmlns="http://www.microsoft.com/provisioning/BaseEapConnectionPropertiesV1"> <Type>13</Type> <EapType xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV1"> <CredentialsSource> <CertificateStore> <SimpleCertSelection>false</SimpleCertSelection> </CertificateStore> </CredentialsSource> <ServerValidation> <DisableUserPromptForServerValidation>false</DisableUserPromptForServerValidation> <ServerNames></ServerNames> </ServerValidation> <DifferentUsername>false</DifferentUsername> <PerformServerValidation xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV2">false</PerformServerValidation> <AcceptServerName xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV2">false</AcceptServerName> <TLSExtensions xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV2"> <FilteringInfo xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV3"> <EKUMapping> <EKUMap> <EKUName>Unknown Key Usage</EKUName> <EKUOID>1.3.6.1.4.1.311.87</EKUOID> </EKUMap> </EKUMapping> <ClientAuthEKUList Enabled="true"> <EKUMapInList> <EKUName>Unknown Key Usage</EKUName> </EKUMapInList> </ClientAuthEKUList> </FilteringInfo> </TLSExtensions> </EapType> </Eap> <EnableQuarantineChecks>false</EnableQuarantineChecks> <RequireCryptoBinding>false</RequireCryptoBinding> <PeapExtensions> <PerformServerValidation xmlns="http://www.microsoft.com/provisioning/MsPeapConnectionPropertiesV2">false</PerformServerValidation> <AcceptServerName xmlns="http://www.microsoft.com/provisioning/MsPeapConnectionPropertiesV2">false</AcceptServerName> </PeapExtensions> </EapType> </Eap> </Config> </EapHostConfig>
    </Configuration>
      </Eap>
    </Authentication>
    <RoutingPolicyType>SplitTunnel</RoutingPolicyType>
  </NativeProfile>
  <DomainNameInformationList>
    <DomainName>.contoso.com</DomainName>
    <DNSServers>10.5.5.5</DNSServers>
  </DomainNameInformationList>
 <TrafficFilter>
    <App>%ProgramFiles%\Internet Explorer\iexplore.exe</App>
  </TrafficFilter>
  <TrafficFilter>
    <App>Microsoft.MicrosoftEdge_8wekyb3d8bbwe</App>
  </TrafficFilter>
  <Route>
    <Address>10.0.0.0</Address>
    <PrefixSize>8</PrefixSize>
  </Route>
  <Route>
    <Address>25.0.0.0</Address>
    <PrefixSize>8</PrefixSize>
  </Route>
    <RememberCredentials>true</RememberCredentials>
  </VPNProfile></Data>
        </Item>
      </Add>

    </Atomic>
    <Final/>
  </SyncBody>
</SyncML>
```

AppTriggerList

```xml
<!-- Internet Explorer -->
<Add>
  <CmdID>10013</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/AppTriggerList/0/App/Id</LocURI>
    </Target>
    <Data>%PROGRAMFILES%\Internet Explorer\iexplore.exe</Data>
  </Item>
</Add>
<Add>
  <CmdID>10014</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/AppTriggerList/1/App/Id</LocURI>
    </Target>
    <Data>%PROGRAMFILES% (x86)\Internet Explorer\iexplore.exe</Data>
  </Item>
</Add>
<!-- Edge -->
<Add>
  <CmdID>10015</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/AppTriggerList/2/App/Id</LocURI>
    </Target>
    <Data>Microsoft.MicrosoftEdge_8wekyb3d8bbwe</Data>
  </Item>
</Add>
```

RouteList and ExclusionRoute

```xml
<Add>
  <CmdID>10008</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/RouteList/0/Address</LocURI>
    </Target>
    <Data>192.168.0.0</Data>
  </Item>
</Add>
<Add>
  <CmdID>10009</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/RouteList/0/PrefixSize</LocURI>
    </Target>
    <Meta>
      <Format xmlns="syncml:metinf">int</Format>
    </Meta>
    <Data>24</Data>
  </Item>
</Add>
<Add>
  <CmdID>10010</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/RouteList/0/ExclusionRoute</LocURI>
    </Target>
    <Meta>
      <Format xmlns="syncml:metinf">bool</Format>
    </Meta>
    <Data>true</Data>
  </Item>
</Add>
```

DomainNameInformationList

```xml
<!-- Domain Name rule with Suffix Match with DNS Servers -->
<Add>
  <CmdID>10013</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DomainNameInformationList/0/DomainName</LocURI>
    </Target>
    <Data>.contoso.com</Data>
  </Item>
</Add>
<Add>
  <CmdID>10014</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DomainNameInformationList/0/DnsServers</LocURI>
    </Target>
    <Data>192.168.0.11,192.168.0.12</Data>
  </Item>
</Add>

<!-- Domain Name rule with Suffix Match with Web Proxy -->
<Add>
  <CmdID>10013</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DomainNameInformationList/1/DomainName</LocURI>
    </Target>
    <Data>.contoso.com</Data>
  </Item>
</Add>

<Add>
  <CmdID>10015</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DomainNameInformationList/1/WebProxyServers</LocURI>
    </Target>
    <Data>192.168.0.100:8888</Data>
  </Item>
</Add>

<!-- Domain Name rule with FQDN Match with DNS Servers -->

<Add>
  <CmdID>10016</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DomainNameInformationList/2/DomainName</LocURI>
    </Target>
    <Data>finance.contoso.com</Data>
  </Item>
</Add>
<Add>
  <CmdID>10017</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DomainNameInformationList/2/DnsServers</LocURI>
    </Target>
    <Data>192.168.0.11,192.168.0.12</Data>
  </Item>
</Add>

<!-- Domain Name rule with FQDN Match with Proxy Server -->

<Add>
  <CmdID>10016</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DomainNameInformationList/3/DomainName</LocURI>
    </Target>
    <Data>finance.contoso.com</Data>
  </Item>
</Add>
<Add>
  <CmdID>10017</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DomainNameInformationList/3/WebProxyServers</LocURI>
    </Target>
    <Data>192.168.0.11:8080</Data>
  </Item>
</Add>

<!-- Domain Name rule for all other (any) traffic through DNS Servers -->
<Add>
  <CmdID>10016</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DomainNameInformationList/4/DomainName</LocURI>
    </Target>
    <Data>.</Data>
  </Item>
</Add>
<Add>
  <CmdID>10017</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DomainNameInformationList/4/DnsServers</LocURI>
    </Target>
    <Data>192.168.0.11,192.168.0.12</Data>
  </Item>
</Add>

<!-- Domain Name rule for all other (any) traffic through Proxy -->

<Add>
  <CmdID>10016</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DomainNameInformationList/5/DomainName</LocURI>
    </Target>
    <Data>.</Data>
  </Item>
</Add>
<Add>
  <CmdID>10017</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DomainNameInformationList/5/WebProxyServers</LocURI>
    </Target>
    <Data>192.168.0.11</Data>
  </Item>
</Add>
```

AutoTrigger

```xml
<Add>
  <CmdID>10010</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DomainNameInformationList/0/AutoTrigger</LocURI>
    </Target>
    <Meta>
      <Format xmlns="syncml:metinf">bool</Format>
    </Meta>
    <Data>true</Data>
  </Item>
</Add>
```

Persistent

```xml
<Add>
  <CmdID>10010</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DomainNameInformationList/1/Persistent</LocURI>
    </Target>
    <Meta>
      <Format xmlns="syncml:metinf">bool</Format>
    </Meta>
    <Data>true</Data>
  </Item>
</Add>
```

TrafficFilterLIst App

```xml
    <!-- Desktop App -->
    <Add>
        <CmdID>10013</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/TrafficFilterList/0/App/Id</LocURI>
          </Target>
          <Data>%ProgramFiles%\Internet Explorer\iexplore.exe</Data>
        </Item>
      </Add>
      <!-- Store App -->
      <Add>
        <CmdID>10014</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/TrafficFilterList/1/App/Id</LocURI>
          </Target>
          <Data>Microsoft.MicrosoftEdge_8wekyb3d8bbwe</Data>
        </Item>
      </Add>
      <!-- SYSTEM -->
      <Add>
        <CmdID>10015</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/TrafficFilterList/3/App/Id</LocURI>
          </Target>
          <Data>SYSTEM</Data>
        </Item>
      </Add>
```

Protocol, LocalPortRanges, RemotePortRanges, LocalAddressRanges, RemoteAddressRanges, RoutingPolicyType, EDPModeId, RememberCredentials, AlwaysOn, Lockdown, DnsSuffix, TrustedNetworkDetection

```xml
    <!-- Protocol -->
      <Add>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/TrafficFilterList/3/Protocol</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">int</Format>
          </Meta>
          <Data>6</Data>
        </Item>
      </Add>
      <!-- LocalPortRanges -->
      <Add>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/TrafficFilterList/3/LocalPortRanges</LocURI>
          </Target>
          <Data>10,20-50,100-200</Data>
        </Item>
      </Add>
      <!-- RemotePortRanges -->
      <Add>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/TrafficFilterList/3/RemotePortRanges</LocURI>
          </Target>
          <Data>20-50,100-200,300</Data>
        </Item>
      </Add>
      <!-- LocalAddressRanges -->
      <Add>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/TrafficFilterList/3/LocalAddressRanges/LocURI>
          </Target>
          <Data>3.3.3.3/32,1.1.1.1-2.2.2.2</Data>
        </Item>
      </Add>
      <!-- RemoteAddressRanges -->
      <Add>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/TrafficFilterList/3/RemoteAddressRanges</LocURI>
          </Target>
          <Data>30.30.0.0/16,10.10.10.10-20.20.20.20</Data>
        </Item>
      </Add>
      <!-- RoutingPolicyType -->
      <Add>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/TrafficFilterList/0/RoutingPolicyType</LocURI>
          </Target>
          <Data>ForceTunnel</Data>
        </Item>
      </Add>
      <!-- EDPModeId -->
      <Add>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/EDPModeID</LocURI>
          </Target>
          <Data>corp.contoso.com</Data>
        </Item>
      </Add>
      <!-- RememberCredentials -->
      <Add>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/RememberCredentials</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">bool</Format>
          </Meta>
          <Data>true</Data>
        </Item>
      </Add>
      <!-- AlwaysOn -->
      <Add>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/AlwaysOn</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">bool</Format>
          </Meta>
          <Data>true</Data>
        </Item>
      </Add>
      <!-- Lockdown -->
      <Add>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/Lockdown</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">bool</Format>
          </Meta>
          <Data>true</Data>
        </Item>
      </Add>
      <!-- DnsSuffix -->
      <Add>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DnsSuffix</LocURI>
          </Target>
          <Data>Adatum.com</Data>
        </Item>
      </Add>
      <!-- TrustedNetworkDetection -->
     <!-- Configure Trusted Networks (TrustedNetworks=) [Comma separated] -->
      <Add>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/TrustedNetworkDetection</LocURI>
          </Target>
          <Data>Adatum.com</Data>
        </Item>
      </Add>
```

Proxy - Manual or AutoConfigUrl

```xml
      <!-- Manual -->
      <Add>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/Proxy/Manual/Server</LocURI>
          </Target>
          <Data>192.168.0.100:8888</Data>
        </Item>
      </Add>
      <!-- AutoConfigUrl -->
      <Add>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/Proxy/AutoConfigUrl</LocURI>
          </Target>
          <Data>HelloWorld.com</Data>
        </Item>
      </Add>
```

Device Compliance - Sso

```xml
    <!-- Enabled -->
    <Add>
      <CmdID>10011</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DeviceCompliance/SSO/Enabled</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">bool</Format>
        </Meta>
        <Data>true</Data>
      </Item>
    </Add>

    <!-- IssuerHash -->
    <Add>
      <CmdID>10011</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DeviceCompliance/SSO/IssuerHash</LocURI>
        </Target>
        <Data>ffffffffffffffffffffffffffffffffffffffff;ffffffffffffffffffffffffffffffffffffffee</Data>
      </Item>
    </Add>

    <!-- Eku -->
    <Add>
      <CmdID>10011</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DeviceCompliance/SSO/EKU</LocURI>
        </Target>
        <Data>1.3.6.1.5.5.7.3.2</Data>
      </Item>
    </Add>
```

PluginProfile

```xml
    <!-- PluginPackageFamilyName -->
      <!-- Configure VPN Server Name or Address (PhoneNumber=) [Comma Separated]-->
      <Add>
        <CmdID>10001</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/PluginProfile/ServerUrlList</LocURI>
          </Target>
          <Data>selfhost.corp.contoso.com</Data>
        </Item>
      </Add>

      <!-- Configure VPN Plugin AppX Package ID (ThirdPartyProfileInfo=) -->
      <Add>
        <CmdID>10002</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/PluginProfile/PluginPackageFamilyName</LocURI>
          </Target>
          <Data>TestVpnPluginApp-SL_8wekyb3d8bbwe</Data>
        </Item>
      </Add>

      <!-- Configure Microsoft's Custom XML (ThirdPartyProfileInfo=) -->
      <Add>
        <CmdID>10003</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/PluginProfile/CustomConfiguration</LocURI>
          </Target>
          <Data><pluginschema><ipAddress>auto</ipAddress><port>443</port><networksettings><routes><includev4><route><address>172.10.10.0</address><prefix>24</prefix></route></includev4></routes><namespaces><namespace><space>.vpnbackend.com</space><dnsservers><server>172.10.10.11</server></dnsservers></namespace></namespaces></networksettings></pluginschema></Data>
        </Item>
      </Add>
```

NativeProfile

```xml
      <!-- Servers -->
      <Add>
        <CmdID>10001</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/NativeProfile/Servers</LocURI>
          </Target>
          <Data>Selfhost.corp.contoso.com</Data>
        </Item>
      </Add>

      <!-- RoutingPolicyType -->
      <Add>
        <CmdID>10007</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/NativeProfile/RoutingPolicyType</LocURI>
          </Target>
          <Data>ForceTunnel</Data>
        </Item>
      </Add>

    <!-- NativeProtocolType -->
    <!-- Configure VPN Protocol Type (L2tp, Pptp, Ikev2) -->
      <Add>
        <CmdID>10002</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/NativeProfile/NativeProtocolType</LocURI>
          </Target>
          <Data>Automatic</Data>
        </Item>
      </Add>

  <!-- Authentication -->
      <!-- UserMethod -->
      <!-- Configure VPN User Method (Mschapv2, Eap) -->
      <Add>
        <CmdID>10003</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/NativeProfile/Authentication/UserMethod</LocURI>
          </Target>
          <Data>Eap</Data>
        </Item>
      </Add>

      <!-- MachineMethod -->
      <!-- Configure VPN Machine Method (Certificate, Eap, PresharedKey) -->
      <Add>
        <CmdID>10004</CmdID>
        <Item>
         <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/NativeProfile/Authentication/MachineMethod</LocURI>
          </Target>
          <Data>Eap</Data>
        </Item>
      </Add>

  <!-- CryptographySuite -->
        <Add>
        <CmdID>10004</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/NativeProfile/Authentication/CryptographySuite/AuthenticationTransformConstants</LocURI>
          </Target>
          <Data>SHA196</Data>
        </Item>
      </Add>
      <Add>
        <CmdID>10004</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/NativeProfile/Authentication/CryptographySuite/CipherTransformConstants</LocURI>
          </Target>
          <Data>AES192</Data>
        </Item>
      </Add>
      <Add>
        <CmdID>10004</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/NativeProfile/Authentication/CryptographySuite/EncryptionMethod</LocURI>
          </Target>
          <Data>AES128</Data>
        </Item>
      </Add>
      <Add>
        <CmdID>10004</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/NativeProfile/Authentication/CryptographySuite/IntegrityCheckMethod</LocURI>
          </Target>
          <Data>SHA256</Data>
        </Item>
      </Add>
      <Add>
        <CmdID>Group14</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/NativeProfile/Authentication/CryptographySuite/DHGroup</LocURI>
          </Target>
          <Data>Group2</Data>
        </Item>
     </Add>
      <Add>
        <CmdID>10004</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/NativeProfile/Authentication/CryptographySuite/PfsGroup</LocURI>
          </Target>
          <Data>PFS2048</Data>
        </Item>
      </Add>

      <!-- DisableClassBasedDefaultRoute -->
        <CmdID>10011</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/NativeProfile/DisableClassBasedDefaultRoute</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">bool</Format>
          </Meta>
          <Data>true</Data>
        </Item>
      </Add>
```
<!-- VPNv2-CspMoreInfo-End -->

<!-- VPNv2-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
