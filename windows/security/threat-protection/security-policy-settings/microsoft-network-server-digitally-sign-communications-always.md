---
title: Microsoft network server Digitally sign communications (always)
description: Best practices, security considerations, and more for the security policy setting, Microsoft network server Digitally sign communications (always).
author: vinaypamnani-msft
ms.author: vinpa
ms.reviewer:
manager: aaroncz
ms.localizationpriority: medium
ms.topic: reference
ms.date: 01/13/2023
---

# Microsoft network server: Digitally sign communications (always)

**Applies to**

- Windows 11
- Windows 10
- Windows Server

Describes the best practices, location, values, policy management and security considerations for the **Microsoft network server: Digitally sign communications (always)** security policy setting for SMBv3 and SMBv2.

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

The Server Message Block (SMB) protocol provides the basis for file and print sharing and many other networking operations, such as remote Windows administration. To prevent man-in-the-middle attacks that modify SMB packets in transit, the SMB protocol supports the digital signing of SMB packets.

Implementation of digital signatures in high-security networks helps prevent the impersonation of client computers and servers, which is known as "session hijacking." But misuse of these policy settings can cause data access failure.

Beginning with SMBv2 clients and servers, signing can be either required or not required. If this policy setting is enabled, SMBv2 clients will digitally sign all packets. Another policy setting determines whether signing is required for SMBv3 and SMBv2 server communications: [Microsoft network client: Digitally sign communications (always)](microsoft-network-client-digitally-sign-communications-always.md).

There's a negotiation done between the SMB client and the SMB server to decide whether signing will effectively be used. The following table has the effective behavior for SMBv3 and SMBv2.

| Client |  Server - Required  | Server - Not Required  |
|---------------------------|---------------------|------------------------|
|   **Client - Required**   |       Signed        |         Signed         |
| **Client - Not Required** | Signed <sup>1</sup> | Not Signed<sup>2</sup> |

</br>
<sup>1</sup> Default for domain controller SMB traffic</br>
<sup>2</sup> Default for all other SMB traffic

Performance of SMB signing is improved in SMBv2. For more information, see [Potential effect](#potential-effect).

### Possible values

- Enabled
- Disabled

### Best practices

Enable **Microsoft network server: Digitally sign communications (always)**.

### Location

*Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options*

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy's property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Disabled|
| Default Domain Controller Policy | Enabled|
| Stand-Alone Server Default Settings | Disabled|
| DC Effective Default Settings | Enabled|
| Member Server Effective Default Settings| Disabled|
| Client Computer Effective Default Settings | Disabled|

## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they're saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Session hijacking uses tools that allow attackers who have access to the same network as the client device or server to interrupt, end, or steal a session in progress. Attackers can potentially intercept and modify unsigned Server Message Block (SMB) packets and then modify the traffic and forward it so that the server might perform objectionable actions. Alternatively, the attacker could pose as the server or client device after legitimate authentication and gain unauthorized access to data.

SMB is the resource-sharing protocol that is supported by many Windows operating systems. It's the basis of many modern features like Storage Spaces Direct, Storage Replica, and SMB Direct, as well as many legacy protocols and tools. If either side fails the authentication process, data transmission doesn't take place.

### Countermeasure

Enable **Microsoft network server: Digitally sign communications (always)**.

> [!NOTE]
> An alternative countermeasure that could protect all network traffic is to implement digital signatures with IPsec. There are hardware-based accelerators for IPsec encryption and signing that could be used to minimize the performance impact on the servers' CPUs. No such accelerators are available for SMB signing.

### Potential effect

Storage speeds impact performance. A faster drive on the source and destination allows more throughput, which causes more CPU usage of signing. If you're using a 1-GB Ethernet network or slower storage speed with a modern CPU, there's limited degradation in performance. If you're using a faster network (such as 10 Gb), the performance impact of signing may be greater.

## Related articles

- [Security Options](security-options.md)
- [Microsoft network client: Digitally sign communications (always)](microsoft-network-client-digitally-sign-communications-always.md)
