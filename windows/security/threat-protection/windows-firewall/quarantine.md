---
title: Quarantine behavior
description: Quarantine behavior is explained in detail.
ms.author: v-bshilpa
author: Benny-54
manager: dansimp
ms.assetid: 
ms.reviewer: 
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: normal
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 11/17/2020
ms.technology: mde
---

# Quarantine behavior

One of the security challenges that network admins face is configuring a machine properly after a network change. 

Network changes can happen frequently. Additionally, the operations required to recategorize the network after a change and apply the correct security policies on a machine are non-trivial and may require considerable CPU time. This is especially true for machines that are part of the domain. In the past, the delay in applying security policies during network recategorization has been successfully exploited for vulnerabilities.

To counter this potential exploitation, Windows Firewall will quarantine an interface until the system has successfully recategorized the network and Windows Filtering Platform (WFP) has the correct filters applied for the updated interface configuration. During quarantine, all new inbound connections without exceptions are blocked to the machine.

While the quarantine feature has long been a part of Windows Firewall, the feature behavior has often caused confusion for customers unaware of quarantine and its motivations.

Ultimately, the goal of this document is to describe the quarantine feature at a high level and help network admins understand why the application traffic is sometimes blocked by quarantine.

## Quarantine filters

The quarantine feature creates filters that can be split into three categories:

- Quarantine default inbound block filter
- Quarantine default exception filters
- Interface un-quarantine filters

These filters are added in the FWPM_SUBLAYER_MPSSVC_QUARANTINE sublayer and these layers are:

1.	FWPM_LAYER_ALE_AUTH_CONNECT_V4

2.	FWPM_LAYER_ALE_AUTH_CONNECT_V6

3.	FWPM_LAYER_ALE_AUTH_RECV_ACCEPT_V4

4.	FWPM_LAYER_ALE_AUTH_RECV_ACCEPT_V6

>[!NOTE]
> Any firewall rules added by the customers will not affect the filters in the quarantine sublayer as filters from Firewall rules are added in the FWPM_SUBLAYER_MPSSVC_WF sublayer. In other words, customers cannot add their own exception filters to prevent packets from being evaluated by quarantine filters.

