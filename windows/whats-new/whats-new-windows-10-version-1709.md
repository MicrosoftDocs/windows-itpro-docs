---
title: What's new in Windows 10, version 1709
description: New and updated IT Pro content about new features in Windows 10, version 1709 (also known as the Fall Creators Update).
keywords: ["What's new in Windows 10", "Windows 10", "Fall Creators Update"]
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.reviewer: 
author: greg-lindsay
manager: laurawi
ms.author: greglin
ms.localizationpriority: high
ms.topic: article
---

# What's new in Windows 10, version 1709 IT Pro content

**Applies to**
-   Windows 10, version 1709

Below is a list of some of the new and updated content that discusses IT Pro features in Windows 10, version 1709, also known as the Fall Creators Update. Windows 10, version 1709 also contains all features and fixes included in previous cumulative updates to Windows 10, version 1703.

A brief description of new or updated features in this version of Windows 10 is provided, with links to content with more detailed information. The following 3-minute video summarizes these features.

&nbsp;

> [!video https://www.microsoft.com/videoplayer/embed/43942201-bec9-4f8b-8ba7-2d9bfafa8bba?autoplay=false]


## Deployment

### Windows Autopilot

Windows Autopilot is a zero touch experience for deploying Windows 10 devices. Configuration profiles can now be applied at the hardware vendor with devices being shipped directly to employees. For more information, see [Overview of Windows Autopilot](https://docs.microsoft.com/windows/deployment/windows-10-auto-pilot).

You can also apply an Autopilot deployment profile to your devices using Microsoft Store for Business. When people in your organization run the out-of-box experience on the device, the profile configures Windows based on the Autopilot deployment profile you applied to the device. For more information, see [Manage Windows device deployment with Windows Autopilot Deployment](https://docs.microsoft.com/microsoft-store/add-profile-to-devices).

### Windows 10 Subscription Activation

Windows 10 Subscription Activation lets you deploy Windows 10 Enterprise in your organization with no keys and no reboots using a list of subscribed users. When a subscribed user signs in on their Windows 10 Pro device, features that are Enterprise-only are automatically enabled. For more information, see [Windows 10 Subscription Activation](https://docs.microsoft.com/windows/deployment/windows-10-enterprise-subscription-activation).

### Autopilot Reset	

IT Pros can use Autopilot Reset to quickly remove personal files, apps, and settings. A custom login screen is available from the lock screen that enables you to apply original settings and management enrollment (Azure Active Directory and device management) so that devices are returned to a fully configured, known, IT-approved state and ready to use. For more information, see [Reset devices with Autopilot Reset](https://docs.microsoft.com/education/windows/autopilot-reset).


## Update

### Windows Update for Business (WUfB)

WUfB now has additional controls available to manage Windows Insider Program enrollment through policies. For more information, see [Manage Windows Insider Program flights](https://docs.microsoft.com/windows/deployment/update/waas-configure-wufb#configure-when-devices-receive-windows-insider-preview-builds).

### Windows Insider Program for Business

You can now register your Azure AD domains to the Windows Insider Program. For more information, see [Windows Insider Program for Business](https://docs.microsoft.com/windows/deployment/update/waas-windows-insider-for-business#getting-started-with-windows-insider-program-for-business).


## Administration

### Mobile Device Management (MDM)

MDM has been expanded to include domain joined devices with Azure Active Directory registration. Group Policy can be used with Active Directory joined devices to trigger auto-enrollment to MDM. For more information, see [Enroll a Windows 10 device automatically using Group Policy](https://docs.microsoft.com/windows/client-management/mdm/enroll-a-windows-10-device-automatically-using-group-policy).

Multiple new configuration items are also added. For more information, see [What's new in MDM enrollment and management](https://docs.microsoft.com/windows/client-management/mdm/new-in-windows-mdm-enrollment-management#whatsnew1709).


## Application Management

### Mixed Reality Apps

This version of Windows 10 introduces [Windows Mixed Reality](https://blogs.windows.com/windowsexperience/2017/10/03/the-era-of-windows-mixed-reality-begins-october-17/). Organizations that use WSUS must take action to enable Windows Mixed Reality. You can also prohibit use of Windows Mixed Reality by blocking installation of the Mixed Reality Portal. For more information, see [Enable or block Windows Mixed Reality apps in the enterprise](https://docs.microsoft.com/windows/application-management/manage-windows-mixed-reality).


## Configuration

### Kiosk Configuration

The AssignedAccess CSP has been expanded to make it easy for administrators to create kiosks that run more than one app. You can configure multi-app kiosks using a provisioning package. For more information, see [Create a Windows 10 kiosk that runs multiple apps](https://docs.microsoft.com/windows/configuration/lock-down-windows-10-to-specific-apps).


## Security

>[!NOTE]
>Windows security features have been rebranded as Windows Defender security features, including Windows Defender Device Guard, Windows Defender Credential Guard, and Windows Defender Firewall.

**Windows security baselines** have been updated for Windows 10. A [security baseline](https://docs.microsoft.com/windows/device-security/windows-security-baselines) is a group of Microsoft-recommended configuration settings and explains their security impact. For more information, and to download the Policy Analyzer tool, see [Microsoft Security Compliance Toolkit 1.0](https://docs.microsoft.com/windows/device-security/security-compliance-toolkit-10).

### Windows Defender ATP 

Windows Defender ATP has been expanded with powerful analytics, security stack integration, and centralized management for better detection, prevention, investigation, response, and management. For more information, see [View the Windows Defender Advanced Threat Protection Security analytics dashboard](https://docs.microsoft.com/windows/threat-protection/windows-defender-atp/security-analytics-dashboard-windows-defender-advanced-threat-protection).

### Windows Defender Application Guard

Windows Defender Application Guard hardens a favorite attacker entry-point by isolating malware and other threats away from your data, apps, and infrastructure. For more information, see [Windows Defender Application Guard overview](https://docs.microsoft.com/windows/threat-protection/windows-defender-application-guard/wd-app-guard-overview).

### Window Defender Exploit Guard

Window Defender Exploit Guard provides intrusion prevention capabilities to reduce the attack and exploit surface of applications. Exploit Guard has many of the threat mitigations that were available in Enhanced Mitigation Experience Toolkit (EMET) toolkit, a deprecated security download. These mitigations are now built into Windows and configurable with Exploit Guard. These mitigations include [Exploit protection](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/exploit-protection), [Attack surface reduction protection](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/attack-surface-reduction), [Controlled folder access](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/controlled-folder-access), and [Network protection](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/network-protection).

### Windows Defender Device Guard

Configurable code integrity is being rebranded as Windows Defender Application Control. This is to help distinguish it as a standalone feature to control execution of applications. For more information about Device Guard, see Windows [Defender Device Guard deployment guide](https://docs.microsoft.com/windows/device-security/device-guard/device-guard-deployment-guide).

### Windows Information Protection

Windows Information Protection is now designed to work with Microsoft Office and Azure Information Protection. For more information, see [Deploying and managing Windows Information Protection (WIP) with Azure Information Protection](https://myignite.microsoft.com/sessions/53660?source=sessions).

### Windows Hello

New features in Windows Hello  enable a better device lock experience, using multifactor unlock with new location and user proximity signals. Using Bluetooth signals, you can configure your Windows 10 device to automatically lock when you walk away from it, or to prevent others from accessing the device when  you are not present. More details about this feature will be available soon. For general information, see [Windows Hello for Business](https://docs.microsoft.com/windows/access-protection/hello-for-business/hello-identity-verification).

### BitLocker

The minimum PIN length is being changed from 6 to 4, with a default of 6. For more information, see [BitLocker Group Policy settings](https://docs.microsoft.com/windows/device-security/bitlocker/bitlocker-group-policy-settings#bkmk-unlockpol3).

### Windows security baselines

Microsoft has released new [Windows security baselines](https://docs.microsoft.com/windows/device-security/windows-security-baselines) for Windows Server and Windows 10. A security baseline is a group of Microsoft-recommended configuration settings with an explanation of their security impact. For more information, and to download the Policy Analyzer tool, see [Microsoft Security Compliance Toolkit 1.0](https://docs.microsoft.com/windows/device-security/security-compliance-toolkit-10).

### SMBLoris vulnerability
An issue, known as “SMBLoris�?, which could result in denial of service, has been addressed.


## Windows Analytics

### Upgrade Readiness

Upgrade Readiness provides insights into application and driver compatibility issues. New capabilities include better app coverage, post-upgrade health reports, and enhanced report filtering capabilities. For more information, see [Manage Windows upgrades with Upgrade Readiness](https://docs.microsoft.com/windows/deployment/upgrade/manage-windows-upgrades-with-upgrade-readiness).

### Update Compliance

New capabilities in Update Compliance let you monitor Windows Defender protection status, compare compliance with industry peers, and optimize bandwidth for deploying updates. For more information, see [Monitor Windows Updates and Windows Defender Antivirus with Update Compliance](https://docs.microsoft.com/windows/deployment/update/update-compliance-monitor).

### Device Health

Maintaining devices is made easier with Device Health, a new, premium analytic tool that identifies devices and drivers that crash frequently and might need to be rebuilt or replaced. For more information, see [Monitor the health of devices with Device Health](https://docs.microsoft.com/windows/deployment/update/device-health-monitor).


## Networking

### Network stack

Several network stack enhancements are available in this release. Some of these features were also available in Windows 10, version 1703. For more information, see [Core Network Stack Features in the Creators Update for Windows 10](https://blogs.technet.microsoft.com/networking/2017/07/13/core-network-stack-features-in-the-creators-update-for-windows-10/).


## See Also

[Windows 10 Features](https://www.microsoft.com/windows/features): Review general information about Windows 10 features.<br>
[What's New in Windows 10](https://docs.microsoft.com/windows/whats-new/): See what’s new in other versions of Windows 10.<br>
[What's new in Windows 10, version 1709](https://docs.microsoft.com/windows-hardware/get-started/what-s-new-in-windows): See what’s new in Windows 10 hardware.<br>
[Windows 10 Fall Creators Update Next Generation Security](https://www.youtube.com/watch?v=JDGMNFwyUg8): YouTube video about Windows Defender ATP in Windows 10, version 1709.
