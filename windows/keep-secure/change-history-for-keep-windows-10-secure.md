---
title: Change history for Keep Windows 10 secure (Windows 10)
description: This topic lists new and updated topics in the Keep Windows 10 secure documentation for Windows 10 and Windows 10 Mobile.
ms.assetid: E50EC5E6-71AA-4FF1-8356-574CFDB8079B
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Change history for Keep Windows 10 secure
This topic lists new and updated topics in the [Keep Windows 10 secure](index.md) documentation for [Windows 10 and Windows 10 Mobile](../index.md).


## March 2017
|New or changed topic |Description |
|---------------------|------------|
|[Mandatory tasks and settings required to turn on Windows Information Protection (WIP)](mandatory-settings-for-wip.md) |Updated based on Windows 10, version 1703. |
|[Create a Windows Information Protection (WIP) policy using Microsoft Intune](create-wip-policy-using-intune.md) |Updated based on Windows 10, version 1703. |
|[Deploy your Windows Information Protection (WIP) policy using Microsoft Intune](deploy-wip-policy-using-intune.md) |Updated based on Windows 10, version 1703.
|[Limitations while using Windows Information Protection (WIP)](limitations-with-wip.md) |Added additional limitations for Windows 10, version 1703. |
|[Create and verify an Encrypting File System (EFS) Data Recovery Agent (DRA) certificate](create-and-verify-an-efs-dra-certificate.md)|Added content about recovering data from a cloud environment.|
|[Protect derived domain credentials with Credential Guard](credential-guard.md) |Updated to include additional security qualifications starting with Window 10, version 1703.|
|[Requirements and deployment planning guidelines for Device Guard](requirements-and-deployment-planning-guidelines-for-device-guard.md) |Updated to include additional security qualifications starting with Window 10, version 1703.|
|[Windows Defender SmartScreen overview](windows-defender-smartscreen-overview.md)|New |
|[Available Windows Defender SmartScreen Group Policy and mobile device management (MDM) settings](windows-defender-smartscreen-available-settings.md)|New |
|[Use Windows Defender Security Center to set Windows Defender SmartScreen for individual devices](windows-defender-smartscreen-set-individual-device.md)|New |


## February 2017

|New or changed topic |Description |
|---------------------|------------|
|[Overview of threat mitigations in Windows 10](overview-of-threat-mitigations-in-windows-10.md) | Reorganized from existing content, to provide a better overview of threat mitigations. Added information that maps the Enhanced Mitigation Experience Toolkit (EMET) to Windows 10 features. |


## January 2017
|New or changed topic |Description |
|---------------------|------------|
|[Determine the Enterprise Context of an app running in Windows Information Protection (WIP)](wip-app-enterprise-context.md) |New |
|[Limitations while using Windows Information Protection (WIP)](limitations-with-wip.md) |Updated to include info about USB drives and Azure RMS (Windows Insider Program only) and to add more info about Work Folders and Offline files. |
|[Recommended Enterprise Cloud Resources and Neutral Resources network settings with Windows Information Protection (WIP)](recommended-network-definitions-for-wip.md) |New |
|[Using Outlook Web Access with Windows Information Protection (WIP)](using-owa-with-wip.md) |New |
| Microsoft Passport guide | Content merged into [Windows Hello for Business](hello-identity-verification.md) topics |

## December 2016
|New or changed topic |Description |
|---------------------|------------|
|[Create WMI Filters for the GPO](create-wmi-filters-for-the-gpo.md) |Added filter examples for Windows 10 and Windows Server 2016. |



## November 2016
| New or changed topic | Description |
| --- | --- |
|[Protect your enterprise data using Windows Information Protection (WIP)](protect-enterprise-data-using-wip.md), [Create a Windows Information Protection (WIP) policy using Microsoft Intune](create-wip-policy-using-intune.md), and [Create and deploy a Windows Information Protection (WIP) policy using System Center Configuration Manager](create-wip-policy-using-sccm.md) |Added additional details about what happens when you turn off WIP. |
|[Create and deploy a VPN policy for Windows Information Protection (WIP) using Microsoft Intune](create-vpn-and-wip-policy-using-intune.md) |Changed WIPModeID to EDPModeID, to match the CSP. |



## October 2016

