---
title: What's new in Windows 10 Enterprise LTSC 2016
manager: aaroncz
ms.author: mstewart
description: New and updated IT pro content about new features in Windows 10 Enterprise LTSC 2016 (also known as Windows 10 Enterprise 2016 LTSB).
ms.service: windows-client
author: mestew
ms.localizationpriority: low
ms.topic: reference
ms.subservice: itpro-fundamentals
ms.date: 07/09/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/" target="_blank">Windows 10 Enterprise LTSC 2016</a>
---

# What's new in Windows 10 Enterprise LTSC 2016

This article lists new and updated features and content that are of interest to IT pros for Windows 10 Enterprise LTSC 2016 (LTSB), compared to Windows 10 Enterprise LTSC 2015 (LTSB). For a brief description of the LTSC servicing channel, see [Windows 10 Enterprise LTSC](overview.md).

> [!NOTE]
> Windows 10 Enterprise LTSC 2016 was first available on August 2, 2016. Features in Windows 10 Enterprise LTSC 2016 are equivalent to Windows 10, version 1607.

## Deployment

### Windows Imaging and Configuration Designer (ICD)

In previous versions of the Windows 10 Assessment and Deployment Kit (ADK), you had to install more features for Windows ICD to run. Starting in this version of Windows 10, you can install just the configuration designer component independent of the rest of the imaging components. [Install the ADK](/windows-hardware/get-started/adk-install).

Windows ICD now includes simplified workflows for creating provisioning packages:

- [Simple provisioning to set up common settings for Active Directory-joined devices](/windows/configuration/provisioning-packages/provision-pcs-for-initial-deployment)
- [Advanced provisioning to deploy certificates and apps](/windows/configuration/provisioning-packages/provision-pcs-with-apps-and-certificates)
- [School provisioning to set up classroom devices for Active Directory](/education/windows/set-up-students-pcs-to-join-domain)

[Learn more about using provisioning packages in Windows 10.](/windows/configuration/provisioning-packages/provisioning-packages)

## Security

### Credential Guard and Device Guard

Isolated User Mode is now included with Hyper-V so you don't have to install it separately.

### Windows Hello for Business

When Windows 10 was first shipped, it included Microsoft Passport and Windows Hello, which worked together to provide multifactor authentication. To simplify deployment and improve supportability, Microsoft has combined these technologies into a single solution under the Windows Hello name in this version of Windows 10. Customers who have already deployed Microsoft Passport for Work won't experience any change in functionality. Customers who have yet to evaluate Windows Hello will find it easier to deploy due to simplified policies, documentation, and semantics.

Other changes for Windows Hello in Windows 10 Enterprise LTSC 2016:

- Personal (Microsoft account) and corporate (Active Directory or Entra ID) accounts use a single container for keys.
- Group Policy settings for managing Windows Hello for Business are now available for both **User Configuration** and **Computer Configuration**.
- Beginning in this version of Windows 10, Windows Hello as a convenience PIN is disabled by default on all domain-joined computers. To enable a convenience PIN, enable the Group Policy setting **Turn on convenience PIN sign-in**.

[Learn more about Windows Hello for Business.](/windows/security/identity-protection/hello-for-business/deploy/requirements)

### BitLocker

#### New BitLocker features

- **XTS-AES encryption algorithm**. BitLocker now supports the XTS-AES encryption algorithm. XTS-AES provides extra protection from a class of attacks on encryption that rely on manipulating cipher text to cause predictable changes in plain text. BitLocker supports both 128-bit and 256-bit XTS-AES keys.
  It provides the following benefits:
  - The algorithm is FIPS-compliant.
  - Easy to administer. You can use the BitLocker Wizard, manage-bde, Group Policy, MDM policy, Windows PowerShell, or WMI to manage it on devices in your organization.

    > [!NOTE]
    > Drives encrypted with XTS-AES will not be accessible on older version of Windows. This is only recommended for fixed and operating system drives. Removable drives should continue to use the AES-CBC 128-bit or AES-CBC 256-bit algorithms.

### Security auditing

#### New Security auditing features

-   The [WindowsSecurityAuditing](/windows/client-management/mdm/windowssecurityauditing-csp) and [Reporting](/windows/client-management/mdm/reporting-csp) configuration service providers allow you to add security audit policies to mobile devices.

### Trusted Platform Module

#### New TPM features

-   Key Storage Providers (KSPs) and srvcrypt support elliptical curve cryptography (ECC).

### Windows Information Protection (WIP), formerly known as enterprise data protection (EDP)

With the increase of employee-owned devices in the enterprise, there's also an increasing risk of accidental data leak through apps and services, like email, social media, and the public cloud, which are outside of the enterprise's control. For example, when an employee sends the latest engineering pictures from their personal email account, copies and pastes product info into a tweet, or saves an in-progress sales report to their public cloud storage.

Windows Information Protection (WIP) helps to protect against this potential data leakage without otherwise interfering with the employee experience. WIP also helps to protect enterprise apps and data against accidental data leak on enterprise-owned devices and personal devices that employees bring to work without requiring changes to your environment or other apps.

- [Create a Windows Information Protection (WIP) policy](/windows/security/information-protection/windows-information-protection/overview-create-wip-policy)
- [General guidance and best practices for Windows Information Protection (WIP)](/windows/security/information-protection/windows-information-protection/guidance-and-best-practices-wip)

[Learn more about Windows Information Protection (WIP)](/windows/security/information-protection/windows-information-protection/protect-enterprise-data-using-wip)

### Windows Defender

Several new features and management options have been added to Windows Defender in this version of Windows 10.

