---
title: How Surface Hub addresses Wi-Fi Direct security issues
description: Guidance about Wi-Fi Direct security risks.
keywords: change history
ms.prod: surface-hub
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 11/27/2019
ms.reviewer: 
manager: dansimp
ms.localizationpriority: medium
---

# How Surface Hub addresses Wi-Fi Direct security issues

Microsoft Surface Hub is an all-in-one productivity device that enables teams to better brainstorm, collaborate, and share ideas. Surface Hub relies on Miracast for wireless projection through Wi-Fi Direct.

This article provides guidance on Wi-Fi Direct security vulnerabilities, how Surface Hub  addresses those risks, and how Surface Hub administrators can configure the device for the highest level of security. This information will help customers with high security requirements understand how best to protect their Surface Hub-connected networks and data in transit.

The intended audiences for this topic include IT and network administrators who want to deploy Surface Hub in their corporate environment with optimal security settings.

## Overview

Security for Surface Hub depends extensively on Wi-Fi Direct/Miracast and the associated 802.11, Wi-Fi Protected Access (WPA2), and Wireless Protected Setup (WPS) standards. Because the device only supports WPS (as opposed to WPA2 Pre-Shared Key (PSK) or WPA2 Enterprise),  the issues often associated with 802.11 encryption are simplified.

Surface Hub operates on par with the field of Miracast receivers. So, it's vulnerable to a similar set of exploits as all WPS-based wireless network devices. But the Surface Hub implementation of WPS has extra precautions built in. Also, its internal architecture helps prevent an attacker who has compromised the Wi-Fi Direct/Miracast layer from move past the network interface onto other attack surfaces and connected enterprise networks.

## Wi-Fi Direct background

Miracast is part of the Wi-Fi Display standard,which is supported by the Wi-Fi Direct protocol. These standards are supported in modern mobile devices for screen sharing and collaboration.

Wi-Fi Direct or Wi-Fi "peer to peer" (P2P) is a standard from the Wi-Fi Alliance for "Ad-Hoc" networks. Supported devices can communicate directly and create groups of networks without a conventional Wi-Fi access point or an Internet connection.

Security for Wi-Fi Direct is provided by WPA2 under the WPS standard. The authentication mechanism for devices can be a numerical pin (WPS-PIN), a physical or virtual push button (WPS-PBC), or an out-of-band message such as near field communication (WPS-OOO). Surface Hub supports the PIN method and the push-button, which is the default.

In Wi-Fi Direct, groups are created as one of the following:
- Persistent, for which automatic reconnection cvan occur by using stored key material
- Temporary," in which where devices can't re-authenticate without user action

Wi-Fi Direct groups will determine a *Group Owner* (GO) through a negotiation protocol, which mimics the "station" or "access point" functionality for the established Wi-Fi Direct Group. This Wi-Fi Direct GO provides authentication (via an “Internal Registrar”) and facilitate upstream network connections. For Surface Hub, this GO negotiation doesn't occur. The network only operates in "autonomous" mode, and Surface Hub is always the Group Owner. Finally, Surface Hub itself doesn't join other Wi-Fi Direct networks itself as a client.

## Wi-Fi Direct vulnerabilities and how Surface Hub addresses them

**Vulnerabilities and attacks in the Wi-Fi Direct invitation, broadcast, and discovery process**: Wi-Fi Direct/Miracast attacks may target weaknesses in the group establishment, peer discovery, device broadcast, or invitation processes.

|Wi-Fi Direct vulnerability | Surface Hub mitigation |
| --- | --- |
| The discovery process may remain active for an extended period of time, which could allow invitations and connections to be established without the intent of the device owner.|  Surface Hub only operates as the Group Owner (GO), which does not perform the client discovery or GO negotiation process. Broadcast can be turned off by fully disabling wireless projection.|
| Invitation and discovery through PBC allows an unauthenticated attacker to perform repeated connection attempts, or unauthenticated connections are automatically accepted. | By requiring WPS PIN security, administrators can reduce the potential for such unauthorized connections or "invitation bombs," in which invitations are repeatedly sent until a user mistakenly accepts one. |

**Wi-Fi Protected Setup (WPS) Push Button Connect (PBC) vs PIN Entry**: Public weaknesses have been demonstrated in WPS-PIN method design and implementation. WPS-PBC has other vulnerabilities that could allow active attacks against a protocol that's designed for one-time use.

