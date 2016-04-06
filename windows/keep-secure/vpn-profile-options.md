---
title: VPN profile options (Windows 10)
description: Virtual private networks (VPN) let you give your users secure remote access to your company network. Windows 10 adds useful new VPN profile options to help you manage how users connect.
ms.assetid: E3F99DF9-863D-4E28-BAED-5C1B1B913523
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
---

# VPN profile options


**Applies to**

-   Windows 10
-   Windows 10 Mobile

Virtual private networks (VPN) let you give your users secure remote access to your company network. Windows 10 adds useful new VPN profile options to help you manage how users connect.

## Always On


Always On is a new feature in Windows 10 which enables the active VPN profile to connect automatically on the following triggers:

-   User sign-on

-   Network change

When a device has multiple profiles with Always On triggers, the user can specify the active profile in **Settings** &gt; **Network & Internet** &gt; **VPN** &gt; *VPN profile* &gt; **Let apps automatically use this VPN connection**.

## App-triggered VPN


VPN profiles in Windows 10 can be configured to connect automatically on the launch of a specified set of applications. This feature was included in Windows 8.1 as "On demand VPN". The applications can be defined using the following:

-   Package family name for Universal Windows Platform (UWP) apps

-   File path for Classic Windows applications

## Traffic filters


Traffic Filters give enterprises the ability to decide what traffic is allowed into the corporate network based on policy . With the ever-increasing landscape of remote threats on the corporate network and lesser IT controls on machines, it becomes essential to control the traffic that is allowed through. While server-side layers of firewalls and proxies help, by adding traffic filters the first layer of filtering can be moved onto the client with more advanced filtering on the server side. There are two types of Traffic Filter rules:

-   **App-based rules**. With app-based rules, a list of applications can be marked such that only traffic originating from these apps is allowed to go over the VPN interface.

-   **Traffic-based rules**. Traffic-based rules are 5-tuple policies (ports, addresses, protocol) that can be specified such that only traffic matching these rules is allowed to go over the VPN interface.

There can be many sets of rules which are linked by **OR**. Within each set, there can be app-based rules and traffic-based rules; all the properties within the set will be linked by **AND**. This gives the IT admins a lot of power to craft the perfect policy befitting their use case.

## LockDown VPN


A VPN profile configured with LockDown secures the device to only allow network traffic over the VPN interface. It has the following features:

-   The system attempts to keep the VPN connected at all times.

-   The user cannot disconnect the VPN connection.

-   The user cannot delete or modify the VPN profile.

-   The VPN LockDown profile uses forced tunnel connection.

-   If the VPN connection is not available, outbound network traffic is blocked.

-   Only one VPN LockDown profile is allowed on a device.

**Note**  
For inbox VPN, Lockdown VPN is only available for the Internet Key Exchange version 2 (IKEv2) tunnel type.

 

## Learn more


[VPNv2 configuration service provider (CSP) reference](http://go.microsoft.com/fwlink/p/?LinkId=617588)

[How to Create VPN Profiles in Configuration Manager](http://go.microsoft.com/fwlink/p/?LinkId=618028)

[Help users connect to their work using VPN profiles with Microsoft Intune](http://go.microsoft.com/fwlink/p/?LinkId=618029)

 

 





