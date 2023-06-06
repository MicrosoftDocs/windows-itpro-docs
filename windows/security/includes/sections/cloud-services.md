---
author: paolomatarazzo
ms.author: paoloma
ms.date: 06/06/2023
ms.topic: include
---

## Protecting Your Work Information

| Security Measures | Features & Capabilities |
|:---|:---|
| **[Azure AD join, Active Directory domain join, and Hybrid Azure AD join with single sign-on (SSO)](/azure/active-directory/devices/concept-azure-ad-join)** | Microsoft Azure Active Directory is a comprehensive cloud-based identity management solution that helps enable secure access to applications, networks, and other resources and guard against threats. |
| **[Security baselines](/mem/intune/protect/security-baselines)** | Windows 11 supports modern device management so that IT pros can manage company security policies and business applications without compromising user privacy on corporate or employee-owned devices. With MDM solutions, IT can manage Windows 11 using industry-standard protocols. To simplify setup for users, management features are built directly into Windows, eliminating the need for a separate MDM client. <br><br>Windows 11 can be configured with Microsoft's MDM security baseline backed by ADMX policies, which functions like the Microsoft GP-based security baseline. The security baseline enables IT administrators to easily address security concerns and compliance needs for modern cloud-managed devices. |
| **[Remote wipe](/windows/client-management/mdm/remotewipe-csp)** | When a device is lost or stolen, IT administrators may want to remotely wipe data stored on the device. A helpdesk agent may also want to reset devices to fix issues encountered by remote workers. <br><br>With the Remote Wipe configuration service provider (CSP), an MDM solution can remotely initiate any of the following operations on a Windows device: reset the device and remove user accounts and data, reset the device and clean the drive, reset the device but persist user accounts and data. |
| **[Manage by Mobile Device Management (MDM) and group policy](/windows/security/threat-protection/windows-security-configuration-framework/windows-security-baselines)** | Windows 11 supports modern device management so that IT pros can manage company security policies and business applications without compromising user privacy on corporate or employee-owned devices. With MDM solutions, IT can manage Windows 11 using industry-standard protocols. To simplify setup for users, management features are built directly into Windows, eliminating the need for a separate MDM client.  |
| **[Universal Print](/universal-print/)** | Unlike traditional print solutions that rely on Windows print servers, Universal Print is a <br>Microsoft hosted cloud subscription service that supports a zero-trust security model by <br>enabling network isolation of printers, including the Universal Print connector software, from <br>the rest of the organization's resources. |

## Update

| Security Measures | Features & Capabilities |
|:---|:---|
| **[Windows Autopatch](/windows/deployment/windows-autopatch/)** | With the Autopatch service, IT teams can delegate management of updates to Windows 10/11, Microsoft Edge, and Microsoft 365 apps to Microsoft. Under the hood, Autopatch takes over configuration of the policies and deployment service of Windows Update for Business. What the customer gets are endpoints that are up to date, thanks to dynamically generated rings for progressive deployment that will pause and/or roll back updates (where possible) when issues arise. <br><br>The goal is to provide peace of mind to IT pros, encourage rapid adoption of updates, and to reduce bandwidth required to deploy them successfully, thereby closing gaps in protection that may have been open to exploitation by malicious actors.  |
| **[Windows Autopilot](/windows/deployment/windows-autopilot)** | Windows Autopilot simplifies the way devices get deployed, reset, and repurposed, with an experience that is zero touch for IT. |