| Wi-Fi Direct vulnerability |	Surface Hub mitigation |
| --- | --- |
| WPS-PBC is vulnerable to active attackers. As stated WPS specification states: "The PBC method has zero bits of entropy and only protects against passive eavesdropping attacks. PBC protects against eavesdropping attacks and takes measures to prevent a device from joining a network that was not selected by the device owner. The absence of authentication, however, means that PBC does not protect against active attack." Attackers can use selective wireless jamming or other potential denial-of-service vulnerabilities to trigger an unintended Wi-Fi Direct GO or connection. Additionally, an active attacker, with only physical proximity, can repeatedly tear down any Wi-Fi Direct group and attempt the attack until it's successful. | Enable WPS-PIN security in Surface Hub configuration. Tthe Wi-Fi WPS specification states: "The PBC method should only be used if no PIN-capable Registrar is available and the WLAN user is willing to accept the risks associated with PBC". |
| WPS-PIN implementations can be subject to brute-force attacks that target a vulnerability in the WPS standard. Due to the design of split PIN verification, a number of implementation vulnerabilities arose in the past several years across a range of Wi-Fi hardware manufacturers. In 2011, two researchers (Stefan Viehböck and Craig Heffner) released information on this vulnerability and tools such as "Reaver" as a proof of concept. |	The Microsoft implementation of WPS in Surface Hub changes the pin every 30 seconds. To crack the pin, an attacker must work through the entire exploit in less than 30 seconds. Given the current state of tools and research in this area, a brute-force pin-cracking attack through WPS is unlikely. |
| WPS-PIN can be cracked by an offline attack because of weak initial key (E-S1,E S2) entropy. In 2014, Dominique Bongard discribed a "Pixie Dust" attack where poor initial randomness for the pseudo random number generator (PRNG) in the wireless device allowed an offline brute-force attack. | The Microsoft implementation of WPS in Surface Hub is not susceptible to this offline PIN brute-force attack. The WPS-PIN is randomized for each connection. |

**Unintended exposure of network services**: Network daemons that are intended for Ethernet or WLAN services may be accidentally exposed because ofo misconfiguration (such as binding to “all”/0..0.0 interfaces). Other possible causes include a poorly configured device firewall or missing firewall rules.

| Wi-Fi Direct vulnerability |	Surface Hub mitigation |
| --- | --- |
| Misconfiguration binds a vulnerable or unauthenticated network service to "all" interfaces, which includes the Wi-Fi Direct interface. This potentially exposes services that shouldn't be accessible to Wi-Fi Direct clients, which may be weakly or automatically authenticated. | In Surface Hub, the default firewall rules only permit the required TCP and UDP network ports and by default deny all inbound connections. Strong authentication can be configured by enabling the WPS-PIN mode. |

**Bridging Wi-Fi Direct and other wired or wireless networks**: Network bridging between WLAN or Ethernet networks is a violation of the Wi-Fi Direct specification. Such a bridge or misconfiguration may effectively lower or remove wireless access controls for the internal corporate network.

| Wi-Fi Direct vulnerability |	Surface Hub mitigation |
| --- | --- |
| Wi-Fi Direct devices could allow unauthenticated or poorly authenticated access to bridged network connections. This may allow Wi-Fi Direct networks to route traffic to internal Ethernet LAN or other infrastructure or to enterprise WLAN networks in violation of existing IT security protocols. |	Surface Hub can't be configured to bridge wireless interfaces or allow routing between disparate networks. The default firewall rules add defense in depth to any such routing or bridge connections. |

**The use of Wi-Fi Direct “legacy” mode**: Exposure to unintended networks or devices when operating in “legacy” mode may present a risk. Device spoofing or unintended connections could occur if WPS-PIN is not enabled.

| Wi-Fi Direct vulnerability |	Surface Hub mitigation |
| --- | --- |
| By supporting both Wi-Fi Direct and 802.11 infrastructure clients, the system is operating in a "legacy" support mode. This may expose the connection-setup phase indefinitely, allowing for groups to be joined or devices invited to connect well after their intended setup phase terminates. |	Surface Hub doesn't support Wi-Fi Direct legacy clients. Only Wi-Fi Direct connections can be made to Surface Hub even when WPS-PIN mode is enabled. |

**Wi-Fi Direct GO negotiation during connection setup**: The Group Owner in Wi-Fi Direct is analogous to the “access point” in a traditional 802.11 wireless network. The negotiation can be gamed by a malicious device.

|Wi-Fi Direct vulnerability |	Surface Hub mitigation |
| --- | --- |
| If groups are dynamically established or if the Wi-Fi Direct device can be made to join new groups, the Group Owner (GO) negotiation can be won by a malicious device that always specifies the max Group Owner "intent" value of 15. (But the connection fails if the device is configured to always be a Group Owner.)	| Surface Hub takes advantage of Wi-Fi Direct "Autonomous mode," which skips the GO negotiation phase of the connection setup. Surface Hub is always the Group Owner. |

