---
title: What's new in Windows 10 Enterprise 2016 LTSC
ms.reviewer: 
manager: laurawi
ms.author: greglin
description: New and updated IT Pro content about new features in Windows 10 Enterprise 2016 LTSC (also known as Windows 10 Enterprise 2016 LTSB).
keywords: ["What's new in Windows 10", "Windows 10", "Windows 10 Enterprise 2016 LTSC"]
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
audience: itproauthor: greg-lindsay
ms.localizationpriority: low
ms.topic: article
---

# What's new in Windows 10 Enterprise 2016 LTSC

**Applies to**
-   Windows 10 Enterprise 2016 LTSC

This article lists new and updated features and content that are of interest to IT Pros for Windows 10 Enterprise 2016 LTSC (LTSB), compared to Windows 10 Enterprise 2015 LTSC (LTSB). For a brief description of the LTSC servicing channel, see [Windows 10 Enterprise LTSC](index.md).

>[!NOTE]
>Features in Windows 10 Enterprise 2016 LTSC are equivalent to Windows 10, version 1607.

## Deployment

### Windows Imaging and Configuration Designer (ICD)

In previous versions of the Windows 10 Assessment and Deployment Kit (ADK), you had to install additional features for Windows ICD to run. Starting in this version of Windows 10, you can install just the configuration designer component independent of the rest of the imaging components. [Install the ADK.](https://developer.microsoft.com/en-us/windows/hardware/windows-assessment-deployment-kit)

Windows ICD now includes simplified workflows for creating provisioning packages:

- [Simple provisioning to set up common settings for Active Directory-joined devices](/windows/configuration/provisioning-packages/provision-pcs-for-initial-deployment)
- [Advanced provisioning to deploy certificates and apps](/windows/configuration/provisioning-packages/provision-pcs-with-apps-and-certificates)
- [School provisioning to set up classroom devices for Active Directory](https://technet.microsoft.com/edu/windows/set-up-students-pcs-to-join-domain)

[Learn more about using provisioning packages in Windows 10.](/windows/configuration/provisioning-packages/provisioning-packages)

### Windows Upgrade Readiness

>[!IMPORTANT]
>Upgrade Readiness will not allow you to assess an upgrade to an LTSC release (LTSC builds are not available as target versions). However, you can enroll devices running LTSC to plan for an upgrade to a semi-annual channel release.

Microsoft developed Upgrade Readiness in response to demand from enterprise customers looking for additional direction and details about upgrading to Windows 10. Upgrade Readiness was built taking into account multiple channels of customer feedback, testing, and Microsoft’s experience upgrading millions of devices to Windows 10. 

With Windows diagnostic data enabled, Upgrade Readiness collects system, application, and driver data for analysis. We then identify compatibility issues that can block an upgrade and suggest fixes when they are known to Microsoft.

Use Upgrade Readiness to get:

- A visual workflow that guides you from pilot to production
- Detailed computer and application inventory
- Powerful computer level search and drill-downs
- Guidance and insights into application and driver compatibility issues, with suggested fixes
- Data driven application rationalization tools
- Application usage information, allowing targeted validation; workflow to track validation progress and decisions
- Data export to commonly used software deployment tools

The Upgrade Readiness workflow steps you through the discovery and rationalization process until you have a list of computers that are upgrade-ready.

[Learn more about planning and managing Windows upgrades with Windows Upgrade Readiness.](/windows/deployment/upgrade/manage-windows-upgrades-with-upgrade-readiness)

## Security

### Credential Guard and Device Guard

Isolated User Mode is now included with Hyper-V so you don't have to install it separately.

### Windows Hello for Business

When Windows 10 first shipped, it included Microsoft Passport and Windows Hello, which worked together to provide multi-factor authentication. To simplify deployment and improve supportability, Microsoft has combined these technologies into a single solution under the Windows Hello name in this version of Windows 10. Customers who have already deployed Microsoft Passport for Work will not experience any change in functionality. Customers who have yet to evaluate Windows Hello will find it easier to deploy due to simplified policies, documentation, and semantics.

Additional changes for Windows Hello in Windows 10 Enterprise 2016 LTSC:

- Personal (Microsoft account) and corporate (Active Directory or Azure AD) accounts use a single container for keys.
- Group Policy settings for managing Windows Hello for Business are now available for both **User Configuration** and **Computer Configuration**.
- Beginning in this version of Windows 10, Windows Hello as a convenience PIN is disabled by default on all domain-joined computers. To enable a convenience PIN, enable the Group Policy setting **Turn on convenience PIN sign-in**. 
<!--- Users can use Windows Phone with Windows Hello to sign in to a PC, connect to VPN, and sign in to Office 365 in a browser.-->

[Learn more about Windows Hello for Business.](/windows/access-protection/hello-for-business/hello-identity-verification)

### Bitlocker

#### New Bitlocker features

- **XTS-AES encryption algorithm**. BitLocker now supports the XTS-AES encryption algorithm. XTS-AES provides additional protection from a class of attacks on encryption that rely on manipulating cipher text to cause predictable changes in plain text. BitLocker supports both 128-bit and 256-bit XTS-AES keys.
  It provides the following benefits:
  - The algorithm is FIPS-compliant.
  - Easy to administer. You can use the BitLocker Wizard, manage-bde, Group Policy, MDM policy, Windows PowerShell, or WMI to manage it on devices in your organization.
    >**Note:**  Drives encrypted with XTS-AES will not be accessible on older version of Windows. This is only recommended for fixed and operating system drives. Removable drives should continue to use the AES-CBC 128-bit or AES-CBC 256-bit algorithms.

### Security auditing

#### New Security auditing features

-   The [WindowsSecurityAuditing](https://go.microsoft.com/fwlink/p/?LinkId=690517) and [Reporting](https://go.microsoft.com/fwlink/p/?LinkId=690525) configuration service providers allow you to add security audit policies to mobile devices.

### Trusted Platform Module

#### New TPM features

-   Key Storage Providers (KSPs) and srvcrypt support elliptical curve cryptography (ECC).

### Windows Information Protection (WIP), formerly known as enterprise data protection (EDP)

With the increase of employee-owned devices in the enterprise, there’s also an increasing risk of accidental data leak through apps and services, like email, social media, and the public cloud, which are outside of the enterprise’s control. For example, when an employee sends the latest engineering pictures from their personal email account, copies and pastes product info into a tweet, or saves an in-progress sales report to their public cloud storage.

Windows Information Protection (WIP) helps to protect against this potential data leakage without otherwise interfering with the employee experience. WIP also helps to protect enterprise apps and data against accidental data leak on enterprise-owned devices and personal devices that employees bring to work without requiring changes to your environment or other apps.

- [Create a Windows Information Protection (WIP) policy](https://technet.microsoft.com/itpro/windows/keep-secure/overview-create-wip-policy)
- [General guidance and best practices for Windows Information Protection (WIP)](https://technet.microsoft.com/itpro/windows/keep-secure/guidance-and-best-practices-wip)

[Learn more about Windows Information Protection (WIP)](https://technet.microsoft.com/itpro/windows/keep-secure/protect-enterprise-data-using-wip)

### Windows Defender

Several new features and management options have been added to Windows Defender in this version of Windows 10.

- [Windows Defender Offline in Windows 10](/windows/threat-protection/windows-defender-antivirus/windows-defender-offline) can be run directly from within Windows, without having to create bootable media.
- [Use PowerShell cmdlets for Windows Defender](/windows/threat-protection/windows-defender-antivirus/use-powershell-cmdlets-windows-defender-antivirus) to configure options and run scans.
- [Enable the Block at First Sight feature in Windows 10](/windows/threat-protection/windows-defender-antivirus/configure-block-at-first-sight-windows-defender-antivirus) to leverage the Windows Defender cloud for near-instant protection against new malware.
- [Configure enhanced notifications for Windows Defender in Windows 10](/windows/threat-protection/windows-defender-antivirus/configure-notifications-windows-defender-antivirus) to see more information about threat detections and removal.
- [Run a Windows Defender scan from the command line](/windows/threat-protection/windows-defender-antivirus/command-line-arguments-windows-defender-antivirus).
- [Detect and block Potentially Unwanted Applications with Windows Defender](/windows/threat-protection/windows-defender-antivirus/detect-block-potentially-unwanted-apps-windows-defender-antivirus) during download and install times.

### Windows Defender Advanced Threat Protection (ATP)

With the growing threat from more sophisticated targeted attacks, a new security solution is imperative in securing an increasingly complex network ecosystem. Windows Defender Advanced Threat Protection (Windows Defender ATP) is a security service, built into Windows 10 that enables enterprise customers detect, investigate, and respond to advanced threats on their networks.

[Learn more about Windows Defender Advanced Threat Protection (ATP)](/windows/threat-protection/windows-defender-atp/windows-defender-advanced-threat-protection).

### VPN security

- The VPN client can integrate with the Conditional Access Framework, a cloud-based policy engine built into Azure Active Directory, to provide a device compliance option for remote clients.
- The VPN client can integrate with Windows Information Protection (WIP) policy to provide additional security. [Learn more about Windows Information Protection](/windows/threat-protection/windows-information-protection/protect-enterprise-data-using-wip), previously known as Enterprise Data Protection.
- New VPNv2 configuration service provider (CSP) adds configuration settings. For details, see [What's new in MDM enrollment and management](https://msdn.microsoft.com/library/windows/hardware/mt299056%28v=vs.85%29.aspx#whatsnew_1607)
- Microsoft Intune: *VPN Profile (Windows 10 Desktop and Mobile and later)* policy template includes support for native VPN plug-ins.

## Management

### Use Remote Desktop Connection for PCs joined to Azure Active Directory

From its release, Windows 10 has supported remote connections to PCs that are joined to Active Directory. Starting in this version of Windows 10, you can also connect to a remote PC that is joined to Azure Active Directory (Azure AD). [Learn about the requirements and supported configurations.](/windows/client-management/connect-to-remote-aadj-pc)

### Taskbar configuration

Enterprise administrators can add and remove pinned apps from the taskbar. Users can pin apps, unpin apps, and change the order of pinned apps on the taskbar after the enterprise configuration is applied. [Learn how to configure the taskbar.](/windows/configuration/windows-10-start-layout-options-and-policies)

### Mobile device management and configuration service providers (CSPs)

Numerous settings have been added to the Windows 10 CSPs to expand MDM capabilities for managing devices. To learn more about the specific changes in MDM policies for this version of Windows 10, see [What's new in MDM enrollment and management](https://msdn.microsoft.com/library/windows/hardware/mt299056%28v=vs.85%29.aspx#whatsnew_1607).

### Shared PC mode

This version of Windows 10, introduces shared PC mode, which optimizes Windows 10 for shared use scenarios, such as touchdown spaces in an enterprise and temporary customer use in retail. You can apply shared PC mode to Windows 10 Pro, Education, and Enterprise. [Learn how to set up a shared or guest PC.](/windows/configuration/set-up-shared-or-guest-pc)

### Application Virtualization (App-V) for Windows 10

Application Virtualization (App-V) enables organizations to deliver Win32 applications to users as virtual applications. Virtual applications are installed on centrally managed servers and delivered to users as a service – in real time and on as as-needed basis. Users launch virtual applications from familiar access points, including the Microsoft Store, and interact with them as if they were installed locally.

With the release of this version of Windows 10, App-V is included with the Windows 10 for Enterprise edition. If you are new to Windows 10 and App-V or if you're upgrading from a previous version of App-V, you’ll need to download, activate, and install server- and client-side components to start delivering virtual applications to users. 

[Learn how to deliver virtual applications with App-V.](/windows/application-management/app-v/appv-getting-started)

### User Experience Virtualization (UE-V) for Windows 10

Many users customize their settings for Windows and for specific applications. Customizable Windows settings include Microsoft Store appearance, language, background picture, font size, and accent colors. Customizable application settings include language, appearance, behavior, and user interface options. 

With User Experience Virtualization (UE-V), you can capture user-customized Windows and application settings and store them on a centrally managed network file share. When users log on, their personalized settings are applied to their work session, regardless of which device or virtual desktop infrastructure (VDI) sessions they log on to.

With the release of this version of Windows 10, UE-V is included with the Windows 10 for Enterprise edition. If you are new to Windows 10 and UE-V or upgrading from a previous version of UE-V, you’ll need to download, activate, and install server- and client-side components to start synchronizing user-customized settings across devices. 

[Learn how to synchronize user-customized settings with UE-V.](/windows/configuration/ue-v/uev-for-windows)

## See Also

[Windows 10 Enterprise LTSC](index.md): A description of the LTSC servicing channel with links to information about each release.

