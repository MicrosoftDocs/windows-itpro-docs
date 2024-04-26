---
title: Identity protection - Advanced credential protection
description: Windows 11 security book -Identity protection chapter.
ms.topic: overview
ms.date: 04/09/2024
---

# Advanced credential protection

:::image type="content" source="images/identity-protection.png" alt-text="Diagram of containing a list of security features." lightbox="images/identity-protection.png" border="false":::

In addition to adopting passwordless sign-in, organizations can strengthen security for user and domain credentials in Windows 11 with Credential Guard and Remote Credential Guard.

## Enhanced phishing protection with Microsoft Defender SmartScreen

As malware protection and other safeguards evolve, cybercriminals look for new ways to circumvent security measures. Phishing has emerged as a leading threat, with apps and websites designed to steal credentials by tricking people into voluntarily entering passwords. As a result, many organizations are transitioning to the ease and security of passwordless sign-in with Windows Hello or Windows Hello for Business.

However, people who are still using passwords can also benefit from powerful credential protection in Windows 11. Microsoft Defender SmartScreen now includes enhanced phishing protection to automatically detect when a user's Microsoft password is entered into any app or website. Windows then identifies if the app or site is securely authenticating to Microsoft and warns if the credentials are at risk. Because the user is alerted at the moment of potential credential theft, they can take preemptive action before the password is used against them or their organization.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Enhanced phishing protection in Microsoft Defender SmartScreen](/windows/security/operating-system-security/virus-and-threat-protection/microsoft-defender-smartscreen/enhanced-phishing-protection)

## Local Security Authority (LSA) protection

Windows has several critical processes to verify a user's identity. Verification processes include Local Security Authority (LSA), which is responsible for authenticating users and verifying Windows sign-ins. LSA handles tokens and credentials that are used for single signon to a Microsoft account and Azure services.

To help keep these credentials safe, additional LSA protection will be enabled by default on new, enterprise-joined Windows 11 devices. By loading only trusted, signed code, LSA provides significant protection against credential theft. LSA protection also now supports configuration using Group Policy and modern device management.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Configuring additional LSA protection](/windows-server/security/credentials-protection-and-management/configuring-additional-lsa-protection)

## Credential Guard

Enabled by default in Windows 11 Enterprise, Credential Guard uses hardware-backed, virtualization-based security (VBS) to protect against credential theft. With Credential Guard, the Local Security Authority (LSA) stores and protects Active Directory (AD) secrets in an isolated environment that is not accessible to the rest of the operating system. LSA uses remote procedure calls to communicate with the isolated LSA process.

By protecting the LSA process with virtualization-based security, Credential Guard shields systems from credential theft attack techniques like Pass-the-Hash or Pass-the-Ticket. It also helps prevent malware from accessing system secrets even if the process is running with admin privileges.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Protect derived domain credentials with Credential Guard](/windows/security/identity-protection/credential-guard/credential-guard)

## Remote Credential Guard

Remote Credential Guard helps organizations protect credentials over a Remote Desktop connection by redirecting the Kerberos requests back to the device that is requesting the connection. It also provides single sign-on experiences for Remote Desktop sessions.

Administrator credentials are highly privileged and must be protected. When Remote Credential Guard is configured and enabled to connect during Remote Desktop sessions, the credential and credential derivatives are never passed over the network to the target device. If the target device is compromised, the credentials are not exposed.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Remote Credential Guard - Windows Security | Microsoft Learn](/windows/security/identity-protection/remote-credential-guard?tabs=intune)

## Token protectio

Token protection attempts to reduce attacks using Microsoft Entra ID token theft. Token protection makes tokens usable only from their intended device by cryptographically binding a token with a device secret. When using the token, both the token and proof of the device secret must be provided. Conditional Access policies<sup>[\[9\]](conclusion.md#footnote9)</sup> can be configured to require token protection when using sign-in tokens for specific services.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Token protection in Entra ID Conditional Access](/azure/active-directory/conditional-access/concept-token-protection)

## Sign-in session token protection policy

At the inaugural Microsoft Secure event in March 2023, we announced the public preview of token protection for sign-ins. This feature allows applications and services to cryptographically bind security tokens to the device, restricting attackers' ability to impersonate users on a different device if tokens are stolen.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Conditional Access: Token protection (preview)](/azure/active-directory/conditional-access/concept-token-protection)

## Account lockout policies

New devices with Windows 11 installed will have account lockout policies that are secure by default. These policies will mitigate brute-force attacks such as hackers attempting to access Windows devices via the Remote Desktop Protocol (RDP).

The account lockout threshold policy is now set to 10 failed sign-in attempts by default, with the account lockout duration set to 10 minutes. The Allow Administrator account lockout is now enabled by default. The Reset account lockout counter after is now set to 10 minutes by default as well.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Account lockout policy](/windows/security/threat-protection/security-policy-settings/account-lockout-policy)

## Access management and control

Access control in Windows ensures that shared resources are available to users and groups other than the resource's owner and are protected from unauthorized use. IT administrators can manage users', groups', and computers' access to objects and assets on a network or computer. After a user is authenticated, the Windows operating system implements the second phase of protecting resources by using built-in authorization and access control technologies to determine if an authenticated user has the correct permissions.

Access Control Lists (ACLs) describe the permissions for a specific object and can also contain System Access Control Lists (SACLs). SACLs provide a way to audit specific system level events, such as when a user attempts to access file system objects. These events are essential for tracking activity for objects that are sensitive or valuable and require extra monitoring. Being able to audit when a resource attempts to read or write part of the operating system is critical to understanding a potential attack.

IT administrators can refine the application and management of access to:

- Protect a greater number and variety of network resources from misuse
- Provision users to access resources in a manner that is consistent with organizational policies and the requirements of their jobs. Organizations can implement the principle of least-privilege access, which asserts that users should be granted access only to the data and operations they require to perform their jobs
- Update users' ability to access resources on a regular basis as an organization's policies change or as users' jobs change
- Support evolving workplace needs, including access from hybrid or remote locations, or from a rapidly expanding array of devices, including tablets and mobile phones
- Identify and resolve access issues when legitimate users are unable to access resources that they need to perform their jobs

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Access control](/windows/security/identity-protection/access-control/access-control)