**Unintended or malicious Wi-Fi deauthentication**: Wi-Fi deauthentication is an old attack in which a physically local attacker can expedite information leaks in the connection-setup process, trigger new four-way handshakes, target Wi-Fi Direct WPS-PBC for active attack, or create denial-of-service attacks.

| Wi-Fi Direct vulnerability |	Surface Hub mitigation |
| --- | --- |
| Deauthentication packets can be sent by an unauthenticated attacker to cause the station to re-authenticate and sniff the resulting handshake. Cryptographic or brute-force attacks can be attempted on the resulting handshake. Mitigations for these attack include enforcing length and complexity policies for pre-shared keys, configuring the access point (if applicable) to detect malicious levels of deauthentication packets, and using WPS to automatically generate strong keys. In PBC mode, the user is interacting with a physical or virtual button to allow arbitrary device association. This process should happen only at setup within a short window. After the button is automatically "pushed," the device will accept any station associating via a canonical PIN value (all zeros). Deauthentication can force a repeated setup process. |	The current Surface Hub design uses WPS in PIN or PBC mode. No PSK configuration is permitted. This methods helps enforce generation of strong keys. Enabling WPS-PIN security is recommended. |
| In addition to denial-of-service attacks, deauthentication packets can be used to trigger a reconnect that re-opens the window of opportunity for active attacks against WPS-PBC. |	Enable WPS-PIN security in Surface Hub’s configuration. |

**Basic wireless information disclosure**: Wireless networks, 802.11 or otherwise, are inherently at risk of \information disclosure. Although the information is largely connection or device metadata, it remains an accepted risk for any 802.11 administrator. Wi-Fi Direct with device authentication via WPS-PIN effectively reveals the same information as a PSK or Enterprise 802.11 network.

| Wi-Fi Direct vulnerability |	Surface Hub mitigation |
| --- | --- |
| During broadcast, connection setup, or even normal operation of already-encrypted connections, basic information about devices and packet sizes is wirelessly transmitted. At a basic level, a local attacker within wireless range can determine the names of wireless devices, the MAC addresses of communicating equipment, and possibly other details, such as the version of the wireless stack, packet sizes, or the configured access point or Group Owner options by examining the relevant 802.11 Information Elements.	| The Wi-Fi Direct network that Surface Hub uses can't be further protected from metadata leaks, just like 802.11 Enterprise or PSK wireless networks. Physical security and removal of potential threats from wireless proximity can help reduce potential information leaks. |

**Wireless evil twin or spoofing attacks**:  Spoofing the wireless name is a trivial and known exploit for a physically local attacker to lure unsuspecting or mistaken users to connect.

| Wi-Fi Direct vulnerability |	Surface Hub mitigation |
| --- | --- |
| By spoofing or cloning the wireless name or "SSID" of the target network, an attacker may trick the user into connecting to a fake malicious network. By supporting unauthenticated, auto-join Miracast, an attacker could capture the intended display materials or attempt to perform network attacks on the connecting device. |	While no specific protections against joining a spoofed Surface Hub are in place, this attack is partially mitigated in two ways. First, any potential attack must be physically within Wi-Fi range. Second, this attack is only possible during the very first connection. Subsequent connections use a persistent Wi-Fi Direct group, and Windows will remember and prioritize this prior connection during future Hub use. (Note: Spoofing the MAC address, Wi-Fi channel, and SSID simultaneously was not considered for this report and may result in inconsistent Wi-Fi behavior.) Overall, this weakness is a fundamental problem for any 802.11 wireless network that lacks Enterprise WPA2 protocols such as EAP-TLS or EAP-PWD, which are not supported in Wi-Fi Direct. |

## Surface Hub hardening guidelines

Surface Hub is designed to facilitate collaboration and allow users to start or join meetings quickly and efficiently. The default Wi-Fi Direct settings for Surface Hub are optimized for this scenario.

For additional wireless interface security, Surface Hub users should enable the WPS-PIN security setting. This setting disables WPS-PBC mode and offers client authentication. It provides the strongest level of protection by preventing unauthorized connections to Surface Hub.

If you still have concerns about authentication and authorization of a Surface Hub, we recommend that you connect the device to a separate network. You might use Wi-Fi (such as a "guest" Wi-Fi network) or a separate Ethernet network, preferably an entirely different physical network. But a VLAN can also provide added security). Of course, this approach may preclude connections to internal network resources or services and may require additional network configuration to regain access.

Also recommended: 
- [Install regular system updates](manage-windows-updates-for-surface-hub.md) 
- Update the Miracast settings to disable auto-present mode

## Learn more

- [Wi-Fi Direct specifications](http://www.wi-fi.org/discover-wi-fi/wi-fi-direct)
- [Wireless Protected Setup (WPS) specification](http://www.wi-fi.org/discover-wi-fi/wi-fi-protected-setup)
