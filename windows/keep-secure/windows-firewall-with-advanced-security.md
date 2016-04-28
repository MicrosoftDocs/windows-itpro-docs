---
title: Windows Firewall with Advanced Security Overview (Windows 10)
description: Windows Firewall with Advanced Security Overview
ms.assetid: 596d4c24-4984-4c14-b104-e2c4c7d0b108
author: brianlic-msft
---

# Windows Firewall with Advanced Security Overview


This is an overview of the Windows Firewall with Advanced Security (WFAS) and Internet Protocol security (IPsec) features in Windows Server 2012.

**Did you mean…**

-   [Windows Firewall with Advanced Security in Windows Server 2008 R2](http://technet.microsoft.com/library/cc732283(WS.10).aspx)

## <a href="" id="bkmk-over"></a>Feature description


Windows Firewall with Advanced Security is an important part of a layered security model. By providing host-based, two-way network traffic filtering for a computer, Windows Firewall with Advanced Security blocks unauthorized network traffic flowing into or out of the local computer. Windows Firewall with Advanced Security also works with Network Awareness so that it can apply security settings appropriate to the types of networks to which the computer is connected. Windows Firewall and Internet Protocol Security (IPsec) configuration settings are integrated into a single Microsoft Management Console (MMC) named Windows Firewall with Advanced Security, so Windows Firewall is also an important part of your network’s isolation strategy.

## <a href="" id="bkmk-app"></a>Practical applications


To help address your organizational network security challenges, Windows Firewall with Advanced Security offers the following benefits:

-   **Reduces the risk of network security threats.**  Windows Firewall with Advanced Security reduces the attack surface of a computer, providing an additional layer to the defense-in-depth model. Reducing the attack surface of a computer increases manageability and decreases the likelihood of a successful attack. Network Access Protection (NAP), a feature of Windows Server 2012, also helps ensure client computers comply with policies that define the required software and system configurations for computers that connect to your network. The integration of NAP helps prevent communications between compliant and noncompliant computers.

-   **Safeguards sensitive data and intellectual property.**  With its integration with IPsec, Windows Firewall with Advanced Security provides a simple way to enforce authenticated, end-to-end network communications. It provides scalable, tiered access to trusted network resources, helping to enforce integrity of the data, and optionally helping to protect the confidentiality of the data.

-   **Extends the value of existing investments.**  Because Windows Firewall with Advanced Security is a host-based firewall that is included with Windows Server 2012, and prior Windows operating systems and because it is tightly integrated with Active Directory® Domain Services (AD DS) and Group Policy, there is no additional hardware or software required. Windows Firewall with Advanced Security is also designed to complement existing non-Microsoft network security solutions through a documented application programming interface (API).

## <a href="" id="bkmk-new"></a>New and changed functionality


The following table lists some of the new features for Windows Firewall with Advanced Security in Windows Server 2012.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Feature/functionality</th>
<th>Windows Server 2008 R2</th>
<th>Windows Server 2012</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Internet Key Exchange version 2 (IKEv2) for IPsec transport mode</p></td>
<td><p></p></td>
<td><p>X</p></td>
</tr>
<tr class="even">
<td><p>Windows Store app network isolation</p></td>
<td><p></p></td>
<td><p>X</p></td>
</tr>
<tr class="odd">
<td><p>Windows PowerShell cmdlets for Windows Firewall</p></td>
<td><p></p></td>
<td><p>X</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="ikev2-for-ipsec-transport-mode-"></a>IKEv2 for IPsec transport mode

In Windows Server 2012, IKEv2 supports additional scenarios including IPsec end-to-end transport mode connections.

**What value does this change add?**

Windows Server 2012 IKEv2 support provides interoperability for Windows with other operating systems using IKEv2 for end-to-end security, and Supports Suite B (RFC 4869) requirements.

**What works differently?**

In Windows Server 2008 R2, IKEv2 is available as a virtual private network (VPN) tunneling protocol that supports automatic VPN reconnection. IKEv2 allows the security association to remain unchanged despite changes in the underlying connection.

In Windows Server 2012, IKEv2 support has been expanded.

### Windows Store app network isolation

Administrators can custom configure Windows Firewall to fine tune network access if they desire more control of their Windows Store apps.

**What value does this change add?**

The feature adds the ability to set and enforce network boundaries ensure that apps that get compromised can only access networks where they have been explicitly granted access. This significantly reduces the scope of their impact to other apps, the system, and the network. In addition, apps can be isolated and protected from malicious access from the network.

**What works differently?**

In addition to firewall rules that you can create for program and services, you can also create firewall rules for Windows Store apps and their various capabilities.

### Windows PowerShell cmdlets for Windows Firewall

Windows PowerShell has extensive cmdlets to allow Windows Firewall configuration and management.

**What value does this change add?**

You can now fully configure and manage Windows Firewall, IPsec, and related features using the very powerful and scriptable Windows PowerShell.

**What works differently?**

In previous Windows versions, you could use Netsh to perform many configuration and management functions. This capability has been greatly expanded using the more powerful Windows PowerShell scripting language.

## <a href="" id="bkmk-links"></a>See also


See the following topics for more information about Windows Firewall with Advanced Security in Windows Server 2012.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Content type</th>
<th>References</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Deployment</strong></p></td>
<td><p>[Securing End-to-End IPsec Connections by Using IKEv2 in Windows Server 2012](../p_server_archive/securing-end-to-end-ipsec-connections-by-using-ikev2-in-windows-server-2012.md) | [Isolating Windows Store Apps on Your Network](../p_server_archive/isolating-windows-store-apps-on-your-network.md) | [Windows Firewall with Advanced Security Administration with Windows PowerShell](../p_server_archive/windows-firewall-with-advanced-security-administration-with-windows-powershell.md)</p></td>
</tr>
<tr class="even">
<td><p><strong>Troubleshooting</strong></p></td>
<td><p>[Troubleshooting Windows Firewall with Advanced Security in Windows Server 2012](http://social.technet.microsoft.com/wiki/contents/articles/13894.troubleshooting-windows-firewall-with-advanced-security-in-windows-server-2012.aspx)</p></td>
</tr>
</tbody>
</table>

 

 

 