- [Windows Defender Offline in Windows 10](/microsoft-365/security/defender-endpoint/microsoft-defender-offline) can be run directly from within Windows, without having to create bootable media.
- [Use PowerShell cmdlets for Windows Defender](/microsoft-365/security/defender-endpoint/use-powershell-cmdlets-microsoft-defender-antivirus) to configure options and run scans.
- [Enable the Block at First Sight feature in Windows 10](/microsoft-365/security/defender-endpoint/configure-block-at-first-sight-microsoft-defender-antivirus) to use the Windows Defender cloud for near-instant protection against new malware.
- [Configure enhanced notifications for Windows Defender in Windows 10](/microsoft-365/security/defender-endpoint/configure-notifications-microsoft-defender-antivirus) to see more information about threat detections and removal.
- [Run a Windows Defender scan from the command line](/microsoft-365/security/defender-endpoint/command-line-arguments-microsoft-defender-antivirus).
- [Detect and block Potentially Unwanted Applications with Windows Defender](/microsoft-365/security/defender-endpoint/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus) during download and install times.

### Microsoft Defender for Endpoint

With the growing threat from more sophisticated targeted attacks, a new security solution is imperative in securing an increasingly complex network ecosystem. Microsoft Defender for Endpoint is a security service, built into Windows 10 that enables enterprise customers detect, investigate, and respond to advanced threats on their networks.

[Learn more about Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/).

### VPN security

- The VPN client can integrate with the Conditional Access Framework, a cloud-based policy engine built into Microsoft Entra ID, to provide a device compliance option for remote clients.
- The VPN client can integrate with Windows Information Protection (WIP) policy to provide extra security. [Learn more about Windows Information Protection](/windows/threat-protection/windows-information-protection/protect-enterprise-data-using-wip), previously known as Enterprise Data Protection.
- New VPNv2 configuration service provider (CSP) adds configuration settings. For details, see [VPNv2 CSP](/windows/client-management/mdm/vpnv2-csp)
- Microsoft Intune: *VPN* profile template includes support for native VPN plug-ins. For more information, see [Create VPN profiles to connect to VPN servers in Intune](/mem/intune/configuration/vpn-settings-configure).

## Management

### Use Remote Desktop Connection for PCs joined to Microsoft Entra ID

From its release, Windows 10 has supported remote connections to PCs that are joined to Active Directory. Starting in this version of Windows 10, you can also connect to a remote PC that is joined to Microsoft Entra ID. [Learn about the requirements and supported configurations.](/windows/client-management/connect-to-remote-aadj-pc)

### Taskbar configuration

Enterprise administrators can add and remove pinned apps from the taskbar. Users can pin apps, unpin apps, and change the order of pinned apps on the taskbar after the enterprise configuration is applied. [Learn how to configure the taskbar.](/windows/configuration/windows-10-start-layout-options-and-policies)

### Mobile device management and configuration service providers (CSPs)

Numerous settings have been added to the Windows 10 CSPs to expand MDM capabilities for managing devices. To learn more about the specific changes in MDM policies for this version of Windows 10, see [What's new in MDM enrollment and management](/windows/client-management/mdm/new-in-windows-mdm-enrollment-management).

### Shared PC mode

This version of Windows 10, introduces shared PC mode, which optimizes Windows 10 for shared use scenarios, such as touchdown spaces in an enterprise and temporary customer use in retail. You can apply shared PC mode to Windows 10 Pro, Education, and Enterprise. [Learn how to set up a shared or guest PC.](/windows/configuration/set-up-shared-or-guest-pc)

### Application Virtualization (App-V) for Windows 10

Application Virtualization (App-V) enables organizations to deliver Win32 applications to users as virtual applications. Virtual applications are installed on centrally managed servers and delivered to users as a service - in real time and on as as-needed basis. Users launch virtual applications from familiar access points, including the Microsoft Store, and interact with them as if they were installed locally.

With the release of this version of Windows 10, App-V is included with the Windows 10 for Enterprise edition. If you're new to Windows 10 and App-V or if you're upgrading from a previous version of App-V, you'll need to download, activate, and install server- and client-side components to start delivering virtual applications to users.

[Learn how to deliver virtual applications with App-V.](/microsoft-desktop-optimization-pack/app-v/appv-getting-started)

### User Experience Virtualization (UE-V) for Windows 10

Many users customize their settings for Windows and for specific applications. Customizable Windows settings include Microsoft Store appearance, language, background picture, font size, and accent colors. Customizable application settings include language, appearance, behavior, and user interface options.

With User Experience Virtualization (UE-V), you can capture user-customized Windows and application settings and store them on a centrally managed network file share. When users sign in, their personalized settings are applied to their work session, regardless of which device or virtual desktop infrastructure (VDI) sessions they sign in to.

With the release of this version of Windows 10, UE-V is included with the Windows 10 for Enterprise edition. If you're new to Windows 10 and UE-V or upgrading from a previous version of UE-V, you'll need to download, activate, and install server- and client-side components to start synchronizing user-customized settings across devices.

[Learn how to synchronize user-customized settings with UE-V.](/microsoft-desktop-optimization-pack/ue-v/uev-for-windows)

## Microsoft Edge

The new chromium-based Microsoft Edge isn't included in the LTSC release of Windows 10.  However, you can download and install it separately. For more information, see [Download and configure Microsoft Edge for Business](https://www.microsoft.com/edge/business/download).

## See Also

[Windows 10 Enterprise LTSC](overview.md): A description of the LTSC servicing channel with links to information about each release.