| New or changed topic | Description |
| --- | --- |
|[List of enlightened Microsoft apps for use with Windows Information Protection (WIP)](enlightened-microsoft-apps-and-wip.md) |Added Microsoft Remote Desktop information. |
|[Create and deploy a Windows Information Protection (WIP) policy using System Center Configuration Manager](create-wip-policy-using-sccm.md) and [Create a Windows Information Protection (WIP) policy using Microsoft Intune](create-wip-policy-using-intune.md) |Updated the text about where the optioanl icon overlay appears.|
|[Limitations while using Windows Information Protection (WIP)](limitations-with-wip.md) |Added content about using ActiveX controls.|
|[Unenlightened and enlightened app behavior while using Windows Information Protection (WIP)](app-behavior-with-wip.md) |New |
|[VPN technical guide](vpn-guide.md) | Multiple new topics, replacing previous **VPN profile options** topic |
|[Windows security baselines](windows-security-baselines.md) | Added Windows 10, version 1607 and Windows Server 2016 baseline |


## September 2016

| New or changed topic | Description |
| --- | --- |
|[Limitations while using Windows Information Protection (WIP)](limitations-with-wip.md) | New |
|[Create a Windows Information Protection (WIP) policy using Microsoft Intune](create-wip-policy-using-intune.md) |Updated the networking table to clarify details around Enterprise Cloud Resources and Enterprise Proxy Servers. |
|[Create and deploy a Windows Information Protection (WIP) policy using System Center Configuration Manager](create-wip-policy-using-sccm.md) |Updated the networking table to clarify details around Enterprise Cloud Resources and Enterprise Proxy Servers. |
| [Implement Windows Hello for Business in your organization](implement-microsoft-passport-in-your-organization.md) | Clarified how convenience PIN works in Windows 10, version 1607, on domain-joined PCs |
| [BitLocker: How to enable Network Unlock](bitlocker-how-to-enable-network-unlock.md) | Corrected certreq example and added a new Windows PowerShell example for creating a self-signed certificate |

## August 2016
|New or changed topic | Description |
|----------------------|-------------|
|[Override Process Mitigation Options to help enforce app-related security policies](override-mitigation-options-for-app-related-security-policies.md) |New |
|[Testing scenarios for Windows Information Protection (WIP)](testing-scenarios-for-wip.md) |Updated and added additional scenarios for testing |
|[Protect your enterprise data using Windows Information Protection (WIP)](protect-enterprise-data-using-wip.md) |Updated to include info from the original What's New and Overview topics |

## RELEASE: Windows 10, version 1607

The topics in this library have been updated for Windows 10, version 1607 (also known as the Anniversary Update). The following new topics have been added:

- [Enable phone sign-in to PC or VPN](enable-phone-signin-to-pc-and-vpn.md)
- [Protect Remote Desktop credentials with Remote Credential Guard](remote-credential-guard.md)
- [Windows Defender Offline in Windows 10](windows-defender-offline.md)
- [Use PowerShell cmdlets to configure and run Windows Defender](use-powershell-cmdlets-windows-defender-for-windows-10.md)
- [Enable the Block at First Sight feature in Windows 10](windows-defender-block-at-first-sight.md)
- [Configure enhanced notifications for Windows Defender in Windows 10](windows-defender-enhanced-notifications.md)
- [Run a Windows Defender scan from the command line](run-cmd-scan-windows-defender-for-windows-10.md)
- [Detect and block Potentially Unwanted Applications with Windows Defender](enable-pua-windows-defender-for-windows-10.md)
- [Assign user access to the Windows Defender ATP portal](assign-portal-access-windows-defender-advanced-threat-protection.md)
- [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)
- [Troubleshoot Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md)
- [Configure security information and events management (SIEM) tools to consume alerts](configure-siem-windows-defender-advanced-threat-protection.md)
- [Windows Defender compatibility](defender-compatibility-windows-defender-advanced-threat-protection.md)


## July 2016

|New or changed topic | Description |
|----------------------|-------------|
|[Create and verify an Encrypting File System (EFS) Data Recovery Agent (DRA) certificate](create-and-verify-an-efs-dra-certificate.md) |New |
|[Mandatory settings for Windows Information Protection (WIP)](mandatory-settings-for-wip.md) |New |
|[Create a Windows Information Protection (WIP) policy using Microsoft Intune](create-wip-policy-using-intune.md) |New |
|[Create a Windows Information Protection (WIP) policy using System Center Configuration Manager](create-wip-policy-using-sccm.md) |New |
|[Windows Defender Advanced Threat Protection](windows-defender-advanced-threat-protection.md) (multiple topics) | Updated |
|[Device Guard deployment guide](device-guard-deployment-guide.md) (multiple topics) | Updated |


## June 2016

|New or changed topic | Description |
|----------------------|-------------|
|[Create a Windows Information Protection (WIP) policy using Microsoft Intune](create-wip-policy-using-intune.md) |Added an update about needing to reconfigure your enterprise data protection app rules after delivery of the June service update. |
| [Windows Firewall with Advanced Security](windows-firewall-with-advanced-security.md) (multiple topics) | New |
| [Advanced security audit policy settings](advanced-security-audit-policy-settings.md) (mutiple topics) | New security monitoring reference topics |
| [Windows security baselines](windows-security-baselines.md) | New |

