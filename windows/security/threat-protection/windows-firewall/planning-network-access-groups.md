---
title: Planning Network Access Groups (Windows)
description: Learn how to implement a network access group for users and devices that can access an isolated server in Windows Defender Firewall with Advanced Security.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 09/08/2021
appliesto: 
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10 and later</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016 and later</a>
---

# Planning Network Access Groups


A network access group (NAG) is used to identify users and devices that have permission to access an isolated server. The server is configured with firewall rules that allow only network connections that are authenticated as originating from a device, and optionally a user, whose accounts are members of its NAG. A member of the isolated domain can belong to as many NAGs as required.

Minimize the number of NAGs to limit the complexity of the solution. You need one NAG for each server isolation group to restrict the devices or users that are granted access. You can optionally split the NAG into two different groups: one for authorized devices and one for authorized users.

The NAGs that you create and populate become active by referencing them in the **Users and Computers** tab of the firewall rules in the GPO assigned to the isolated servers. The GPO must also contain connection security rules that require authentication to supply the credentials checked for NAG membership.

For the Woodgrove Bank scenario, access to the devices running SQL Server which support the WGBank application are restricted to the WGBank front-end servers and to approved administrative users logged on to specific authorized administrative devices. They're also only accessed by the approved admin users and the service account that is used to the run the WGBank front end service.

| NAG Name | NAG Member Users, Computers, or Groups | Description |
| - | - | - |
| CG_NAG_*ServerRole*_Users| Svr1AdminA<br/>Svr1AdminB<br/>Group_AppUsers<br/>AppSvcAccount| This group is for all users who are authorized to make inbound IPsec connections to the isolated servers in this zone.|
| CG_NAG_*ServerRole*_Computers| Desktop1<br/>Desktop2<br/>AdminDT1<br/>AppAdminDT1| This group contains all devices that are authorized to make inbound IPsec connections to the isolated servers in this zone.| 

>**Note:**  Membership in a NAG does not control the level of IPsec traffic protection. The IKE negotiation is only aware of whether the device or user passed or failed the Kerberos V5 authentication process. The connection security rules in the applied GPO control the security methods that are used for protecting traffic and are independent of the identity being authenticated by Kerberos V5.

**Next:** [Planning the GPOs](planning-the-gpos.md)
