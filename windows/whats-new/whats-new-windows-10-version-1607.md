---
title: What's new in Windows 10, version 1607 (Windows 10)
description: This topic lists new and updated topics in the What's new in Windows 10 documentation for Windows 10 and Windows 10 Mobile.
ms.assetid: 75F285B0-09BE-4821-9B42-37B9BE54CEC6
keywords: ["What's new in Windows 10", "Windows 10", "anniversary update"]
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: TrudyHa
localizationpriority: high
---

# What's new in Windows 10, version 1607

Below is a list of some of the new and updated features in Windows 10, version 1607 (also known as the Anniversary Update).

> **Note:** For release dates and servicing options for each version, see [Windows 10 release information](https://technet.microsoft.com/en-us/windows/release-info).
 
## Deployment

### Windows Imaging and Configuration Designer (ICD)

In previous versions of the Windows 10 Assessment and Deployment Kit (ADK), you had to install additional features for Windows ICD to run. Starting in version 1607, you can install just the configuration designer component independent of the rest of the imaging components. [Install the ADK.](https://developer.microsoft.com/en-us/windows/hardware/windows-assessment-deployment-kit)

Windows ICD now includes simplified workflows for creating provisioning packages:

- [Simple provisioning to set up common settings for Active Directory-joined devices](~/deploy/provision-pcs-for-initial-deployment.md)
- [Advanced provisioning to deploy certificates and apps](~/deploy/provision-pcs-with-apps-and-certificates.md)
- [School provisioning to set up classroom devices for Active Directory](https://technet.microsoft.com/en-us/edu/windows/set-up-students-pcs-to-join-domain)

[Learn more about using provisioning packages in Windows 10.](../deploy/provisioning-packages.md)

## Security

### Credential Guard and Device Guard

Isolated User Mode is now included with Hyper-V so you don't have to install it separately.

### Windows Hello for Business

When Windows 10 first shipped, it included Microsoft Passport and Windows Hello, which worked together to provide multi-factor authentication. To simplify deployment and improve supportability, Microsoft has combined these technologies into a single solution under the Windows Hello name in Windows 10, version 1607. Customers who have already deployed these technologies will not experience any change in functionality. Customers who have yet to evaluate Windows Hello will find it easier to deploy due to simplified policies, documentation, and semantics.

Additional changes for Windows Hello in Windows 10, version 1607:

- Personal (Microsoft account) and corporate (Active Directory or Azure AD) accounts use a single container for keys.
- Group Policy settings for managing Windows Hello for Business are now available for both **User Configuration** and **Computer Configuration**.
<!--- Users can use Windows Phone with Windows Hello to sign in to a PC, connect to VPN, and sign in to Office 365 in a browser.-->

[Learn more about Windows Hello for Business.](../keep-secure/manage-identity-verification-using-microsoft-passport.md)

### VPN

- The VPN client can integrate with the Conditional Access Framework, a cloud-pased policy engine built into Azure Active Directory, to provide a device compliance option for remote clients.
- The VPN client can integrate with Windows Information Protection (WIP) policy to provide additional security. [Learn more about Windows Information Protection](../keep-secure/protect-enterprise-data-using-edp.md), previously known as Enterprise Data Protection.
- New VPNv2 configuration service provider (CSP) adds configuration settings. For details, see [What's new in MDM enrollment and management](https://msdn.microsoft.com/en-us/library/windows/hardware/mt299056%28v=vs.85%29.aspx#whatsnew_1607)
- Microsoft Intune: *VPN Profile (Windows 10 Desktop and Mobile and later)* policy template includes support for native VPN plug-ins.

### Windows Information Protection (WIP), formerly known as enterprise data protection (EDP)
With the increase of employee-owned devices in the enterprise, there’s also an increasing risk of accidental data leak through apps and services, like email, social media, and the public cloud, which are outside of the enterprise’s control. For example, when an employee sends the latest engineering pictures from their personal email account, copies and pastes product info into a tweet, or saves an in-progress sales report to their public cloud storage.

Windows Information Protection (WIP) helps to protect against this potential data leakage without otherwise interfering with the employee experience. WIP also helps to protect enterprise apps and data against accidental data leak on enterprise-owned devices and personal devices that employees bring to work without requiring changes to your environment or other apps.

- [Create a Windows Information Protection (WIP) policy](https://technet.microsoft.com/itpro/windows/keep-secure/overview-create-wip-policy)
- [General guidance and best practices for Windows Information Protection (WIP)](https://technet.microsoft.com/itpro/windows/keep-secure/guidance-and-best-practices-wip)

[Learn more about Windows Information Protection (WIP)](https://technet.microsoft.com/itpro/windows/keep-secure/protect-enterprise-data-using-wip)

### Windows Defender
Several new features and management options have been added to Windows Defender in Windows 10, version 1607.

- [Windows Defender Offline in Windows 10](windows-defender-offline.md) can be run directly from within Windows, without having to create bootable media.
- [Use PowerShell cmdlets for Windows Defender](use-powershell-cmdlets-windows-defender-for-windows-10.md) to configure options and run scans.
- [Enable the Block at First Sight feature in Windows 10](windows-defender-block-at-first-sight.md) to leverage the Windows Defender cloud for near-instant protection against new malware.
- [Configure enhanced notifications for Windows Defender in Windows 10](windows-defender-enhanced-notifications.md) to see more informaiton about threat detections and removal.
- [Run a Windows Defender scan from the command line](run-cmd-scan-windows-defender-for-windows-10.md).
- [Detect and block Potentially Unwanted Applications](enable-pua-windows-defender-for-windows-10.md) during download and install times.

## Management

### Use Remote Desktop Connection for PCs joined to Azure Active Directory

From its release, Windows 10 has supported remote connections to PCs that are joined to Active Directory. Starting in Windows 10, version 1607, you can also connect to a remote PC that is joined to Azure Active Directory (Azure AD). [Learn about the requirements and supported configurations.](../manage/connect-to-remote-aadj-pc.md)


### Taskbar configuration

Enterprise administrators can add and remove pinned apps from the taskbar. Users can pin apps, unpin apps, and change the order of pinned apps on the taskbar after the enterprise configuration is applied. [Learn how to configure the taskbar.](../manage/windows-10-start-layout-options-and-policies.md)

### Mobile device management and configuration service providers (CSPs)

Numerous settings have been added to the Windows 10 CSPs to expand MDM capabilities for managing devices. To learn more about the specific changes in MDM policies for Windows 10, version 1607, see [What's new in MDM enrollment and management](https://msdn.microsoft.com/en-us/library/windows/hardware/mt299056%28v=vs.85%29.aspx#whatsnew_1607).

### Shared PC mode

Windows 10, Version 1607, introduces shared PC mode, which optimizes Windows 10 for shared use scenarios, such as touchdown spaces in an enterprise and temporary customer use in retail. You can apply shared PC mode to Windows 10 Pro, Education, and Enterprise. [Learn how to set up a shared or guest PC.](../manage/set-up-shared-or-guest-pc.md)


## Learn more

- [Windows 10 release information](https://technet.microsoft.com/en-us/windows/release-info)
