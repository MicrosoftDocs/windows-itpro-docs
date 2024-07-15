---
title: Windows Enterprise E3 in CSP
description: Describes Windows Enterprise E3, an offering that delivers, by subscription, the features of Windows Enterprise edition.
ms.service: windows-client
ms.localizationpriority: medium
ms.date: 02/13/2024
author: frankroj
ms.author: frankroj
manager: aaroncz
ms.topic: article
ms.subservice: itpro-deploy
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Windows Enterprise E3 in CSP

Windows Enterprise E3 in CSP delivers, by subscription, exclusive features reserved for Windows Enterprise editions. This offering is available through the Cloud Solution Provider (CSP) channel via the Partner Center as an online service. Windows Enterprise E3 in CSP provides a flexible, per-user subscription for small and medium-sized organizations (from one to hundreds of users). To take advantage of this offering, the following prerequisites must be met:

- A currently supported version of Windows, installed and activated, on the devices to be upgraded.
- Microsoft Entra available for identity management.

Moving from Windows Pro to Windows Enterprise is more easy than ever before with no keys and no reboots. After a user enters the Microsoft Entra credentials associated with a Windows Enterprise E3 license, the operating system turns from Windows Pro to Windows Enterprise, and all the appropriate Enterprise features are unlocked. When a subscription license expires or is transferred to another user, the Enterprise device seamlessly steps back down to Windows Pro.

Previously, only organizations with a Microsoft Volume Licensing Agreement could deploy Windows Enterprise to their users. Now, with Windows Enterprise E3 in CSP, small- and medium-sized organizations can more easily take advantage of Enterprise edition features.

When Windows Enterprise E3 is purchased via a partner, the following benefits are included:

- **Windows Enterprise edition**. Devices currently running Windows Pro can get Windows Enterprise Current Branch (CB) or Current Branch for Business (CBB). This benefit doesn't include Long Term Service Branch (LTSB).
- **Support from one to hundreds of users**. Although the Windows Enterprise E3 in CSP program doesn't have a limitation on the number of licenses an organization can have, the program is designed for small- and medium-sized organizations.
- **Deploy on up to five devices**. For each user covered by the license, Windows Enterprise edition can be deployed on up to five devices.
- **Roll back to Windows Pro at any time**. When a user's subscription expires or is transferred to another user, the Windows Enterprise device reverts seamlessly to Windows Pro edition (after a grace period of up to 90 days).
- **Monthly, per-user pricing model**. This model makes Windows Enterprise E3 affordable for organizations.
- **Move licenses between users**. Licenses can be quickly and easily reallocated from one user to another user, allowing optimization of the licensing investment against changing needs.

How does the Windows Enterprise E3 in CSP program compare with Microsoft Volume Licensing Agreements and Software Assurance?

