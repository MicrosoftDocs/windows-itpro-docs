---
title: Troubleshooting UWP App Connectivity Issues in Windows Firewall
description: Troubleshooting UWP App Connectivity Issues in Windows Firewall

ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
ms.collection: M365-security-compliance
ms.topic: troubleshooting
---

# Troubleshooting UWP App Connectivity Issues

This document is intended to help network admins, support engineers, and developers to
investigate UWP app network connectivity issues.

This document guides you through steps to debug  Universal Windows Platform (UWP) app network connectivity issues by providing practical examples.

## Typical causes of connectivity issues

UWP app network connectivity issues are typically caused by: 

1. The UWP app was not permitted to receive loopback traffic. This must be configured. By default, UWP apps are not allowed to receive loopback traffic.
2. The UWP app is missing the proper capability tokens.
3. The private range is configured incorrectly. For example, the private ranges is set incorrectly through GP/MDM policies, etc.

To understand these causes more thoroughly, there are several concepts to review.

The traffic of network packets (what's permitted and what’s not) on Windows is determined by the Windows Filtering Platform (WFP). When a UWP app
or the private range is configured incorrectly, it affects how the UWP app’s network traffic will be processed by WFP.

When a packet is processed by WFP, the characteristics of that packet must explicitly match all the conditions of a filter to either be permitted or dropped to its target address. Connectivity issues typically happen when the packet does not match any of the filter conditions, leading the packet to be dropped by a default block filter. The presence of the default block
filters ensures network isolation for UWP applications. Specifically, it guarantees a network drop for a packet that does not have the correct capabilities for the resource it is trying to reach. This ensures the application’s granular access to each resource type and preventing the application from escaping its environment.

For more information on the filter arbitration algorithm and network isolation,
see [Filter
Arbitration](https://docs.microsoft.com/en-us/windows/win32/fwp/filter-arbitration)
and
[Isolation](https://docs.microsoft.com/en-us/windows/win32/secauthz/appcontainer-isolation).

The following sections cover debugging case examples for loopback and non-loopback UWP app network connectivity issues.

> [!NOTE] 
> As improvements to debugging and diagnostics in the Windows Filtering Platform are made, the trace examples in this document may not exactly match the
traces collected on previous releases of Windows.

# Debugging UWP App Loopback scenarios

If you need to establis a TCP/IP connection between two processes on the same host where one of them is a UWP app, you must enable loopback.

To enable loopback for client outbound connections, run the following at a command prompt:

```dos
CheckNetIsolation.exe LoopbackExempt -a -n=<AppContainer or Package Family>
```

To enable loopback for server inbound connections,  run the following at a
command prompt:
```dos
CheckNetIsolation.exe LoopbackExempt -is -n=<AppContainer or Package Family>
```
You can ensure loopback is enabled by checking the appx manifests of both the sender and receiver.

For more information about loopback scenarios, see [Communicating with
localhost
(loopback)](https://docs.microsoft.com/en-us/windows/iot-core/develop-your-app/loopback)

# Debugging Live Drops

If the issue happened recently, but you find you are not able to reproduce the issue, go to Debugging Past Drops for the appropriate trace commands.

If you can consistently reproduce the issue, then you can run the following in an admin command prompt to gather a fresh trace:

```DOS
Netsh wfp capture start keywords=19
<Run UWP app>
Netsh wfp capture stop
```

These commands generate a wfpdiag.cab. Inside the .cab exists a wfpdiag.xml, which contains any allow or drop netEvents and filters that existed during that repro. Without “keywords=19”, the trace will only collect drop netEvents.

Inside the wfpdiag.xml, search for netEvents which have
FWPM_NET_EVENT_TYPE_CLASSIFY_DROP as the netEvent type. To find the relevant drop events, search for the drop events with matching destination IP address,
package SID, or application ID name. The characters in the application ID name
will be separated by periods:

```XML
(ex) 					

<asString>
\\.d.e.v.i.c.e.\\.h.a.r.d.d.i.s.k.v.o.l.u.m.e.1.\\.w.i.n.d.o.w.s.\\.s.y.s.t.e.m.3.2.\\.s.v.c.h.o.s.t...e.x.e...

</asString>
```

The netEvent will have more information about the packet that was dropped including information about its capabilities, the filter that dropped the packet, and much more.

## Case 1: UWP app connects to Internet target address with all capabilities

In this example, the UWP app successfully connects to bing.com
[2620:1ec:c11::200].

A packet from a UWP app needs the correct networking capability token for the resource it is trying to reach.

In this scenario, the app could successfully send a packet to the Internet target because it had an Internet capability token.

The following shows the allow netEvent of the app connecting to the target IP. The netEvent contains information about the packet including its local address,
remote address, capabilities, etc.

**Classify Allow netEvent, Wfpdiag-Case-1.xml**
```xml
<netEvent>
    <header>
    <timeStamp>2020-05-21T17:25:59.070Z</timeStamp>
    <flags numItems="9">
        <item>FWPM_NET_EVENT_FLAG_IP_PROTOCOL_SET</item>
        <item>FWPM_NET_EVENT_FLAG_LOCAL_ADDR_SET</item>
        <item>FWPM_NET_EVENT_FLAG_REMOTE_ADDR_SET</item>
        <item>FWPM_NET_EVENT_FLAG_LOCAL_PORT_SET</item>
        <item>FWPM_NET_EVENT_FLAG_REMOTE_PORT_SET</item>
        <item>FWPM_NET_EVENT_FLAG_APP_ID_SET</item>
        <item>FWPM_NET_EVENT_FLAG_USER_ID_SET</item>	
        <item>FWPM_NET_EVENT_FLAG_IP_VERSION_SET</item>
        <item>FWPM_NET_EVENT_FLAG_PACKAGE_ID_SET</item>
    </flags>
    <ipVersion>FWP_IP_VERSION_V6</ipVersion>
    <ipProtocol>6</ipProtocol>				
    <localAddrV6.byteArray16>2001:4898:30:3:256c:e5ba:12f3:beb1</localAddrV6.byteArray16>	
    <remoteAddrV6.byteArray16>2620:1ec:c11::200</remoteAddrV6.byteArray16>
<localPort>52127</localPort>
<remotePort>443</remotePort>
<scopeId>0</scopeId>
<appId>				
    <data>5c006400650076006900630065005c0068006100720064006400690073006b0076006f006c0075006d00650031005c00700072006f006700720061006d002000660069006c00650073005c00770069006e0064006f007700730061007000700073005c00610066003600390032006200660066002d0036003700370039002d0034003200340066002d0038003700300065002d006600360065003500390063003500300032003300340039005f0031002e0031002e00310030002e0030005f007800360034005f005f00350063003000330037006a0061007200350038003300390072005c0075007700700073006f0063006b006500740063006c00690065006e0074002e006500780065000000</data>
    <asString>\\.d.e.v.i.c.e.\\.h.a.r.d.d.i.s.k.v.o.l.u.m.e.1.\\.p.r.o.g.r.a.m.
       .f.i.l.e.s.\\.w.i.n.d.o.w.s.a.p.p.s.\\.a.f.6.9.2.b.f.f.-.6.7.7.9.-.4.2.4.f.-.8.7.0.e.-.f.6.e.5.9.c.5.0.2.3.4.9._.1...1...1.0...0._.x.6.4._._.5.c.0.3.7.j.a.r.5.8.3.9.r.\\.u.w.p.s.o.c.k.e.t.c.l.i.e.n.t...e.x.e...</asString>
</appId>
<userId>S-1-5-21-2993214446-1947230185-131795049-1000</userId>
<addressFamily>FWP_AF_INET6</addressFamily>
<packageSid>S-1-15-2-4163697451-3176919390-1155390458-2883473650-3020241727-522149888-4067122936</packageSid>
<enterpriseId/>
<policyFlags>0</policyFlags>
<effectiveName/>
</header>
<type>FWPM_NET_EVENT_TYPE_CLASSIFY_ALLOW</type>
<classifyAllow>
    <filterId>125918</filterId>
    <layerId>50</layerId>
    <reauthReason>0</reauthReason>
    <originalProfile>1</originalProfile>
    <currentProfile>1</currentProfile>
</classifyAllow>
<internalFields>
<internalFlags/>
<remoteAddrBitmap>0000000000000000</remoteAddrBitmap>
<capabilities numItems="3">				
    <item>FWP_CAPABILITIES_FLAG_INTERNET_CLIENT</item>
    <item>FWP_CAPABILITIES_FLAG_INTERNET_CLIENT_SERVER</item>
    <item>FWP_CAPABILITIES_FLAG_PRIVATE_NETWORK</item>
</capabilities>
<fqbnVersion>0</fqbnVersion>
<fqbnName/>
<terminatingFiltersInfo numItems="2">
    <item>
        <filterId>125918</filterId>
        <subLayer>FWPP_SUBLAYER_INTERNAL_FIREWALL_WSH</subLayer>
        <actionType>FWP_ACTION_PERMIT</actionType>
    </item>
    <item>
		<filterId>121167</filterId>
		<subLayer>FWPP_SUBLAYER_INTERNAL_FIREWALL_WF</subLayer>
		<actionType>FWP_ACTION_PERMIT</actionType>
    </item>
</terminatingFiltersInfo>
</internalFields>
</netEvent>
```

The following is the filter that permitted the packet to be sent to the target
address according to the **terminatingFiltersInfo** in the **netEvent**. This packet was
allowed by Filter #125918, from the InternetClient Default Rule.

**InternetClient Default Rule Filter #125918, Wfpdiag-Case-1.xml**
```xml
<item>
    <filterKey>{3389708e-f7ae-4ebc-a61a-f659065ab24e}</filterKey>
    <displayData>
    <name>InternetClient Default Rule</name>
    <description>InternetClient Default Rule</description>
    </displayData>
    <flags/>
    <providerKey>FWPM_PROVIDER_MPSSVC_WSH</providerKey>
    <providerData>
    <data>ad2b000000000000</data>
    <asString>.+......</asString>
    </providerData>
    <layerKey>FWPM_LAYER_ALE_AUTH_CONNECT_V6</layerKey>
    <subLayerKey>FWPM_SUBLAYER_MPSSVC_WSH</subLayerKey	 
    <weight>
    <type>FWP_EMPTY</type>
    </weight>
    <filterCondition numItems="5">
    <item>
    <fieldKey>FWPM_CONDITION_ALE_PACKAGE_ID</fieldKey>
    <matchType>FWP_MATCH_NOT_EQUAL</matchType>
    <conditionValue>
    <type>FWP_SID</type>
    <sid>S-1-0-0</sid>
    </conditionValue>
    </item>
    <item>
    <fieldKey>FWPM_CONDITION_IP_REMOTE_ADDRESS</fieldKey>
 	<matchType>FWP_MATCH_RANGE</matchType>
 	 <conditionValue>
 	 <type>FWP_RANGE_TYPE</type>
 	 <rangeValue>
 	<valueLow>
    <type>FWP_BYTE_ARRAY16_TYPE</type>
    <byteArray16>::</byteArray16>
    </valueLow>
    <valueHigh>
    <type>FWP_BYTE_ARRAY16_TYPE</type>
    <byteArray16>ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff</byteArray16>
	</valueHigh>
	</rangeValue>
	</conditionValue>
	</item>
	<item>
	<fieldKey>FWPM_CONDITION_ORIGINAL_PROFILE_ID<fieldKey>
	<matchType>FWP_MATCH_EQUAL</matchType>
	<conditionValue>
	<type>FWP_UINT32</type>
	<uint32>1</uint32>
	</conditionValue>
	</item>
	<item>
	<fieldKey>FWPM_CONDITION_CURRENT_PROFILE_ID<fieldKey>
	<matchType>FWP_MATCH_EQUAL</matchType>
	<conditionValue>
	<type>FWP_UINT32</type>
	<uint32>1</uint32>
	</conditionValue>
	</item>
	<item>
	<fieldKey>FWPM_CONDITION_ALE_USER_ID</fieldKey>
	<matchType>FWP_MATCH_EQUAL</matchType>
	<conditionValue>
	<type>FWP_SECURITY_DESCRIPTOR_TYPE</type>
	<sd>O:LSD:(A;;CC;;;S-1-15-3-1)(A;;CC;;;WD)(A;;CC;;;AN)</sd>
	</conditionValue>
	</item>
	</filterCondition>
	<action>
	<type>FWP_ACTION_PERMIT</type>
	<filterType/>
	</action>
	<rawContext>0</rawContext>
	<reserved/>
	<filterId>125918</filterId>
	<effectiveWeight>
	<type>FWP_UINT64</type>
	<uint64>103079219136</uint64>
	</effectiveWeight>
</item>
```

**Capabilities Condition in Filter \#125918, Wfpdiag-Case-1.xml**
```xml
<item>
    <fieldKey>FWPM_CONDITION_ALE_USER_ID</fieldKey>
    <matchType>FWP_MATCH_EQUAL</matchType>
    <conditionValue>
    <type>FWP_SECURITY_DESCRIPTOR_TYPE</type>
    <sd>O:LSD:(A;;CC;;;S-1-15-3-1)(A;;CC;;;WD)(A;;CC;;;AN)</sd>
    </conditionValue>
</item>
```
This is the condition for checking capabilities in this filter.

The important part of this condition is **S-1-15-3-1**, which is the capability SID
for **INTERNET_CLIENT** privileges.

From the **netEvent** capabilities section,
capabilities from netEvent, Wfpdiag-Case-1.xml.
```xml
<capabilities numItems="3">				
    <item>FWP_CAPABILITIES_FLAG_INTERNET_CLIENT</item>			<item>FWP_CAPABILITIES_FLAG_INTERNET_CLIENT_SERVER</item>
    <item>FWP_CAPABILITIES_FLAG_PRIVATE_NETWORK</item>
</capabilities>
```
This shows the packet came from an app with an Internet client token (**FWP_CAPABILITIES_FLAG_INTERNET_CLIENT**) which matches the capability SID in the
filter. All the other conditions are also met for the filter, so the packet is
allowed.

Something to note is that the only capability token required for the packet to
reach bing.com was the Internet client token, even though this example showed
the packet having all capabilities.

## Case 2: UWP APP cannot reach Internet target address and has no capabilities

In this example, the UWP app is unable to connect to bing.com
[2620:1ec:c11::200].

The following is a drop netEvent that was captured in the trace.

**Classify Drop netEvent, Wfpdiag-Case-2.xml**
```xml
<netEvent>
<header>
<timeStamp>2020-03-30T23:53:09.720Z</timeStamp>
<flags numItems="9">
    <item>FWPM_NET_EVENT_FLAG_IP_PROTOCOL_SET</item>
    <item>FWPM_NET_EVENT_FLAG_LOCAL_ADDR_SET</item>
    <item>FWPM_NET_EVENT_FLAG_REMOTE_ADDR_SET</item>
    <item>FWPM_NET_EVENT_FLAG_LOCAL_PORT_SET</item>
    <item>FWPM_NET_EVENT_FLAG_REMOTE_PORT_SET</item>
    <item>FWPM_NET_EVENT_FLAG_APP_ID_SET</item>
    <item>FWPM_NET_EVENT_FLAG_USER_ID_SET</item>
    <item>FWPM_NET_EVENT_FLAG_IP_VERSION_SET</item>
    <item>FWPM_NET_EVENT_FLAG_PACKAGE_ID_SET</item>
</flags>
<ipVersion>FWP_IP_VERSION_V6</ipVersion>
<ipProtocol>6</ipProtocol>
<localAddrV6.byteArray16>2001:4898:1a:1045:8469:3351:e6e2:543</localAddrV6.byteArray16>
<remoteAddrV6.byteArray16>2620:1ec:c11::200</remoteAddrV6.byteArray16>
<localPort>63187</localPort>
<remotePort>443</remotePort>
<scopeId>0</scopeId>
<appId>
<data>5c006400650076006900630065005c0068006100720064006400690073006b0076006f006c0075006d00650031005c00700072006f006700720061006d002000660069006c00650073005c00770069006e0064006f007700730061007000700073005c00610066003600390032006200660066002d0036003700370039002d0034003200340066002d0038003700300065002d006600360065003500390063003500300032003300340039005f0031002e0031002e0034002e0030005f007800360034005f005f00350063003000330037006a0061007200350038003300390072005c0075007700700073006f0063006b006500740063006c00690065006e0074002e006500780065000000</data>
<asString>\\.d.e.v.i.c.e.\\.h.a.r.d.d.i.s.k.v.o.l.u.m.e.1.\\.p.r.o.g.r.a.m.
.f.i.l.e.s.\\.w.i.n.d.o.w.s.a.p.p.s.\\.a.f.6.9.2.b.f.f.-.6.7.7.9.-.4.2.4.f.-.8.7.0.e.-.f.6.e.5.9.c.5.0.2.3.4.9._.1...1...4...0._.x.6.4._._.5.c.0.3.7.j.a.r.5.8.3.9.r.\\.u.w.p.s.o.c.k.e.t.c.l.i.e.n.t...e.x.e...</asString>
</appId>
<userId>S-1-5-21-2788718703-1626973220-3690764900-1000</userId>
<addressFamily>FWP_AF_INET6</addressFamily>
<packageSid>S-1-15-2-4163697451-3176919390-1155390458-2883473650-3020241727-522149888-4067122936</packageSid>
<enterpriseId/>
<policyFlags>0</policyFlags>
<effectiveName/>
</header>
<type>FWPM_NET_EVENT_TYPE_CLASSIFY_DROP</type>
<classifyDrop>
<filterId>68893</filterId>
<layerId>50</layerId>
<reauthReason>0</reauthReason>
<originalProfile>1</originalProfile>
<currentProfile>1</currentProfile>
<msFwpDirection>MS_FWP_DIRECTION_OUT</msFwpDirection>
<isLoopback>false</isLoopback>
<vSwitchId/>
<vSwitchSourcePort>0</vSwitchSourcePort>
<vSwitchDestinationPort>0</vSwitchDestinationPort>
</classifyDrop>
<internalFields>
<internalFlags/>
<remoteAddrBitmap>0000000000000000</remoteAddrBitmap>
<capabilities/>
<fqbnVersion>0</fqbnVersion>
<fqbnName/>
<terminatingFiltersInfo numItems="2">
<item>
<filterId>68893</filterId>
<subLayer>FWPP_SUBLAYER_INTERNAL_FIREWALL_WSH</subLayer>
<actionType>FWP_ACTION_BLOCK</actionType>
</item>
<item>
<filterId>68879</filterId>
<subLayer>FWPP_SUBLAYER_INTERNAL_FIREWALL_WF</subLayer>
<actionType>FWP_ACTION_PERMIT</actionType>
</item>
</terminatingFiltersInfo>
</internalFields>
</netEvent>
```
The first thing that you should check in the **netEvent** is the capabilities
field. In this example, the capabilities field is empty, indicating that the
UWP app was not configured with any capability tokens to allow it to connect to
a network.

**Internal Fields from netEvent, Wfpdiag-Case-2.xml**
```xml
<internalFields>
<internalFlags/>
<remoteAddrBitmap>0000000000000000</remoteAddrBitmap>
<capabilities/>
<fqbnVersion>0</fqbnVersion>
<fqbnName/>
<terminatingFiltersInfo numItems="2">
<item>
<filterId>68893</filterId>
<subLayer>FWPP_SUBLAYER_INTERNAL_FIREWALL_WSH</subLayer>
<actionType>FWP_ACTION_BLOCK</actionType>
</item>
<item>
<filterId>68879</filterId>
<subLayer>FWPP_SUBLAYER_INTERNAL_FIREWALL_WF</subLayer>
<actionType>FWP_ACTION_PERMIT</actionType>
</item>
</terminatingFiltersInfo>
</internalFields>
```
The **netEvent** also shows information about the filter that explicitly dropped this packet, like the **FilterId**, listed under classify drop.

**Classify Drop from netEvent, Wfpdiag-Case-2.xml**
```xml
<classifyDrop>
<filterId>68893</filterId>
<layerId>50</layerId>
<reauthReason>0</reauthReason>
<originalProfile>1</originalProfile>
<currentProfile>1</currentProfile>
<msFwpDirection>MS_FWP_DIRECTION_OUT</msFwpDirection>
<isLoopback>false</isLoopback>
<vSwitchId/>
<vSwitchSourcePort>0</vSwitchSourcePort>
<vSwitchDestinationPort>0</vSwitchDestinationPort>
</classifyDrop>
```
If you search for the filter #68893 in Wfpdiag-Case2.xml, you'll see that
the packet was dropped by a Block Outbound Default Rule filter.

**Block Outbound Default Rule Filter #68893, Wfpdiag-Case-2.xml**

```xml
<item>
	<filterKey>{6d51582f-bcf8-42c4-afc9-e2ce7155c11b}</filterKey>
/t<displayData>
	<name>**Block Outbound Default Rule**</name>
	<description>Block Outbound Default Rule</description>
	</displayData>
	<flags/>
	<providerKey>{4b153735-1049-4480-aab4-d1b9bdc03710}</providerKey>
	<providerData>
	<data>b001000000000000</data>
	<asString>........</asString>
	</providerData>
	<layerKey>FWPM_LAYER_ALE_AUTH_CONNECT_V6</layerKey>
	<subLayerKey>{b3cdd441-af90-41ba-a745-7c6008ff2300}</subLayerKey>
	<weight>
	<type>FWP_EMPTY</type>
	</weight>
	<filterCondition numItems="1">
	<item>
	<fieldKey>FWPM_CONDITION_ALE_PACKAGE_ID</fieldKey>
	<matchType>FWP_MATCH_NOT_EQUAL</matchType>
	<conditionValue>
	<type>FWP_SID</type>
	<sid>S-1-0-0</sid>
	</conditionValue>
	</item>
	</filterCondition>
	<action>
	<type>FWP_ACTION_BLOCK</type>
	<filterType/>
	</action>
	<rawContext>0</rawContext>
	<reserved/>
	<filterId>68893</filterId>
	<effectiveWeight>
	<type>FWP_UINT64</type>
	<uint64>68719476736</uint64>
	</effectiveWeight>
</item>
```

A packet will reach a default block filter if the packet was unable to match any of the conditions of other filters, and not allowed by the other filters in
the same sublayer.

If the packet had the correct capability token,
**FWP_CAPABILITIES_FLAG_INTERNET_CLIENT**, it would have matched a condition for a
non-default block filter and would have been permitted to reach bing.com.
Without the correct capability tokens, the packet will be explicitly dropped by
a default block outbound filter.

## Case 3: UWP app cannot reach Internet target address without Internet Client capability

In this example, the app is unable to connect to bing.com [2620:1ec:c11::200].

The app in this scenario only has private network capabilities (Client and
Server). The app is trying to connect to an Internet resource (bing.com), but
only has a private network token. Therefore, the packet will be dropped.

**Classify Drop netEvent, Wfpdiag-Case-3.xml**
```xml
<netEvent>
<header>
<timeStamp>2020-03-31T16:57:18.570Z</timeStamp>
<flags numItems="9">
<item>FWPM_NET_EVENT_FLAG_IP_PROTOCOL_SET</item>
<item>FWPM_NET_EVENT_FLAG_LOCAL_ADDR_SET</item>
<item>FWPM_NET_EVENT_FLAG_REMOTE_ADDR_SET</item>
<item>FWPM_NET_EVENT_FLAG_LOCAL_PORT_SET</item>
<item>FWPM_NET_EVENT_FLAG_REMOTE_PORT_SET</item>
<item>FWPM_NET_EVENT_FLAG_APP_ID_SET</item>
<item>FWPM_NET_EVENT_FLAG_USER_ID_SET</item>
<item>FWPM_NET_EVENT_FLAG_IP_VERSION_SET</item>
<item>FWPM_NET_EVENT_FLAG_PACKAGE_ID_SET</item>
</flags>
<ipVersion>FWP_IP_VERSION_V6</ipVersion>
<ipProtocol>6</ipProtocol>
<localAddrV6.byteArray16>2001:4898:1a:1045:9c65:7805:dd4a:cc4b</localAddrV6.byteArray16>
<remoteAddrV6.byteArray16>2620:1ec:c11::200</remoteAddrV6.byteArray16>
<localPort>64086</localPort>
<remotePort>443</remotePort>
<scopeId>0</scopeId>
<appId>
<data>5c006400650076006900630065005c0068006100720064006400690073006b0076006f006c0075006d00650031005c00700072006f006700720061006d002000660069006c00650073005c00770069006e0064006f007700730061007000700073005c00610066003600390032006200660066002d0036003700370039002d0034003200340066002d0038003700300065002d006600360065003500390063003500300032003300340039005f0031002e0031002e0035002e0030005f007800360034005f005f00350063003000330037006a0061007200350038003300390072005c0075007700700073006f0063006b006500740063006c00690065006e0074002e006500780065000000</data>
<asString>\\.d.e.v.i.c.e.\\.h.a.r.d.d.i.s.k.v.o.l.u.m.e.1.\\.p.r.o.g.r.a.m.
.f.i.l.e.s.\\.w.i.n.d.o.w.s.a.p.p.s.\\.a.f.6.9.2.b.f.f.-.6.7.7.9.-.4.2.4.f.-.8.7.0.e.-.f.6.e.5.9.c.5.0.2.3.4.9._.1...1...5...0._.x.6.4._._.5.c.0.3.7.j.a.r.5.8.3.9.r.\\.u.w.p.s.o.c.k.e.t.c.l.i.e.n.t...e.x.e...</asString>
</appId>
<userId>S-1-5-21-2788718703-1626973220-3690764900-1000</userId>
<addressFamily>FWP_AF_INET6</addressFamily>
<packageSid>S-1-15-2-4163697451-3176919390-1155390458-2883473650-3020241727-522149888-4067122936</packageSid>
<enterpriseId/>
<policyFlags>0</policyFlags>
<effectiveName/>
</header>
<type>FWPM_NET_EVENT_TYPE_CLASSIFY_DROP</type>
<classifyDrop>
<filterId>68893</filterId>
<layerId>50</layerId>
<reauthReason>0</reauthReason>
<originalProfile>1</originalProfile>
<currentProfile>1</currentProfile>
<msFwpDirection>MS_FWP_DIRECTION_OUT</msFwpDirection>
<isLoopback>false</isLoopback>
<vSwitchId/>
<vSwitchSourcePort>0</vSwitchSourcePort>
<vSwitchDestinationPort>0</vSwitchDestinationPort>
</classifyDrop>
<internalFields>
<internalFlags/>
<remoteAddrBitmap>0000000000000000</remoteAddrBitmap>
**<capabilities numItems="1">**
**<item>FWP_CAPABILITIES_FLAG_PRIVATE_NETWORK</item>**
**</capabilities>**
<fqbnVersion>0</fqbnVersion>
<fqbnName/>
<terminatingFiltersInfo numItems="2">
<item>
<filterId>68893</filterId>
<subLayer>FWPP_SUBLAYER_INTERNAL_FIREWALL_WSH</subLayer>
<actionType>FWP_ACTION_BLOCK</actionType>
</item>
<item>
<filterId>68879</filterId>
<subLayer>FWPP_SUBLAYER_INTERNAL_FIREWALL_WF</subLayer>
<actionType>FWP_ACTION_PERMIT</actionType>
</item>
</terminatingFiltersInfo>
</internalFields>
</netEvent>
```

## Case 4: UWP app cannot reach Intranet target address without Private Network capability

In this example, the UWP app is unable to reach the Intranet target address,
10.50.50.50, because it does not have a Private Network capability.

**Classify Drop netEvent, Wfpdiag-Case-4.xml**
```xml
<netEvent>
<header>
	<timeStamp>2020-05-22T21:29:28.601Z</timeStamp>
	<flags numItems="9">
	<item>FWPM_NET_EVENT_FLAG_IP_PROTOCOL_SET</item>
	<item>FWPM_NET_EVENT_FLAG_LOCAL_ADDR_SET</item>
	<item>FWPM_NET_EVENT_FLAG_REMOTE_ADDR_SET</item>
	<item>FWPM_NET_EVENT_FLAG_LOCAL_PORT_SET</item>
	<item>FWPM_NET_EVENT_FLAG_REMOTE_PORT_SET</item>
	<item>FWPM_NET_EVENT_FLAG_APP_ID_SET</item>
	<item>FWPM_NET_EVENT_FLAG_USER_ID_SET</item>
	<item>FWPM_NET_EVENT_FLAG_IP_VERSION_SET</item>
	<item>FWPM_NET_EVENT_FLAG_PACKAGE_ID_SET</item>
	</flags>
	<ipVersion>FWP_IP_VERSION_V4</ipVersion>
	<ipProtocol>6</ipProtocol>
	<localAddrV4>10.216.117.17</localAddrV4>
	<remoteAddrV4>10.50.50.50</remoteAddrV4>
	<localPort>52998</localPort>
	<remotePort>53</remotePort>
	<scopeId>0</scopeId>
	<appId>				
	<data>5c006400650076006900630065005c0068006100720064006400690073006b0076006f006c0075006d00650031005c00700072006f006700720061006d002000660069006c00650073005c00770069006e0064006f007700730061007000700073005c00610066003600390032006200660066002d0036003700370039002d0034003200340066002d0038003700300065002d006600360065003500390063003500300032003300340039005f0031002e0031002e00310031002e0030005f007800360034005f005f00350063003000330037006a0061007200350038003300390072005c0075007700700073006f0063006b006500740063006c00690065006e0074002e006500780065000000</data>
	<asString>\\.d.e.v.i.c.e.\\.h.a.r.d.d.i.s.k.v.o.l.u.m.e.1.\\.p.r.o.g.r.a.m.
	.f.i.l.e.s.\\.w.i.n.d.o.w.s.a.p.p.s.\\.a.f.6.9.2.b.f.f.-.6.7.7.9.-.4.2.4.f.-.8.7.0.e.-.f.6.e.5.9.c.5.0.2.3.4.9._.1...1...1.1...0._.x.6.4._._.5.c.0.3.7.j.a.r.5.8.3.9.r.\\.u.w.p.s.o.c.k.e.t.c.l.i.e.n.t...e.x.e...</asString>
	</appId>
	<userId>S-1-5-21-2993214446-1947230185-131795049-1000</userId>
	<addressFamily>FWP_AF_INET</addressFamily>
	<packageSid>S-1-15-2-4163697451-3176919390-1155390458-2883473650-3020241727-522149888-4067122936</packageSid>
	<enterpriseId/>
	<policyFlags>0</policyFlags>
	<effectiveName/>
</header>
	<type>FWPM_NET_EVENT_TYPE_CLASSIFY_DROP</type>
	<classifyDrop>
	<filterId>121180</filterId>
	<layerId>48</layerId>
	<reauthReason>0</reauthReason>
	<originalProfile>1</originalProfile>
	<currentProfile>1</currentProfile>
	<msFwpDirection>MS_FWP_DIRECTION_OUT</msFwpDirection>
	<isLoopback>false</isLoopback>
	<vSwitchId/>
	<vSwitchSourcePort>0</vSwitchSourcePort>
	<vSwitchDestinationPort>0</vSwitchDestinationPort>
</classifyDrop>
<internalFields>
	<internalFlags/>
	<remoteAddrBitmap>0000000000000000</remoteAddrBitmap>
	<capabilities numItems="2">
	<item>FWP_CAPABILITIES_FLAG_INTERNET_CLIENT</item>
	<item>FWP_CAPABILITIES_FLAG_INTERNET_CLIENT_SERVER</item>
	</capabilities>
	<fqbnVersion>0</fqbnVersion>
	<fqbnName/>
	<terminatingFiltersInfo numItems="2">
	<item>
	<filterId>121180</filterId>
	<subLayer>FWPP_SUBLAYER_INTERNAL_FIREWALL_WSH</subLayer>
	<actionType>FWP_ACTION_BLOCK</actionType>
	</item>
	<item>
	<filterId>121165</filterId>
	<subLayer>FWPP_SUBLAYER_INTERNAL_FIREWALL_WF</subLayer>
	<actionType>FWP_ACTION_PERMIT</actionType>
	</item>
	</terminatingFiltersInfo>
</internalFields>
</netEvent>
```
## Case 5: UWP app cannot reach “Intranet” target address with Private Network capability

In this example, the UWP app is unable to reach the Intranet target address,
10.1.1.1, even though it has a Private Network capability token.

**Classify Drop netEvent, Wfpdiag-Case-5.xml**
```xml
<netEvent>
	<header>
	<timeStamp>2020-05-22T20:54:53.499Z</timeStamp>
	<flags numItems="9">
	<item>FWPM_NET_EVENT_FLAG_IP_PROTOCOL_SET</item>
	<item>FWPM_NET_EVENT_FLAG_LOCAL_ADDR_SET</item>
	<item>FWPM_NET_EVENT_FLAG_REMOTE_ADDR_SET</item>
	<item>FWPM_NET_EVENT_FLAG_LOCAL_PORT_SET</item>
	<item>FWPM_NET_EVENT_FLAG_REMOTE_PORT_SET</item>
	<item>FWPM_NET_EVENT_FLAG_APP_ID_SET</item>
	<item>FWPM_NET_EVENT_FLAG_USER_ID_SET</item>
	<item>FWPM_NET_EVENT_FLAG_IP_VERSION_SET</item>
	<item>FWPM_NET_EVENT_FLAG_PACKAGE_ID_SET</item>
	</flags>
	<ipVersion>FWP_IP_VERSION_V4</ipVersion>
	<ipProtocol>6</ipProtocol>
	<localAddrV4>10.216.117.17</localAddrV4>
	<remoteAddrV4>10.1.1.1</remoteAddrV4>
	<localPort>52956</localPort>
	<remotePort>53</remotePort>
	<scopeId>0</scopeId>
	<appId>	
	<data>5c006400650076006900630065005c0068006100720064006400690073006b0076006f006c0075006d00650031005c00700072006f006700720061006d002000660069006c00650073005c00770069006e0064006f007700730061007000700073005c00610066003600390032006200660066002d0036003700370039002d0034003200340066002d0038003700300065002d006600360065003500390063003500300032003300340039005f0031002e0031002e00310033002e0030005f007800360034005f005f00350063003000330037006a0061007200350038003300390072005c0075007700700073006f0063006b006500740063006c00690065006e0074002e006500780065000000</data>
	<asString>\\.d.e.v.i.c.e.\\.h.a.r.d.d.i.s.k.v.o.l.u.m.e.1.\\.p.r.o.g.r.a.m.
	.f.i.l.e.s.\\.w.i.n.d.o.w.s.a.p.p.s.\\.a.f.6.9.2.b.f.f.-.6.7.7.9.-.4.2.4.f.-.8.7.0.e.-.f.6.e.5.9.c.5.0.2.3.4.9._.1...1...1.3...0._.x.6.4._._.5.c.0.3.7.j.a.r.5.8.3.9.r.\\.u.w.p.s.o.c.k.e.t.c.l.i.e.n.t...e.x.e...</asString>
	</appId>
	<userId>S-1-5-21-2993214446-1947230185-131795049-1000</userId>
	<addressFamily>FWP_AF_INET</addressFamily>
	<packageSid>S-1-15-2-4163697451-3176919390-1155390458-2883473650-3020241727-522149888-4067122936</packageSid>
	<enterpriseId/>
	<policyFlags>0</policyFlags>
	<effectiveName/>
</header>
	<type>FWPM_NET_EVENT_TYPE_CLASSIFY_DROP</type>
	<classifyDrop>
	<filterId>121180</filterId>
	<layerId>48</layerId>
	<reauthReason>0</reauthReason>
	<originalProfile>1</originalProfile>
	<currentProfile>1</currentProfile>
	<msFwpDirection>MS_FWP_DIRECTION_OUT</msFwpDirection>
	<isLoopback>false</isLoopback>
	<vSwitchId/>
	<vSwitchSourcePort>0</vSwitchSourcePort>
	<vSwitchDestinationPort>0</vSwitchDestinationPort>
	</classifyDrop>
	<internalFields>
	<internalFlags/>
	<remoteAddrBitmap>0000000000000000</remoteAddrBitmap>
	<capabilities numItems="1">
	<item>FWP_CAPABILITIES_FLAG_PRIVATE_NETWORK</item>
	</capabilities>
	<fqbnVersion>0</fqbnVersion>
	<fqbnName/>
	<terminatingFiltersInfo numItems="2">
	<item>
	<filterId>121180</filterId>
	<subLayer>FWPP_SUBLAYER_INTERNAL_FIREWALL_WSH</subLayer>
	<actionType>FWP_ACTION_BLOCK</actionType>
	</item>
	<item>
	<filterId>121165</filterId>
	<subLayer>FWPP_SUBLAYER_INTERNAL_FIREWALL_WF</subLayer>
	<actionType>FWP_ACTION_PERMIT</actionType>
	</item>
	</terminatingFiltersInfo>
	</internalFields>
</netEvent>
```
The following shows the filter that blocked the event:

**Block Outbound Default Rule Filter \#121180, Wfpdiag-Case-5.xml**

```xml
<item>
	<filterKey>{e62a1a22-c80a-4518-a7f8-e7d1ef3a9ff6}</filterKey>
	<displayData>
	<name>Block Outbound Default Rule</name>
	<description>Block Outbound Default Rule</description>
	</displayData>
	<flags/>
	<providerKey>FWPM_PROVIDER_MPSSVC_WSH</providerKey>
	<providerData>
	<data>c029000000000000</data>
	<asString>.)......</asString>
	</providerData>
	<layerKey>FWPM_LAYER_ALE_AUTH_CONNECT_V4</layerKey>
	<subLayerKey>FWPM_SUBLAYER_MPSSVC_WSH</subLayerKey>
	<weight>
	<type>FWP_EMPTY</type>
	</weight>
	<filterCondition numItems="1">
	<item>
	<fieldKey>FWPM_CONDITION_ALE_PACKAGE_ID</fieldKey>
	<matchType>FWP_MATCH_NOT_EQUAL</matchType>
	<conditionValue>
	<type>FWP_SID</type>
	<sid>S-1-0-0</sid>
	</conditionValue>
	</item>
	</filterCondition>
	<action>
	<type>FWP_ACTION_BLOCK</type>
	<filterType/>
	</action>
	<rawContext>0</rawContext>
	<reserved/>
	<filterId>121180</filterId>
	<effectiveWeight>
	<type>FWP_UINT64</type>
	<uint64>274877906944</uint64>
	</effectiveWeight>
</item>
```
If the target was in the private range, then it should have been allowed by a
PrivateNetwork Outbound Default Rule filter.

The following PrivateNetwork Outbound Default Rule filters have conditions for matching Intranet IP addresses. Since the expected Intranet target address,
10.1.1.1, is not included in these filters it becomes clear that the address is not in the private range. Check the policies that configure the private range
on the device (MDM, Group Policy, etc) and make sure it includes the private targetaddress you wanted to reach.

**PrivateNetwork Outbound Default Rule Filters, Wfpdiag-Case-5.xml**
```xml
<item>
	<filterKey>{fd65507b-e356-4e2f-966f-0c9f9c1c6e78}</filterKey>
	<displayData>
	<name>PrivateNetwork Outbound Default Rule</name>
	<description>PrivateNetwork Outbound Default Rule</description>
	</displayData>
	<flags/>
	<providerKey>FWPM_PROVIDER_MPSSVC_WSH</providerKey>
	<providerData>
	<data>f22d000000000000</data>
	<asString>.-......</asString>
	</providerData>
	<layerKey>FWPM_LAYER_ALE_AUTH_CONNECT_V4</layerKey>
	<subLayerKey>FWPM_SUBLAYER_MPSSVC_WSH</subLayerKey>
	<weight>
	<type>FWP_EMPTY</type>
	</weight>
	<filterCondition numItems="5">
	<item>
	<fieldKey>FWPM_CONDITION_ALE_PACKAGE_ID</fieldKey>
	<matchType>FWP_MATCH_NOT_EQUAL</matchType>
	<conditionValue>
	<type>FWP_SID</type>
	<sid>S-1-0-0</sid>
	</conditionValue>
	</item>
	<item>
	<fieldKey>FWPM_CONDITION_IP_REMOTE_ADDRESS</fieldKey>
	<matchType>FWP_MATCH_EQUAL</matchType>
	<conditionValue>
	<type>FWP_UINT32</type>
	<uint32>1.1.1.1</uint32>
	</conditionValue>
	</item>
	<item>
	<fieldKey>FWPM_CONDITION_ORIGINAL_PROFILE_ID</fieldKey>
	<matchType>FWP_MATCH_EQUAL</matchType>
	<conditionValue>
	<type>FWP_UINT32</type>
	<uint32>1</uint32>
	</conditionValue>
	</item>
	<item>
	<fieldKey>FWPM_CONDITION_CURRENT_PROFILE_ID</fieldKey>
	<matchType>FWP_MATCH_EQUAL</matchType>
	<conditionValue>
	<type>FWP_UINT32</type>
	<uint32>1</uint32>
	</conditionValue>
	</item>
	<item>
	<fieldKey>FWPM_CONDITION_ALE_USER_ID</fieldKey>
	<matchType>FWP_MATCH_EQUAL</matchType>
	<conditionValue>
	<type>FWP_SECURITY_DESCRIPTOR_TYPE</type>
	<sd>O:LSD:(A;;CC;;;S-1-15-3-3)(A;;CC;;;WD)(A;;CC;;;AN)</sd>
	</conditionValue>
	</item>
	</filterCondition>
	<action>
	<type>FWP_ACTION_PERMIT</type>
	<filterType/>
	</action>
	<rawContext>0</rawContext>
	<reserved/>
	<filterId>129656</filterId>
	<effectiveWeight>
	<type>FWP_UINT64</type>
	<uint64>144115600392724416</uint64>
	</effectiveWeight>
	</item>
	<item>
	<filterKey>{b11b4f8a-222e-49d6-8d69-02728681d8bc}</filterKey>
	<displayData>
	<name>PrivateNetwork Outbound Default Rule</name>
	<description>PrivateNetwork Outbound Default Rule</description>
	</displayData>
	<flags/>
	<providerKey>FWPM_PROVIDER_MPSSVC_WSH</providerKey>
	<providerData>
	<data>f22d000000000000</data>
	<asString>.-......</asString>
	</providerData>
	<layerKey>FWPM_LAYER_ALE_AUTH_CONNECT_V4</layerKey>
	<subLayerKey>FWPM_SUBLAYER_MPSSVC_WSH</subLayerKey>
	<weight>
	<type>FWP_EMPTY</type>
	</weight>
	<filterCondition numItems="5">
	<item>
	<fieldKey>FWPM_CONDITION_ALE_PACKAGE_ID</fieldKey>
	<matchType>FWP_MATCH_NOT_EQUAL</matchType>
	<conditionValue>
	<type>FWP_SID</type>
	<sid>S-1-0-0</sid>
	</conditionValue>
	</item>
	<item>
	<fieldKey>FWPM_CONDITION_IP_REMOTE_ADDRESS</fieldKey>
	<matchType>FWP_MATCH_RANGE</matchType>
	<conditionValue>
	<type>FWP_RANGE_TYPE</type>
	<rangeValue>
	<valueLow>
	<type>FWP_UINT32</type>
	<uint32>172.16.0.0</uint32>
	</valueLow>
	<valueHigh>
	<type>FWP_UINT32</type>
	<uint32>172.31.255.255</uint32>
	</valueHigh>
	</rangeValue>
	</conditionValue>
	</item>
	<item>
	<fieldKey>FWPM_CONDITION_ORIGINAL_PROFILE_ID</fieldKey>
	<matchType>FWP_MATCH_EQUAL</matchType>
	<conditionValue>
	<type>FWP_UINT32</type>
	<uint32>1</uint32>
	</conditionValue>
	</item>
	<item>
	<fieldKey>FWPM_CONDITION_CURRENT_PROFILE_ID</fieldKey>
	<matchType>FWP_MATCH_EQUAL</matchType>
	<conditionValue>
	<type>FWP_UINT32</type>
	<uint32>1</uint32>
	</conditionValue>
	</item>
	<item>
	<fieldKey>FWPM_CONDITION_ALE_USER_ID</fieldKey>
	<matchType>FWP_MATCH_EQUAL</matchType>
	<conditionValue>
	<type>FWP_SECURITY_DESCRIPTOR_TYPE</type>
	<sd>O:LSD:(A;;CC;;;S-1-15-3-3)(A;;CC;;;WD)(A;;CC;;;AN)</sd>
	</conditionValue>
	</item>
	</filterCondition>
	<action>
	<type>FWP_ACTION_PERMIT</type>
	<filterType/>
	</action>
	<rawContext>0</rawContext>
	<reserved/>
	<filterId>129657</filterId>
	<effectiveWeight>
	<type>FWP_UINT64</type>
	<uint64>36029209335832512</uint64>
	</effectiveWeight>
</item>
<item>
	<filterKey>{21cd82bc-6077-4069-94bf-750e5a43ca23}</filterKey>
	<displayData>
	<name>PrivateNetwork Outbound Default Rule</name>
	<description>PrivateNetwork Outbound Default Rule</description>
	</displayData>
	<flags/>
	<providerKey>FWPM_PROVIDER_MPSSVC_WSH</providerKey>
	<providerData>
	<data>f22d000000000000</data>
	<asString>.-......</asString>
	</providerData>
	<layerKey>FWPM_LAYER_ALE_AUTH_CONNECT_V4</layerKey>
	<subLayerKey>FWPM_SUBLAYER_MPSSVC_WSH</subLayerKey>
	<weight>
	<type>FWP_EMPTY</type>
	</weight>
	<filterCondition numItems="5">
	<item>
	<fieldKey>FWPM_CONDITION_ALE_PACKAGE_ID</fieldKey>
	<matchType>FWP_MATCH_NOT_EQUAL</matchType>
	<conditionValue>
	<type>FWP_SID</type>
	<sid>S-1-0-0</sid>
	</conditionValue>
	</item>
	<item>
	<fieldKey>FWPM_CONDITION_IP_REMOTE_ADDRESS</fieldKey>
	<matchType>FWP_MATCH_RANGE</matchType>
	<conditionValue>
	<type>FWP_RANGE_TYPE</type>
	<rangeValue>
	<valueLow>
	<type>FWP_UINT32</type>
	<uint32>192.168.0.0</uint32>
	</valueLow>
	<valueHigh>
	<type>FWP_UINT32</type>
	<uint32>192.168.255.255</uint32>
	</valueHigh>
	</rangeValue>
	</conditionValue>
	</item>
	<item>
	<fieldKey>FWPM_CONDITION_ORIGINAL_PROFILE_ID</fieldKey>
	<matchType>FWP_MATCH_EQUAL</matchType>
	<conditionValue>
	<type>FWP_UINT32</type>
	<uint32>1</uint32>
	</conditionValue>
	</item>
	<item>
	<fieldKey>FWPM_CONDITION_CURRENT_PROFILE_ID</fieldKey>
	<matchType>FWP_MATCH_EQUAL</matchType>
	<conditionValue>
	<type>FWP_UINT32</type>
	<uint32>1</uint32>
	</conditionValue>
	</item>
	<item>
	<fieldKey>FWPM_CONDITION_ALE_USER_ID</fieldKey>
	<matchType>FWP_MATCH_EQUAL</matchType>
	<conditionValue>
	<type>FWP_SECURITY_DESCRIPTOR_TYPE</type>
	<sd>O:LSD:(A;;CC;;;S-1-15-3-3)(A;;CC;;;WD)(A;;CC;;;AN)</sd>
	</conditionValue>
	</item>
	</filterCondition>
	<action>
	<type>FWP_ACTION_PERMIT</type>
	<filterType/>
	</action>
	<rawContext>0</rawContext>
	<reserved/>
	<filterId>129658</filterId>
	<effectiveWeight>
	<type>FWP_UINT64</type>
	<uint64>36029209335832512</uint64>
	</effectiveWeight>
</item>
```
# Debugging Past Drops 

If you are debugging a network drop from the past or from a remote machine, you
may have traces already collected from Feedback Hub, such as nettrace.etl and
wfpstate.xml. Once nettrace.etl is converted, nettrace.txt will have the
netEvents of the reproduced event, and wfpstate.xml will contain the filters
that were present on the machine at the time.

If you do not have a live repro or traces already collected, you can still
collect traces after the UWP network connectivity issue has happened by running
these commands in an admin command prompt

```xml
	<Run UWP app>
	Netsh wfp show netevents
	Netsh wfp show state
```

**Netsh wfp show netevents** creates netevents.xml, which contains the past
net events. **Netsh wfp show state** creates wfpstate.xml, which contains
the current filters present on the machine.

Unfortunately, collecting traces after the UWP network connectivity issue is not
always reliable.

NetEvents on the device are stored in a buffer. Once that buffer has reached
maximum capacity, the buffer will overwrite older net events. Due to the buffer
overwrite, it is possible that the collected netevents.xml will not contain the
net event associated with the UWP network connectivity issue. It could have been ov
overwritten. Additionally, filters on the device can get deleted and re-added
with different filterIds due to miscellaneous events on the device. Because of
this, a **filterId** from **netsh wfp show netevents** may not necessarily match any
filter in **netsh wfp show state** because that **filterId** may be outdated.

If you can reproduce the UWP network connectivity issue consistently, we 
recommend using the commands from Debugging Live Drops instead.

Additionally, you can still follow the examples from Debugging Live Drops
section using the trace commands in this section, even if you do not have a live
repro. The **netEvents** and filters are stored in one file in Debugging Live Drops
as opposed to two separate files in the following Debugging Past Drops examples.

## Case 7: Debugging Past Drop - UWP app cannot reach Internet target address and has no capabilities

In this example, the UWP app is unable to connect to bing.com.

Classify Drop Net Event, NetEvents-Case-7.xml

```xml
<item>
<header>
<timeStamp>2020-05-04T22:04:07.039Z</timeStamp>
<flags numItems="9">
<item>FWPM_NET_EVENT_FLAG_IP_PROTOCOL_SET</item>
<item>FWPM_NET_EVENT_FLAG_LOCAL_ADDR_SET</item>
<item>FWPM_NET_EVENT_FLAG_REMOTE_ADDR_SET</item>
<item>FWPM_NET_EVENT_FLAG_LOCAL_PORT_SET</item>
<item>FWPM_NET_EVENT_FLAG_REMOTE_PORT_SET</item>
<item>FWPM_NET_EVENT_FLAG_APP_ID_SET</item>
<item>FWPM_NET_EVENT_FLAG_USER_ID_SET</item>
<item>FWPM_NET_EVENT_FLAG_IP_VERSION_SET</item>
<item>FWPM_NET_EVENT_FLAG_PACKAGE_ID_SET</item>
</flags>
<ipVersion>FWP_IP_VERSION_V4</ipVersion>
<ipProtocol>6</ipProtocol>
<localAddrV4>10.195.36.30</localAddrV4>
<remoteAddrV4>204.79.197.200</remoteAddrV4>
<localPort>57062</localPort>
<remotePort>443</remotePort>
<scopeId>0</scopeId>
<appId>
<data>5c006400650076006900630065005c0068006100720064006400690073006b0076006f006c0075006d00650031005c00700072006f006700720061006d002000660069006c00650073005c00770069006e0064006f007700730061007000700073005c00610066003600390032006200660066002d0036003700370039002d0034003200340066002d0038003700300065002d006600360065003500390063003500300032003300340039005f0031002e0031002e00310032002e0030005f007800360034005f005f00350063003000330037006a0061007200350038003300390072005c0075007700700073006f0063006b006500740063006c00690065006e0074002e006500780065000000</data>
<asString>\\.d.e.v.i.c.e.\\.h.a.r.d.d.i.s.k.v.o.l.u.m.e.1.\\.p.r.o.g.r.a.m.
.f.i.l.e.s.\\.w.i.n.d.o.w.s.a.p.p.s.\\.a.f.6.9.2.b.f.f.-.6.7.7.9.-.4.2.4.f.-.8.7.0.e.-.f.6.e.5.9.c.5.0.2.3.4.9._.1...1...1.2...0._.x.6.4._._.5.c.0.3.7.j.a.r.5.8.3.9.r.\\.u.w.p.s.o.c.k.e.t.c.l.i.e.n.t...e.x.e...</asString>
</appId>
<userId>S-1-5-21-1578316205-4060061518-881547182-1000</userId>
<addressFamily>FWP_AF_INET</addressFamily>
<packageSid>S-1-15-2-4163697451-3176919390-1155390458-2883473650-3020241727-522149888-4067122936</packageSid>
<enterpriseId/>
<policyFlags>0</policyFlags>
<effectiveName/>
</header>
<type>FWPM_NET_EVENT_TYPE_CLASSIFY_DROP</type>
<classifyDrop>
<filterId>206064</filterId>
<layerId>48</layerId>
<reauthReason>0</reauthReason>
<originalProfile>1</originalProfile>
<currentProfile>1</currentProfile>
<msFwpDirection>MS_FWP_DIRECTION_OUT</msFwpDirection>
<isLoopback>false</isLoopback>
<vSwitchId/>
<vSwitchSourcePort>0</vSwitchSourcePort>
<vSwitchDestinationPort>0</vSwitchDestinationPort>
</classifyDrop>
<internalFields>
<internalFlags/>
<remoteAddrBitmap>0000000000000000</remoteAddrBitmap>
<capabilities/>
<fqbnVersion>0</fqbnVersion>
<fqbnName/>
<terminatingFiltersInfo numItems="2">
<item>
<filterId>206064</filterId>
<subLayer>FWPP_SUBLAYER_INTERNAL_FIREWALL_WSH</subLayer>
<actionType>FWP_ACTION_BLOCK</actionType>
</item>
<item>
<filterId>206049</filterId>
<subLayer>FWPP_SUBLAYER_INTERNAL_FIREWALL_WF</subLayer>
<actionType>FWP_ACTION_PERMIT</actionType>
</item>
</terminatingFiltersInfo>
</internalFields>
</item>
```

The Internal fields lists no active capabilities, and the packet is dropped at
filter 206064.

This is a default block rule filter, meaning the packet passed through every
filter that could have allowed it, but because conditions didn’t match for any
those filters, the packet fell to the filter which blocks any packet that the
Security Descriptor doesn’t match.

**Block Outbound Default Rule Filter \#206064, FilterState-Case-7.xml**

```xml
<item>
<filterKey>{f138d1ad-9293-478f-8519-c3368e796711}</filterKey>
<displayData>
<name>Block Outbound Default Rule</name>
<description>Block Outbound Default Rule</description>
</displayData>
<flags/>
<providerKey>FWPM_PROVIDER_MPSSVC_WSH</providerKey>
<providerData>
<data>2e65000000000000</data>
<asString>.e......</asString>
</providerData>
<layerKey>FWPM_LAYER_ALE_AUTH_CONNECT_V4</layerKey>
<subLayerKey>FWPM_SUBLAYER_MPSSVC_WSH</subLayerKey>
<weight>
<type>FWP_EMPTY</type>
</weight>
<filterCondition numItems="1">
<item>
<fieldKey>FWPM_CONDITION_ALE_PACKAGE_ID</fieldKey>
<matchType>FWP_MATCH_NOT_EQUAL</matchType>
<conditionValue>
<type>FWP_SID</type>
<sid>S-1-0-0</sid>
</conditionValue>
</item>
</filterCondition>
<action>
<type>FWP_ACTION_BLOCK</type>
<filterType/>
</action>
<rawContext>0</rawContext>
<reserved/>
<filterId>206064</filterId>
<effectiveWeight>
<type>FWP_UINT64</type>
<uint64>274877906944</uint64>
</effectiveWeight>
</item>
```
## Case 8: Debugging Past Drop - UWP app connects to Internet target address with all capabilities

In this example, the UWP app successfully connects to bing.com [204.79.197.200].

**Classify Allow Net Event, NetEvents-Case-8.xml**

```xml
<item>
	<header>
	<timeStamp>2020-05-04T18:49:55.101Z</timeStamp>
	<flags numItems="9">
	<item>FWPM_NET_EVENT_FLAG_IP_PROTOCOL_SET</item>
	<item>FWPM_NET_EVENT_FLAG_LOCAL_ADDR_SET</item>
	<item>FWPM_NET_EVENT_FLAG_REMOTE_ADDR_SET</item>
	<item>FWPM_NET_EVENT_FLAG_LOCAL_PORT_SET</item>
	<item>FWPM_NET_EVENT_FLAG_REMOTE_PORT_SET</item>
	<item>FWPM_NET_EVENT_FLAG_APP_ID_SET</item>
	<item>FWPM_NET_EVENT_FLAG_USER_ID_SET</item>
	<item>FWPM_NET_EVENT_FLAG_IP_VERSION_SET</item>
	<item>FWPM_NET_EVENT_FLAG_PACKAGE_ID_SET</item>
	</flags>
	<ipVersion>FWP_IP_VERSION_V4</ipVersion>
	<ipProtocol>6</ipProtocol>
	<localAddrV4>10.195.36.30</localAddrV4>
	<remoteAddrV4>204.79.197.200</remoteAddrV4>
	<localPort>61673</localPort>
	<remotePort>443</remotePort>
	<scopeId>0</scopeId>
	<appId>
	<data>5c006400650076006900630065005c0068006100720064006400690073006b0076006f006c0075006d00650031005c00700072006f006700720061006d002000660069006c00650073005c00770069006e0064006f007700730061007000700073005c00610066003600390032006200660066002d0036003700370039002d0034003200340066002d0038003700300065002d006600360065003500390063003500300032003300340039005f0031002e0031002e00310030002e0030005f007800360034005f005f00350063003000330037006a0061007200350038003300390072005c0075007700700073006f0063006b006500740063006c00690065006e0074002e006500780065000000</data>
	<asString>\\.d.e.v.i.c.e.\\.h.a.r.d.d.i.s.k.v.o.l.u.m.e.1.\\.p.r.o.g.r.a.m.
	.f.i.l.e.s.\\.w.i.n.d.o.w.s.a.p.p.s.\\.a.f.6.9.2.b.f.f.-.6.7.7.9.-.4.2.4.f.-.8.7.0.e.-.f.6.e.5.9.c.5.0.2.3.4.9._.1...1...1.0...0._.x.6.4._._.5.c.0.3.7.j.a.r.5.8.3.9.r.\\.u.w.p.s.o.c.k.e.t.c.l.i.e.n.t...e.x.e...</asString>
	</appId>
	<userId>S-1-5-21-1578316205-4060061518-881547182-1000</userId>
	<addressFamily>FWP_AF_INET</addressFamily>
	<packageSid>S-1-15-2-4163697451-3176919390-1155390458-2883473650-3020241727-522149888-4067122936</packageSid>
	<enterpriseId/>
	<policyFlags>0</policyFlags>
	<effectiveName/>
	</header>
	<type>FWPM_NET_EVENT_TYPE_CLASSIFY_ALLOW</type>
	<classifyAllow>
	<filterId>208757</filterId>
	<layerId>48</layerId>
	<reauthReason>0</reauthReason>
	<originalProfile>1</originalProfile>
	<currentProfile>1</currentProfile>
	</classifyAllow>
	<internalFields>
	<internalFlags/>
	<remoteAddrBitmap>0000000000000000</remoteAddrBitmap>
	<capabilities numItems="3">
	<item>FWP_CAPABILITIES_FLAG_INTERNET_CLIENT</item>
	<item>FWP_CAPABILITIES_FLAG_INTERNET_CLIENT_SERVER</item>
	<item>FWP_CAPABILITIES_FLAG_PRIVATE_NETWORK</item>
	</capabilities>
	<fqbnVersion>0</fqbnVersion>
	<fqbnName/>
	<terminatingFiltersInfo numItems="2">
	<item>
	<filterId>208757</filterId>
	<subLayer>FWPP_SUBLAYER_INTERNAL_FIREWALL_WSH</subLayer>
	<actionType>FWP_ACTION_PERMIT</actionType>
	</item>
	<item>
	<filterId>206049</filterId>
	<subLayer>FWPP_SUBLAYER_INTERNAL_FIREWALL_WF</subLayer>
	<actionType>FWP_ACTION_PERMIT</actionType>
	</item>
	</terminatingFiltersInfo>
	</internalFields>
</item>
```
All capabilities are enabled and the resulting filter determining the flow of the packet is 208757.

The filter stated above with action permit:

**InternetClient Default Rule Filter \#208757, FilterState-Case-8.xml**
```xml
<item>
	<filterKey>{e0f6f24e-1f0a-4f1a-bdd8-b9277c144fb5}</filterKey>
	<displayData>
	<name>InternetClient Default Rule</name>
		<description>InternetClient Default Rule</description>
					</displayData>
					<flags/>
					<providerKey>FWPM_PROVIDER_MPSSVC_WSH</providerKey>
					<providerData>
						<data>e167000000000000</data>
						<asString>.g......</asString>
					</providerData>
					<layerKey>FWPM_LAYER_ALE_AUTH_CONNECT_V4</layerKey>
					<subLayerKey>FWPM_SUBLAYER_MPSSVC_WSH</subLayerKey>
					<weight>
						<type>FWP_EMPTY</type>
					</weight>
					<filterCondition numItems="5">
						<item>
							<fieldKey>FWPM_CONDITION_ALE_PACKAGE_ID</fieldKey>
							<matchType>FWP_MATCH_NOT_EQUAL</matchType>
							<conditionValue>
								<type>FWP_SID</type>
								<sid>S-1-0-0</sid>
							</conditionValue>
						</item>
						<item>
							<fieldKey>FWPM_CONDITION_IP_REMOTE_ADDRESS</fieldKey>
							<matchType>FWP_MATCH_RANGE</matchType>
							<conditionValue>
								<type>FWP_RANGE_TYPE</type>
								<rangeValue>
									<valueLow>
										<type>FWP_UINT32</type>
										<uint32>0.0.0.0</uint32>
									</valueLow>
									<valueHigh>
										<type>FWP_UINT32</type>
										<uint32>255.255.255.255</uint32>
									</valueHigh>
								</rangeValue>
							</conditionValue>
						</item>
						<item>
							<fieldKey>FWPM_CONDITION_ORIGINAL_PROFILE_ID</fieldKey>
							<matchType>FWP_MATCH_EQUAL</matchType>
							<conditionValue>
								<type>FWP_UINT32</type>
								<uint32>1</uint32>
							</conditionValue>
						</item>
						<item>
							<fieldKey>FWPM_CONDITION_CURRENT_PROFILE_ID</fieldKey>
							<matchType>FWP_MATCH_EQUAL</matchType>
							<conditionValue>
								<type>FWP_UINT32</type>
								<uint32>1</uint32>
							</conditionValue>
						</item>
						<item>
							<fieldKey>FWPM_CONDITION_ALE_USER_ID</fieldKey>
							<matchType>FWP_MATCH_EQUAL</matchType>
							<conditionValue>
								<type>FWP_SECURITY_DESCRIPTOR_TYPE</type>
								<sd>O:LSD:(A;;CC;;;S-1-15-3-1)(A;;CC;;;WD)(A;;CC;;;AN)</sd>
							</conditionValue>
						</item>
					</filterCondition>
					<action>
						<type>FWP_ACTION_PERMIT</type>
						<filterType/>
					</action>
					<rawContext>0</rawContext>
					<reserved/>
					<filterId>208757</filterId>
					<effectiveWeight>
						<type>FWP_UINT64</type>
						<uint64>412316868544</uint64>
					</effectiveWeight>
				</item>
```
The capabilities field in a netEvent was added to the traces in the Windows 10
May 2019 Update.
