---
title: Change history for Deploy Windows 10 (Windows 10)
description: This topic lists new and updated topics in the Deploy Windows 10 documentation for Windows 10 and Windows 10 Mobile.
ms.assetid: 19C50373-6B25-4F5C-A6EF-643D36904349
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.topic: article
---

# Change history for Deploy Windows 10
This topic lists new and updated topics in the [Deploy Windows 10](https://docs.microsoft.com/windows/deployment) documentation for [Windows 10 and Windows 10 Mobile](/windows/windows-10).

## April 2018

New or changed topic | Description
--- | ---
[Install VAMT](volume-activation/install-vamt.md) | Updated the instructions and link for SQL Server Express.

## November 2017

New or changed topic | Description
-- | ---
 [Create a Windows 10 reference image](deploy-windows-mdt/create-a-windows-10-reference-image.md)  | Added warning that you should not use **SkipMachineOOBE** or **SkipUserOOBE** in your Unattend.xml.

## RELEASE: Windows 10, version 1709
| New or changed topic | Description |
|----------------------|-------------|
| [Windows 10 edition upgrade](upgrade/windows-10-edition-upgrades.md) | Updated the edition upgrade table to include all other Windows 10 editions previously not on the list and the supported upgrade methods for upgrade path. |
| [Fonts missing after upgrading to Windows 10](windows-10-missing-fonts.md)| New article about the set of fonts that have moved from being included in the default installation image to being included in Optional Features. This article includes the steps for adding these optional font features.|

## July 2017
| New or changed topic | Description |
|----------------------|-------------|
| The table of contents for deployment topics was reorganized.

## June 2017
| New or changed topic | Description |
|----------------------|-------------|
| [Overview of Windows Autopilot](windows-autopilot/windows-autopilot.md) | New |

## April 2017
| New or changed topic | Description |
|----------------------|-------------|
| [Deploy Windows 10 in a test lab using System Center Configuration Manager](windows-10-poc-sc-config-mgr.md) | Updated: The "refresh" and "replace" procedures were swapped in order so that it would not be necessary to save and restore VMs. Also a missing step was added to include the State migration point role. | 
| [Step by step guide: Configure a test lab to deploy Windows 10](windows-10-poc.md)| Updated with minor fixes. |
| [Manage Windows upgrades with Upgrade Readiness](upgrade/manage-windows-upgrades-with-upgrade-readiness.md)| Updated child topics under this node to include new feature and user interface changes. |
| [Get started with Upgrade Readiness](upgrade/upgrade-readiness-get-started.md)| Added a table summarizing connection scenarios under the Enable data sharing topic. |


## RELEASE: Windows 10, version 1703
The topics in this library have been updated for Windows 10, version 1703 (also known as the Creators Update). The provisioning topics have been moved to [Configure Windows 10](/windows/configuration/index).


## March 2017
| New or changed topic | Description |
|----------------------|-------------|
| [What's new in Windows 10 deployment](deploy-whats-new.md) | New | 
| [Upgrade to Windows 10 with the Microsoft Deployment Toolkit](upgrade/upgrade-to-windows-10-with-the-microsoft-deployment-toolkit.md) | Topic moved under [Deploy Windows 10 with the Microsoft Deployment Toolkit](deploy-windows-mdt/deploy-windows-10-with-the-microsoft-deployment-toolkit.md) in the table of contents and title adjusted to clarify in-place upgrade. | 
| [Upgrade to Windows 10 with System Center Configuration Manager](upgrade/upgrade-to-windows-10-with-system-center-configuraton-manager.md) | Topic moved under [Deploy Windows 10 with System Center 2012 R2 Configuration Manager](deploy-windows-sccm/deploy-windows-10-with-system-center-2012-r2-configuration-manager.md) in the table of contents and title adjusted to clarify in-place upgrade. | 
| [Convert MBR partition to GPT](mbr-to-gpt.md) | New | 

## February 2017
| New or changed topic | Description |
|----------------------|-------------|
| [Manage Windows upgrades with Upgrade Readiness](upgrade/manage-windows-upgrades-with-upgrade-readiness.md) | Multiple topics updated, name changed from Upgrade Analytics to Upgrade Readiness, and other content updates. | 
| [USMT Requirements](usmt/usmt-requirements.md) | Updated: Vista support removed and other minor changes | 
| [Get started with Upgrade Analytics](upgrade/upgrade-readiness-get-started.md) | Updated structure and content | 
| [Upgrade Analytics deployment script](upgrade/upgrade-readiness-deployment-script.md) | Added as a separate page from get started | 
| [Use Upgrade Analytics to manage Windows upgrades](upgrade/use-upgrade-readiness-to-manage-windows-upgrades.md) | Updated with links to new content and information about the target OS setting |
| [Upgrade Analytics - Upgrade overview](upgrade/upgrade-readiness-upgrade-overview.md) | New | 
| [Upgrade Analytics - Step 1: Identify important apps](upgrade/upgrade-readiness-identify-apps.md) | Updated topic title and content | 
| [Upgrade Analytics - Step 2: Resolve app and driver issues](upgrade/upgrade-readiness-resolve-issues.md) | New | 
| [Upgrade Analytics - Step 3: Deploy Windows](upgrade/upgrade-readiness-deploy-windows.md) | New | 
| [Upgrade Analytics - Additional insights](upgrade/upgrade-readiness-additional-insights.md) | New | 


## January 2017
| New or changed topic | Description |
|----------------------|-------------|
| [Step by step guide: Configure a test lab to deploy Windows 10](windows-10-poc.md) | New | 
| [Deploy Windows 10 in a test lab using Microsoft Deployment Toolkit](windows-10-poc-mdt.md) | New | 
| [Deploy Windows 10 in a test lab using System Center Configuration Manager](windows-10-poc-sc-config-mgr.md) | New | 
| [Apply a provisioning package](/windows/configuration/provisioning-packages/provisioning-apply-package) | New (previously published in other topics) | 
| [Create a provisioning package for Windows 10](/windows/configuration/provisioning-packages/provisioning-create-package) | New (previously published in Hardware Dev Center on MSDN) | 
| [Create a provisioning package with multivariant settings](/windows/configuration/provisioning-packages/provisioning-multivariant) | New (previously published in Hardware Dev Center on MSDN) | 
| [How provisioning works in Windows 10](/windows/configuration/provisioning-packages/provisioning-how-it-works) | New (previously published in Hardware Dev Center on MSDN) | 
| [Install Windows Imaging and Configuration Designer](/windows/configuration/provisioning-packages/provisioning-install-icd) | New (previously published in Hardware Dev Center on MSDN) |
| [NFC-based device provisioning](/windows/configuration/mobile-devices/provisioning-nfc) | New (previously published in Hardware Dev Center on MSDN) | 
| [Settings changed when you uninstall a provisioning package](/windows/configuration/provisioning-packages/provisioning-uninstall-package) | New (previously published in Hardware Dev Center on MSDN) | 
| [Use a script to install a desktop app in provisioning packages](/windows/configuration/provisioning-packages/provisioning-script-to-install-app) | New (previously published in Hardware Dev Center on MSDN) |
| [Windows ICD command-line interface (reference)](/windows/configuration/provisioning-packages/provisioning-command-line) | New (previously published in Hardware Dev Center on MSDN) |
| [Get started with Upgrade Analytics](upgrade/upgrade-readiness-get-started.md) | Updated exit code table with suggested fixes, and added link to the Upgrade Analytics blog | 
| [Provision PCs with common settings for initial deployment (simple provisioning)](/windows/configuration/provisioning-packages/provision-pcs-for-initial-deployment) | Instructions for applying the provisioning package moved to [Apply a provisioning package](/windows/configuration/provisioning-packages/provisioning-apply-package) |
| [Provision PCs with apps and certificates for initial deployments (advanced provisioning)](/windows/configuration/provisioning-packages/provision-pcs-with-apps-and-certificates) | Instructions for applying the provisioning package moved to [Apply a provisioning package](/windows/configuration/provisioning-packages/provisioning-apply-package) |


## October 2016
| New or changed topic | Description |
|----------------------|-------------|
| [Resolve Windows 10 upgrade errors](upgrade/resolve-windows-10-upgrade-errors.md) | New | 

## September 2016
| New or changed topic | Description |
|----------------------|-------------|
| [Windows 10 Enterprise E3 in CSP Overview](windows-10-enterprise-e3-overview.md) | New | 
| [Get started with Upgrade Analytics](upgrade/upgrade-readiness-get-started.md) | Updated with prerequisites for site discovery |
| [Resolve application and driver issues](upgrade/upgrade-readiness-resolve-issues.md) | Updated with app status info for Ready For Windows |
| [Review site discovery](upgrade/upgrade-readiness-additional-insights.md) | New |

## RELEASE: Windows 10, version 1607

The topics in this library have been updated for Windows 10, version 1607 (also known as the Anniversary Update). The following new topics have been added: 

- [Provisioning packages for Windows 10](/windows/configuration/provisioning-packages/provisioning-packages.md)
- [Provision PCs with apps and certificates for initial deployment](/windows/configuration/provisioning-packages/provision-pcs-with-apps-and-certificates.md)
- [Provision PCs with common settings for initial deployment](/windows/configuration/provisioning-packages/provision-pcs-for-initial-deployment.md)

## August 2016
| New or changed topic | Description |
|----------------------|-------------|
| [Windows 10 edition upgrade](upgrade/windows-10-edition-upgrades.md) | Updated with reboot requirements | 

## July 2016
| New or changed topic | Description |
|----------------------|-------------|
| [Manage Windows upgrades with Upgrade Analytics](upgrade/manage-windows-upgrades-with-upgrade-readiness.md) | New |

## June 2016
| New or changed topic | Description |
|----------------------|-------------|
| [Configure a PXE server to load Windows PE](configure-a-pxe-server-to-load-windows-pe.md) | New |
| [User State Migration Tool Technical Reference](usmt/usmt-technical-reference.md) | Updated support statement for Office 2016 |
| [Windows 10 upgrade paths](upgrade/windows-10-upgrade-paths.md) | New |

## May 2016
| New or changed topic | Description |
|----------------------|-------------|
| [Upgrade a Windows Phone 8.1 to Windows 10 Mobile with Mobile Device Management](upgrade/upgrade-windows-phone-8-1-to-10.md) | New |

## December 2015
| New or changed topic | Description |
|----------------------|-------------|
| [Activate using Key Management Service](volume-activation/activate-using-key-management-service-vamt.md) | Updated |
| [Windows 10 edition upgrade](upgrade/windows-10-edition-upgrades.md) | Updated |

## November 2015
| New or changed topic | Description |
|----------------------|-------------|
| [Windows 10 edition upgrade](upgrade/windows-10-edition-upgrades.md) | New |

## Related topics
- [Change history for Plan for Windows 10 deployment](/windows/deployment/planning/change-history-for-plan-for-windows-10-deployment)
- [Change history for Access Protection](/windows/access-protection/change-history-for-access-protection)
- [Change history for Device Security](/windows/device-security/change-history-for-device-security)
- [Change history for Threat Protection](/windows/threat-protection/change-history-for-threat-protection)