- [Microsoft Volume Licensing](https://www.microsoft.com/licensing/default.aspx) programs are broader in scope, providing organizations with access to licensing for all Microsoft products.
- [Software Assurance](https://www.microsoft.com/Licensing/licensing-programs/software-assurance-default.aspx) provides organizations with the following categories of benefits:

  - **Deployment and management**. These benefits include planning services:
    - Microsoft Desktop Optimization (MDOP).
    - Windows Virtual Desktop Access Rights.
    - Windows Roaming Use Rights.
    - Other benefits.
  - **Training**. These benefits include training vouchers, online e-learning, and a home use program.
  - **Support**. These benefits include:
    - 24x7 problem resolution support.
    - Backup capabilities for disaster recovery.
    - System Center Global Service Monitor.
    - A passive secondary instance of SQL Server.
  - **Specialized**. These benefits include step-up licensing availability, which enables migration of software from an earlier edition to a higher-level edition. It also spreads license and Software Assurance payments across three equal, annual sums.

    In addition, in Windows Enterprise E3 in CSP, a partner can manage the licenses for an organization. With Software Assurance, the organization has to manager their own licenses.

In summary, the Windows Enterprise E3 in CSP program is an upgrade offering that provides small- and medium-sized organizations easier, more flexible access to the benefits of Windows Enterprise edition. Microsoft Volume Licensing programs and Software Assurance on the other hand are broader in scope and provide benefits beyond access to the Enterprise edition of Windows.

## Compare Windows Pro and Enterprise editions

Windows Enterprise edition has many features that are unavailable in Windows Pro. Table 1 lists some of the Windows Enterprise features not found in Windows Pro. Many of these features are security-related, whereas others enable finer-grained device management.

### Table 1. Windows Enterprise features not found in Windows Pro

|Feature|Description|
|--- |--- |
|Credential Guard|Credential Guard uses virtualization-based security to help protect security secrets so that only privileged system software can access them. Examples of security secrets that can be protected include NTLM password hashes and Kerberos Ticket Granting Tickets. This protection helps prevent Pass-the-Hash or Pass-the-Ticket attacks.<br><br>Credential Guard has the following features:<li>**Hardware-level security** - Credential Guard uses hardware platform security features (such as Secure Boot and virtualization) to help protect derived domain credentials and other secrets.<li>**Virtualization-based security** - Windows services that access derived domain credentials and other secrets run in a virtualized, protected environment that is isolated.<li>**Improved protection against persistent threats** - Credential Guard works with other technologies (for example, Device Guard) to help provide further protection against attacks, no matter how persistent.<li>**Improved manageability** -  Credential Guard can be managed through Group Policy, Windows Management Instrumentation (WMI), or Windows PowerShell.<br><br>For more information, see [Protect derived domain credentials with Credential Guard](/windows/security/identity-protection/credential-guard/credential-guard).<br><br>*Credential Guard requires <ul><li>UEFI 2.3.1 or greater with Trusted Boot</li><li>Virtualization Extensions such as Intel VT-x, AMD-V, and SLAT must be enabled</li><li>x64 version of Windows</li><li>IOMMU, such as Intel VT-d, AMD-Vi</li><li>BIOS Lockdown</li><li>TPM 2.0 recommended for device health attestation (uses software if TPM 2.0 not present)*</li></ul>|
|Device Guard|This feature is a combination of hardware and software security features that allows only trusted applications to run on a device. Even if an attacker manages to get control of the Windows kernel, they're much less likely to run executable code. Device Guard can use virtualization-based security (VBS) in Windows Enterprise edition to isolate the Code Integrity service from the Windows kernel itself. With VBS, even if malware gains access to the kernel, the effects can be severely limited, because the hypervisor can prevent the malware from executing code.<br><br>Device Guard protects in the following ways:<li>Helps protect against malware<li>Helps protect the Windows system core from vulnerability and zero-day exploits<li>Allows only trusted apps to run<br><br>For more information, see [Introduction to Device Guard](/windows/security/application-security/application-control/introduction-to-device-guard-virtualization-based-security-and-windows-defender-application-control).|
|AppLocker management|This feature helps IT pros determine which applications and files users can run on a device. The applications and files that can be managed include executable files, scripts, Windows Installer files, dynamic-link libraries (DLLs), packaged apps, and packaged app installers.<br><br>For more information, see [AppLocker](/windows/security/threat-protection/windows-defender-application-control/applocker/applocker-overview).|
|Application Virtualization (App-V)|This feature makes applications available to end users without installing the applications directly on users' devices. App-V transforms applications into centrally managed services that are never installed and don't conflict with other applications. This feature also helps ensure that applications are kept current with the latest security updates.<br><br>For more information, see [Getting started with App-V for Windows client](/microsoft-desktop-optimization-pack/app-v/appv-for-windows).|
|User Experience Virtualization (UE-V)|With this feature, user-customized Windows and application settings can be captured and stored on a centrally managed network file share.<br><br>When users sign in, their personalized settings are applied to their work session, regardless of which device or virtual desktop infrastructure (VDI) sessions they sign into.<br><br>UE-V provides the following features:<li>Specify which application and Windows settings synchronize across user devices<li>Deliver the settings anytime and anywhere users work throughout the enterprise<li>Create custom templates for line-of-business applications<li>Recover settings after hardware replacement or upgrade, or after reimaging a virtual machine to its initial state<br><br>For more information, see [User Experience Virtualization (UE-V) overview](/microsoft-desktop-optimization-pack/ue-v/uev-for-windows).|
|Managed User Experience|This feature helps customize and lock down a Windows device's user interface to restrict it to a specific task. For example, a device can be configured for a controlled scenario such as a kiosk or classroom device. The user experience would be automatically reset once a user signs off. Access to services such as the Windows Store can also be restricted. For Windows 10, Start layout options can also be managed, such as:<li>Removing and preventing access to the Shut Down, Restart, Sleep, and Hibernate commands<li>Removing Log Off (the User tile) from the Start menu<li>Removing frequent programs from the Start menu<li>Removing the All Programs list from the Start menu<li>Preventing users from customizing their Start screen<li>Forcing Start menu to be either full-screen size or menu size<li>Preventing changes to Taskbar and Start menu settings|

## Deployment of Windows Enterprise E3 licenses

See [Deploy Windows Enterprise licenses](deploy-enterprise-licenses.md).

## Deploy Windows Enterprise features

Now that Windows Enterprise edition is running on devices, how are Enterprise edition features and capabilities taken advantage of? What are the next steps that need to be taken for each of the features discussed in [Table 1](#compare-windows-pro-and-enterprise-editions)?

The following sections provide with the high-level tasks that need to be performed in an environment to help users take advantage of the Windows Enterprise edition features.

### Credential Guard

> [!NOTE]
>
> Requires UEFI 2.3.1 or greater with Trusted Boot; Virtualization Extensions such as Intel VT-x, AMD-V, and SLAT must be enabled; x64 version of Windows; IOMMU, such as Intel VT-d, AMD-Vi; BIOS Lockdown; TPM 2.0 recommended for device health attestation (will use software if TPM 2.0 not present).

Credential Guard can be implemented on Windows Enterprise devices by turning on Credential Guard on these devices. Credential Guard uses Windows virtualization-based (Hyper-V) security features that must be enabled on each device before Credential Guard can be turned on. Credential Guard can be turned on by using one of the following methods:

- **Automated**. Credential Guard can be turned on for one or more devices by using Group Policy. The Group Policy settings automatically add the virtualization-based security features and configure the Credential Guard registry settings on managed devices.

- **Manual**. Credential Guard can be manually turned on by taking one of the following actions:

  - Add the virtualization-based security features by using Programs and Features or Deployment Image Servicing and Management (DISM).

  - Configure Credential Guard registry settings by using the Registry Editor or the [Device Guard and Credential Guard hardware readiness tool](https://www.microsoft.com/download/details.aspx?id=53337).

    These manual steps can be automated by using a management tool such as Microsoft Configuration Manager.

For more information about implementing Credential Guard, see the following resources:

- [Credential Guard overview](/windows/security/identity-protection/credential-guard/)
- [Security considerations for Original Equipment Manufacturers](/windows-hardware/design/device-experiences/oem-security-considerations)
- [Device Guard and Credential Guard hardware readiness tool](https://www.microsoft.com/download/details.aspx?id=53337)

### Device Guard

Now that the devices have Windows Enterprise, Device Guard can be implemented on the Windows Enterprise devices by performing the following steps:

1. **Optionally, create a signing certificate for code integrity policies**. As code integrity policies are deployed, catalog files or code integrity policies might need to be signed internally. To sign catalog files or code integrity policies internally, either a publicly issued code signing certificate (normally purchase) or an internal certificate authority (CA) is needed. If an internal CA is chosen, a code signing certificate needs to be created.

2. **Create code integrity policies from "golden" computers**. Departments or roles sometimes use distinctive or partly distinctive sets of hardware and software. In these instances, "golden" computers containing the software and hardware for these departments or roles can be set up. In this respect, creating and managing code integrity policies to align with the needs of roles or departments can be similar to managing corporate images. From each "golden" computer, a code integrity policy can be created and then decided how to manage that policy. Code integrity policies can be merged to create a broader policy or a primary policy, or each policy can be managed and deployed individually.

3. **Audit the code integrity policy and capture information about applications that are outside the policy**. Microsoft recommends using "audit mode" to carefully test each code integrity policy before enforcing it. With audit mode, no application is blocked. The policy just logs an event whenever an application outside the policy is started. Later, the policy can be expanded to allow these applications, as needed.

4. **Create a "catalog file" for unsigned line-of-business (LOB) applications**. Use the Package Inspector tool to create and sign a catalog file for the unsigned LOB applications. In later steps, the catalog file's signature can be merged into the code integrity policy so that the policy allows applications in the catalog.

5. **Capture needed policy information from the event log, and merge information into the existing policy as needed**. After a code integrity policy has been running for a time in audit mode, the event log will contain information about applications that are outside the policy. To expand the policy so that it allows for these applications, use Windows PowerShell commands to capture the needed policy information from the event log. Once the information is captured, merge that information into the existing policy. Code integrity policies can also be merged from other sources, which allow flexibility in creating the final code integrity policies.

6. **Deploy code integrity policies and catalog files**. After confirming that all the preceding steps are completed, catalog files can be deployed and the code integrity policies can be taken out of audit mode. Microsoft strongly recommends beginning this process with a test group of users. Testing provides a final quality-control validation before deploying the catalog files and code integrity policies more broadly.

7. **Enable desired hardware security features**. Hardware-based security features—also called virtualization-based security (VBS) features—strengthen the protections offered by code integrity policies.

For more information about implementing Device Guard, see:

- [Windows Defender Application Control and virtualization-based protection of code integrity](/windows/security/application-security/application-control/introduction-to-device-guard-virtualization-based-security-and-windows-defender-application-control)
- [Device Guard deployment guide](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control-deployment-guide)

### AppLocker management

AppLocker in Windows Enterprise can be managed by using Group Policy. Group Policy requires having AD DS and that the Windows Enterprise devices are joined to an AD DS domain. AppLocker rules can be created by using Group Policy. The AppLocker rules can then be targeted to the appropriate devices.

For more information about AppLocker management by using Group Policy, see [AppLocker deployment guide](/windows/security/threat-protection/windows-defender-application-control/applocker/applocker-policies-deployment-guide).

### App-V

App-V requires an App-V server infrastructure to support App-V clients. The primary App-V components that are required are:

- **App-V server**. The App-V server provides App-V management, virtualized app publishing, app streaming, and reporting services. Each of these services can be run on one server or can be run individually on multiple servers. For example, multiple streaming servers might exist. App-V clients contact App-V servers to determine which apps are published to the user or device, and then run the virtualized app from the server.

- **App-V sequencer**. The App-V sequencer is a typical client device that is used to sequence (capture) apps and prepare them for hosting from the App-V server. Apps are installed on the App-V sequencer, and the App-V sequencer software determines the files and registry settings that are changed during app installation. Then the sequencer captures these settings to create a virtualized app.

- **App-V client**. The App-V client must be enabled on any Windows Enterprise E3 client device that needs to run apps from the App-V server.

For more information about implementing the App-V server, App-V sequencer, and App-V client, see the following resources:

- [Getting started with App-V for Windows client](/microsoft-desktop-optimization-pack/app-v/appv-getting-started)
- [Deploying the App-V server](/microsoft-desktop-optimization-pack/app-v/appv-deploying-the-appv-server)
- [Deploying the App-V Sequencer and Configuring the Client](/microsoft-desktop-optimization-pack/app-v/appv-deploying-the-appv-sequencer-and-client)

### UE-V

UE-V requires server and client-side components that need to be downloaded, activated, and installed. These components include:

- **UE-V service**. The UE-V service (when enabled on devices) monitors registered applications and Windows for any settings changes, then synchronizes those settings between devices.

- **Settings packages**. Settings packages created by the UE-V service store application settings and Windows settings. Settings packages are built, locally stored, and copied to the settings storage location.

- **Settings storage location**. This location is a standard network share that users can access. The UE-V service verifies the location and creates a hidden system folder in which to store and retrieve user settings.

- **Settings location templates**. Settings location templates are XML files that UE-V uses to monitor and synchronize desktop application settings and Windows desktop settings between user computers. By default, some settings location templates are included in UE-V. Custom settings location templates can also be created, edited, or validated by using the UE-V template generator. Settings location templates aren't required for Windows applications.

- **Universal Windows applications list**. UE-V determines which Windows applications are enabled for settings synchronization using a managed list of applications. By default, this list includes most Windows applications.

For more information about deploying UE-V, see the following resources:

- [User Experience Virtualization (UE-V) overview](/microsoft-desktop-optimization-pack/ue-v/uev-for-windows)
- [Get Started with UE-V](/microsoft-desktop-optimization-pack/ue-v/uev-getting-started)
- [Prepare a UE-V Deployment](/microsoft-desktop-optimization-pack/ue-v/uev-prepare-for-deployment)

### Managed User Experience

The Managed User Experience feature is a set of Windows Enterprise edition features and corresponding settings that can be used to manage user experience. Table 2 describes the Managed User Experience settings (by category), which are only available in Windows Enterprise edition. The management methods used to configure each feature depend on the feature. Some features are configured by using Group Policy, while others are configured by using Windows PowerShell, Deployment Image Servicing and Management (DISM), or other command-line tools. For the Group Policy settings, AD DS is required with the Windows Enterprise devices joined to an AD DS domain.

#### Table 2. Managed User Experience features

| Feature          | Description     |
|------------------|-----------------|
| Start layout customization | A customized Start layout can be deployed to users in a domain. No reimaging is required, and the Start layout can be updated simply by overwriting the .xml file that contains the layout. The XML file enables customization of Start layouts for different departments or organizations, with minimal management overhead.<br>For more information on these settings, see [Customize Windows 10 Start and taskbar with Group Policy](/windows/configuration/customize-windows-10-start-screens-by-using-group-policy). |
| Unbranded boot | Windows elements that appear when Windows starts or resumes can be suppressed. The crash screen when Windows encounters an error from which it can't recover can also be suppressed.<br>For more information on these settings, see [Unbranded Boot](/windows-hardware/customize/enterprise/unbranded-boot). |
| Custom Logon | The Custom Logon feature can be used to suppress Windows UI elements that relate to the Welcome screen and shutdown screen. For example, all elements of the Welcome screen UI can be suppressed and a custom logon UI can be provided. The Blocked Shutdown Resolver (BSDR) screen can also be suppressed and applications can be automatically ended while the OS waits for applications to close before a shutdown.<br>For more information on these settings, see [Custom Logon](/windows-hardware/customize/enterprise/custom-logon). |
| Shell launcher | Enables Assigned Access to run only a classic Windows app via Shell Launcher to replace the shell.<br>For more information on these settings, see [Shell Launcher](/windows-hardware/customize/enterprise/shell-launcher). |
| Keyboard filter | Keyboard Filter can be used to suppress undesirable key presses or key combinations. Normally, users can use certain Windows key combinations like Ctrl+Alt+Delete or Ctrl+Shift+Tab to control a device by locking the screen or using Task Manager to close a running application. These keyboard actions aren't desirable on devices intended for a dedicated purpose.<br>For more information on these settings, see [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter). |
| Unified write filter | The Unified Write Filter (UWF) can be used on a device to help protect physical storage media, including most standard writable storage types supported by Windows, such as: <ul><li>Physical hard disks</li><li>Solid-state drives</li><li>Internal USB devices</li><li>External SATA devices</li></ui>. UWF can also be used to make read-only media appear to the OS as a writable volume.<br>For more information on these settings, see [Unified Write Filter](/windows-hardware/customize/enterprise/unified-write-filter). |

## Related articles

- [Windows Enterprise Subscription Activation](windows-subscription-activation.md).
- [Plan your Microsoft Entra hybrid join implementation](/entra/identity/devices/hybrid-join-plan).
- [Compare Windows editions](https://www.microsoft.com/windows/business/windows-10-pro-vs-windows-11-pro).
- [Windows for business](https://www.microsoft.com/windows/business).