For more information about WFP layers and sublayers, see [WFP Operation](https://docs.microsoft.com/windows/win32/fwp/basic-operation).

### Quarantine default inbound block filter

The quarantine default inbound block filter effectively blocks any new non-loopback inbound connections if the packet is not explicitly permitted by another filter in the quarantine sublayer.

### Quarantine default exception filters

When the interface is in quarantine state, the quarantine default exception filters will permit new inbound connections given that they meet the conditions of an exception filter. One example of the exception filters is the quarantine default inbound loopback exception filter. This exception filter allows all loopback packets when the interface is in quarantine state.

### Interface un-quarantine filter

The interface un-quarantine filters allow all non-loopback packets if the interface is successfully categorized.

## Quarantine flow

The following describes the general flow of quarantine: 

1.	There is some change on the current network interface.

2.	The interface un-quarantine filters will no longer permit new inbound connections. The interface is now in quarantine state.

3.	All non-loopback inbound connections are either permitted by quarantine default exception filters or dropped by the quarantine default inbound block filter.

4.	The WFP filters applicable to the old interface state are removed.

5. The WFP filters applicable to the new interface state are added, which include the un-quarantine filters for this interface. These filters are updated to match the interface's current state.

6.	The interface has now exited quarantine state as the interface un-quarantine filters permit any new non-loopback packets.

## Quarantine diagnostics

There are two methods of identifying packet drops from the quarantine default inbound block filter.

Given that the network connectivity issue is reproducible, diagnostic traces can be collected by running the following in an administrative command prompt: 

```console
Netsh wfp cap start
<Reproduce network connectivity issue>
Netsh wfp cap stop
```

These commands generate a wfpdiag.cab. Inside the .cab exists a wfpdiag.xml, which contains drop `netEvents` and filters that existed during that reproduction.

Inside the wfpdiag.xml, search for `netEvents` that have `FWPM_NET_EVENT_TYPE_CLASSIFY_DROP` as the `netEvent` type. To find the relevant drop events, search for the drop events with matching destination IP address, package SID, or application ID name. 

The characters in the application ID name will be separated by periods:

```XML
 <asString> 		\\.d.e.v.i.c.e.\\.h.a.r.d.d.i.s.k.v.o.l.u.m.e.1.\\.w.i.n.d.o.w.s.\\.s.y.s.t.e.m.3.2.\\.s.v.c.h.o.s.t...e.x.e... </asString> 
```

The `netEvent` will have more information about the packet that was dropped including information about its capabilities, the filter that dropped the packet, and much more.

If the filter that dropped that packet was by the quarantine default inbound block filter, then the drop `netEvent` will have `filterOrigin` as `Quarantine Default`.

The following is a sample `netEvent` with `filterOrigin` as `Quarantine Default`.

```XML
<netEvent>
    <header>
        <timeStamp>2020-10-07T01:03:56.281Z</timeStamp>
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
        <ipProtocol>17</ipProtocol>
        <localAddrV4>255.255.255.255</localAddrV4>
        <remoteAddrV4>10.195.33.252</remoteAddrV4>
        <localPort>21</localPort>
        <remotePort>61706</remotePort>
        <scopeId>0</scopeId>
        <appId>
            <data>5c00640065006d00330032005c0073007600630068006f00730074002e006500780065000000</data>
            <asString>\.d.e.v.i.c.e.\.h.a.r.d.d.i.s.k.v.o.l.u.m.e.1.\.w.i.n.d.o.w.s.\.s.y.s.t.e.m.3.2.\.s.v.c.h.o.s.t...e.x.e...</asString>
        </appId>
        <userId>S-1-5-19</userId>
        <addressFamily>FWP_AF_INET</addressFamily>
        <packageSid>S-1-0-0</packageSid>
        <enterpriseId/>
        <policyFlags>0</policyFlags>
        <effectiveName/>
    </header>
    <type>FWPM_NET_EVENT_TYPE_CLASSIFY_DROP</type>
    <classifyDrop>
        <filterId>66241</filterId>
        <layerId>44</layerId>
        <reauthReason>0</reauthReason>
        <originalProfile>0</originalProfile>
        <currentProfile>0</currentProfile>
        <msFwpDirection>MS_FWP_DIRECTION_OUT</msFwpDirection>
        <isLoopback>false</isLoopback>
        <vSwitchId/>
        <vSwitchSourcePort>0</vSwitchSourcePort>
        <vSwitchDestinationPort>0</vSwitchDestinationPort>
    </classifyDrop>
    <internalFields>
        <internalFlags numItems="1">
            <item>FWPM_NET_EVENT_INTERNAL_FLAG_FILTER_ORIGIN_SET</item>
        </internalFlags>
        <capabilities/>
        <fqbnVersion>0</fqbnVersion>
        <fqbnName/>
        <terminatingFiltersInfo numItems="3">
            <item>
                <filterId>66241</filterId>
                <subLayer>FWPP_SUBLAYER_INTERNAL_FIREWALL_QUARANTINE</subLayer>
                <actionType>FWP_ACTION_BLOCK</actionType>
            </item>
            <item>
                <filterId>74045</filterId>
                <subLayer>FWPP_SUBLAYER_INTERNAL_FIREWALL_WSH</subLayer>
                <actionType>FWP_ACTION_BLOCK</actionType>
            </item>
            <item>
                <filterId>73602</filterId>
                <subLayer>FWPP_SUBLAYER_INTERNAL_FIREWALL_WF</subLayer>
                <actionType>FWP_ACTION_BLOCK</actionType>
            </item>
        </terminatingFiltersInfo>
        <filterOrigin>Quarantine Default</filterOrigin>
         <interfaceIndex>5</interfaceIndex>
    </internalFields>
</netEvent>

```

Alternatively, If the Filtering Platform Connection failure auditing is enabled, the drop event will be logged in Windows Event Viewer.

To enable Filtering Platform Connection audits, run the following command in an administrative command prompt:

```console
Auditpol /set /category:"System" /SubCategory:"Filtering Platform Connection" /success:enable /failure:enable
```

Sample drop audit with `filterOrigin` as `Quarantine Default`.

![Quarantine default](images/quarantine-default1.png)

Once the drop’s filter origin has been identified as the quarantine default inbound block filter, the interface should be further investigated. To find the relevant interface, use the `InterfaceIndex` value from the `netEvent` or event audit in the following PowerShell command to generate more information about the interface:

```Powershell
Get-NetIPInterface –InterfaceIndex <Interface Index>
Get-NetIPInterface –InterfaceIndex 5
```

![Quarantine Interfaceindex](images/quarantine-interfaceindex1.png)

Using the interface name, event viewer can be searched for any interface related changes. 

To enable more networking audit events, see [Enable IPsec and Windows Firewall Audit Events](https://docs.microsoft.com/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc754714(v=ws.10)?redirectedfrom=MSDN).

Packet drops from the quarantine default inbound block filter are often transient and do not signify anything more than a network change on the interface.