## May 2016

|New or changed topic | Description |
|----------------------|-------------|
| [Install digital certificates on Windows 10 Mobile](installing-digital-certificates-on-windows-10-mobile.md) | Changed Internet Explorer to Microsoft Edge |
| [Microsoft Passport errors during PIN creation](microsoft-passport-errors-during-pin-creation.md) | Added errors 0x80090029 and 0x80070057, and merged entries for error 0x801c03ed. |
| [Microsoft Passport guide](microsoft-passport-guide.md) | Updated Roadmap section content |
|[Protect your enterprise data using Windows Information Protection (WIP)](protect-enterprise-data-using-wip.md) |Updated info based on changes to the features and functionality.|
| [User Account Control Group Policy and registry key settings](user-account-control-group-policy-and-registry-key-settings.md) | Updated for Windows 10 and Windows Server 2016 |
|[Windows Defender Advanced Threat Protection](windows-defender-advanced-threat-protection.md) (mutiple topics) | New |

## April 2016

|New or changed topic | Description |
|----------------------|-------------|
|[Protect derived domain credentials with Credential Guard](credential-guard.md) |Clarified Credential Guard protections |

## March 2016

|New or changed topic | Description |
|----------------------|-------------|
|[Requirements to use AppLocker](requirements-to-use-applocker.md) |Added that MDM can be used to manage any edition of Windows 10. Windows 10 Enterprise or Windows Server 2016 is required to manage AppLocker by using Group Policy.|
|[Protect your enterprise data using Windows Information Protection (WIP)](protect-enterprise-data-using-wip.md) |Added pre-release content about how to set up and deploy Windows Information Protection (WIP) in an enterprise environment.|

## February 2016

| New or changed topic | Description |
|----------------------|-------------|
|[Configure S/MIME for Windows 10 and Windows 10 Mobile](configure-s-mime.md) |New |
|[Install digital certificates on Windows 10 Mobile](installing-digital-certificates-on-windows-10-mobile.md) |New |
|[Use Windows Event Forwarding to help with intrusion detection](use-windows-event-forwarding-to-assist-in-instrusion-detection.md) |New |
|[Encrypted Hard Drive](encrypted-hard-drive.md) |New |

## January 2016

|New or changed topic |Description |
|---------------------|------------|
|[Device Guard deployment guide](device-guard-deployment-guide.md) |Updated recommendations in Bring Your Own Device section |
|[Implement Microsoft Passport in your organization](implement-microsoft-passport-in-your-organization.md) |Updated the prerequisites for an Azure Active Directory/Active Directory hybrid environment |
|[Microsoft Passport and password changes](microsoft-passport-and-password-changes.md) |Updated to clarify that this procedure is not needed for Passport for Work |
|[Microsoft Passport guide](microsoft-passport-guide.md) |Updated the prerequisites for an Azure Active Directory/Active Directory hybrid environment |
|[Windows 10 Mobile security guide](windows-10-mobile-security-guide.md) |New |

## December 2015

|New or changed topic |Description |
|---------------------|------------|
|[Device Guard certification and compliance](device-guard-certification-and-compliance.md) |Updated |
|[Microsoft Passport errors during PIN creation](microsoft-passport-errors-during-pin-creation.md) |Updated |
|[Protect derived domain credentials with Credential Guard](credential-guard.md) |Updated |
|[Security policy settings](security-policy-settings.md) (multiple topics) |Updated |

## November 2015

|New or changed topic |Description |
|---------------------|-------------|
|[Windows Defender in Windows 10](windows-defender-in-windows-10.md) |New |
|[Windows Hello biometrics in the enterprise](windows-hello-in-enterprise.md)|New |
|[AppLocker](applocker-overview.md) (multiple topics) |Updated |
|[Device Guard certification and compliance](device-guard-certification-and-compliance.md) |Updated |
|[Device Guard deployment guide](device-guard-deployment-guide.md) |Updated |
|[Security auditing](security-auditing-overview.md) (multiple topics) |Updated |
|[Why a PIN is better than a password](why-a-pin-is-better-than-a-password.md) |Updated |

## Related topics
- [Change history for What's new in Windows 10](../whats-new/change-history-for-what-s-new-in-windows-10.md)
- [Change history for Plan for Windows 10 deployment](../plan/change-history-for-plan-for-windows-10-deployment.md)
- [Change history for Deploy Windows 10](../deploy/change-history-for-deploy-windows-10.md)
- [Change history for Manage and update Windows 10](../manage/change-history-for-manage-and-update-windows-10.md)
