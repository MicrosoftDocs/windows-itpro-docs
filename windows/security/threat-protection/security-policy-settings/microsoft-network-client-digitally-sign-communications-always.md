---
title: Microsoft network client Digitally sign communications (always)
description: Best practices and security considerations for the  Microsoft network client Digitally sign communications (always) security policy setting.
ms.reviewer:
manager: aaroncz
ms.author: vinpa
ms.localizationpriority: medium
author: vinaypamnani-msft
ms.date: 01/13/2023
ms.topic: reference
---

# Microsoft network client: Digitally sign communications (always)

**Applies to**

- Windows 11
- Windows 10
- Windows Server

This article describes the best practices, location, values, policy management, and security considerations for the **Microsoft network client: Digitally sign communications (always)** security policy setting for SMBv3 and SMBv2.

> [!NOTE]
> This article is about the server message block (SMB) v2 and v3 protocols. SMBv1 isn't secure and has been deprecated in Windows. Starting with Windows 10, version 1709, and Windows Server, version 1709, [SMBv1 isn't installed by default](/windows-server/storage/file-server/troubleshoot/smbv1-not-installed-by-default-in-windows).

> [!IMPORTANT]
> Microsoft doesn't recommend using the following group policy settings:
>
> - **Microsoft network server: Digitally sign communications (if client agrees)**
> - **Microsoft network client: Digitally sign communications (if server agrees)**
>
> Also don't use the **EnableSecuritySignature** registry settings.
>
> These options only affect the SMBv1 behavior. They can be effectively replaced by the **Digitally sign communications (always)** group policy setting or the **RequireSecuritySignature** registry setting.

## Reference

The Server Message Block (SMB) protocol provides the basis for file and print sharing and many other networking operations, such as remote Windows administration. To prevent "man-in-the-middle" attacks that modify SMB packets in transit, the SMB protocol supports digital signing of SMB packets.

Implementation of digital signatures in high-security networks helps prevent the impersonation of client computers and servers, which is known as "session hijacking." Misuse of these policy settings is a common error that can cause data access failure.

Beginning with SMBv2 clients and servers, signing can be either *required* or *not required*. If this policy setting is enabled, SMBv2 clients will digitally sign all packets. Another policy setting determines whether signing is required for SMBv3 and SMBv2 server communications: [Microsoft network server: Digitally sign communications (always)](microsoft-network-server-digitally-sign-communications-always.md).

Negotiation occurs between the SMB client and the SMB server to decide whether signing will be used. The following table shows the effective behavior for SMBv3 and SMBv2.

| Client |  Server - required  | Server - not required  |
|---------------------------|---------------------|------------------------|
|   **Client - required**   |       Signed        |         Signed         |
| **Client - not required** | Signed <sup>1</sup> | Not signed<sup>2</sup> |

</br>
<sup>1</sup> Default for domain controller SMB traffic</br>
<sup>2</sup> Default for all other SMB traffic

Performance of SMB signing is improved in SMBv2. For more information, see [Potential effect](#potential-effect).

### Possible values

- Enabled
- Disabled

### Best practice

Enable **Microsoft network client: Digitally sign communications (always)**.

### Location

*Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options*

### Default values

The following table lists the default values for this policy. Default values are also listed on the policy's property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Disabled|
| Default Domain Controller Policy | Disabled|
| Stand-Alone Server Default Settings | Disabled|
| DC Effective Default Settings | Disabled|
| Member Server Effective Default Settings | Disabled|
| Client Computer Effective Default Settings | Disabled|

## Policy management

This section describes features and tools that you can use to manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they're saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of the countermeasure.

### Vulnerability

Session hijacking uses tools that allow attackers who have access to the same network as the client device or server to interrupt, end, or steal a session in progress. Attackers can potentially intercept and modify unsigned SMB packets and then modify the traffic and forward it to make the server perform objectionable actions. Alternatively, the attacker could pose as the server or client computer after legitimate authentication and gain unauthorized access to data.

SMB is the resource-sharing protocol that's supported by many versions of the Windows operating system. It's the basis of many modern features like Storage Spaces Direct, Storage Replica, and SMB Direct, as well as many legacy protocols and tools. SMB signatures authenticate users and the servers that host the data. If either side fails the authentication process, data transmission doesn't happen.

### Countermeasure

Enable **Microsoft network client: Digitally sign communications (always)**.

> [!NOTE]
> An alternative countermeasure that could protect all network traffic is to implement digital signatures through IPsec. There are hardware-based accelerators for IPsec encryption and signing that can be used to minimize the performance impact on servers. No such accelerators are available for SMB signing.

### Potential effect

Storage speeds affect performance. A faster drive on the source and destination allows more throughput, which causes more CPU usage for signing. If you're using a 1-Gb Ethernet network or slower storage speed with a modern CPU, there's limited degradation in performance. If you're using a faster network (such as 10 Gb), the performance impact of signing may be greater.

## Related articles

- [Security options](security-options.md)
- [Microsoft network server: Digitally sign communications (always)](microsoft-network-server-digitally-sign-communications-always.md)
