---
author: paolomatarazzo
ms.author: paoloma
ms.date: 06/02/2023
ms.topic: include
---

## Protecting Your Work Information

| Security Measures | Features & Capabilities |
|:---|:---|
| **[Azure AD join, Active Directory domain join, and Hybrid Azure AD join with single sign-on (SSO)](https://learn.microsoft.com/azure/active-directory/devices/concept-azure-ad-join)** |  |
| **[Security baselines](https://learn.microsoft.com/mem/intune/protect/security-baselines)** | Windows 11 supports modern device management so that IT pros can manage company security policies and business applications without compromising user privacy on corporate or employee-owned devices. With MDM solutions, IT can manage Windows 11 using industry-standard protocols. To simplify setup for users, management features are built directly into Windows, eliminating the need for a separate MDM client. Windows 11 can be configured with Microsoft’s MDM security baseline backed by ADMX policies, which functions like the Microsoft GP-based security baseline. The security baseline enables IT administrators to easily address security concerns and compliance needs for modern cloud-managed devices. |
| **[Remote wipe](https://learn.microsoft.com/windows/client-management/mdm/remotewipe-csp)** | When a device is lost or stolen, IT administrators might want to remotely wipe data stored in memory and hard disks. A help desk agent might also want to reset devices to fix issues encountered by remote workers. Windows 11 supports the Remote Wipe configuration service provider (CSP) so that MDM solutions can remotely initiate any of the following operations: 1) Reset the device and remove user accounts and data. 2) Reset the device and clean the drive. 3) Reset the device but persist user accounts and data. |
| **[Manage by Mobile Device Management (MDM) and group policy](https://learn.microsoft.com/windows/security/threat-protection/windows-security-configuration-framework/windows-security-baselines)** |  |
| **[Universal Print](https://learn.microsoft.com/universal-print/)** |  |

## Update

| Security Measures | Features & Capabilities |
|:---|:---|
| **[Windows Autopatch](https://learn.microsoft.com/windows/deployment/windows-autopatch/)** | With the Autopatch service, IT teams can delegate management of updates to Windows 10/11, Microsoft Edge, and Microsoft 365 apps to Microsoft. Under the hood, Autopatch takes over configuration of the policies and deployment service of Windows Update for Business. What the customer gets are endpoints that are up to date, thanks to dynamically generated rings for progressive deployment that will pause and/or roll back updates (where possible) when issues arise. The goal is to provide peace of mind to IT pros, encourage rapid adoption of updates, and to reduce bandwidth required to deploy them successfully, thereby closing gaps in protection that may have been open to exploitation by malicious actors.  |
| **[Windows Autopilot](https://learn.microsoft.com/windows/deployment/windows-autopilot)** |  |
