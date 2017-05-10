---
title: Deploy Windows 10 (Windows 10)
description: Learn about deploying Windows 10 for IT professionals.
ms.assetid: E9E2DED5-DBA7-4300-B411-BA0FD39BE18C
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
localizationpriority: high
author: greg-lindsay
---

# Deploy, Upgrade and Update Windows 10
Learn about deployment in Windows 10 for IT professionals. This includes deploying the operating system, upgrading to it from previous version and updating Windows 10.

## In this section


### Deploy Windows 10
|Topic |Description |
|------|------------|
|[What's new in Windows 10 deployment](deploy-whats-new.md) |See this topic for a summary of new features and some recent changes related to deploying Windows 10 in your organization. |
|[Plan for Windows 10 deployment](planning/index.md) | This topic provides information about Windows 10 deployment considerations. It also provides details to assist in Windows 10 deployment planning. |
|[Windows 10 deployment scenarios](windows-10-deployment-scenarios.md) |To successfully deploy the Windows 10 operating system in your organization, it is important to understand the different ways that it can be deployed, especially now that there are new scenarios to consider. Choosing among these scenarios, and understanding the key capabilities and limitations of each, is a key task. |
|[Windows 10 deployment tools reference](windows-10-deployment-tools-reference.md) |Learn about the tools available to deploy Windows 10. |
|[Deploy Windows 10 with System Center 2012 R2 Configuration Manager](deploy-windows-sccm/deploy-windows-10-with-system-center-2012-r2-configuration-manager.md) |If you have Microsoft System Center 2012 R2 Configuration Manager in your environment, you will most likely want to use it to deploy Windows 10. This topic will show you how to set up Configuration Manager for operating system deployment and how to integrate Configuration Manager with the Microsoft Deployment Toolkit (MDT) or. |
|[Deploy Windows 10 with the Microsoft Deployment Toolkit](deploy-windows-mdt/deploy-windows-10-with-the-microsoft-deployment-toolkit.md) |This guide will walk you through the process of deploying Windows 10 in an enterprise environment using the Microsoft Deployment Toolkit (MDT). |
|[Step by step guide: Configure a test lab to deploy Windows 10](windows-10-poc.md) |This guide contains instructions to configure a proof of concept (PoC) environment requiring a minimum amount of resources. The guide makes extensive use of Windows PowerShell and Hyper-V. Subsequent companion guides contain steps to deploy Windows 10 using the PoC environment. After completing this guide, see the following Windows 10 PoC deployment guides: [Deploy Windows 10 in a test lab using Microsoft Deployment Toolkit](windows-10-poc-mdt.md), [Deploy Windows 10 in a test lab using System Center Configuration Manager](windows-10-poc-sc-config-mgr.md). |

### Upgrade to Windows 10
|Topic |Description |
|------|------------|
|[Windows 10 upgrade paths](upgrade/windows-10-upgrade-paths.md) |You can upgrade directly to Windows 10 from a previous operating system. |
|[Windows 10 edition upgrade](upgrade/windows-10-edition-upgrades.md) |With Windows 10, you can quickly upgrade from one edition of Windows 10 to another, provided the upgrade path is supported. |
|[Deploy Windows To Go in your organization](deploy-windows-to-go.md) |This topic helps you to deploy Windows To Go in your organization. Before you begin deployment, make sure that you have reviewed the topics [Windows To Go: feature overview](planning/windows-to-go-overview.md) and [Prepare your organization for Windows To Go](planning/prepare-your-organization-for-windows-to-go.md) to ensure that you have the correct hardware and are prepared to complete the deployment. You can then use the steps in this topic to start your Windows To Go deployment. |
|[Upgrade a Windows Phone 8.1 to Windows 10 Mobile with Mobile Device Management](upgrade/upgrade-windows-phone-8-1-to-10.md) |This topic describes how to upgrade eligible Windows Phone 8.1 devices to Windows 10 Mobile. |
|[Manage Windows upgrades with Upgrade Readiness](upgrade/manage-windows-upgrades-with-upgrade-readiness.md) |With Upgrade Readiness, enterprises now have the tools to plan and manage the upgrade process end to end, allowing them to adopt new Windows releases more quickly. With Windows telemetry enabled, Upgrade Readiness collects system, application, and driver data for analysis. We then identify compatibility issues that can block an upgrade and suggest fixes when they are known to Microsoft. The Upgrade Readiness workflow steps you through the discovery and rationalization process until you have a list of computers that are ready to be upgraded. | 
|[Resolve Windows 10 upgrade errors](upgrade/resolve-windows-10-upgrade-errors.md) |This topic provides a brief introduction to Windows 10 installation processes, and provides resolution procedures that IT administrators can use to resolve issues with Windows 10 upgrade. |

### Update Windows 10
|Topic |Description |
|------|------------|
| [Quick guide to Windows as a service](update/waas-quick-start.md) | Provides a brief summary of the key points for the new servicing model for Windows 10. |
| [Overview of Windows as a service](update/waas-overview.md) | Explains the differences in building, deploying, and servicing Windows 10; introduces feature updates, quality updates, and the different servicing branches; compares servicing tools. |
| [Prepare servicing strategy for Windows 10 updates](update/waas-servicing-strategy-windows-10-updates.md) | Explains the decisions you need to make in your servicing strategy.  |
| [Build deployment rings for Windows 10 updates](update/waas-deployment-rings-windows-10-updates.md) | Explains how to make use of servicing branches and update deferrals to manage Windows 10 updates.  |
| [Assign devices to servicing branches for Windows 10 updates](update/waas-servicing-branches-windows-10-updates.md) | Explains how to assign devices to Current Branch (CB) or Current Branch for Business (CBB) for feature and quality updates, and how to enroll devices in Windows Insider. |
| [Monitor Windows Updates with Update Compliance](update/update-compliance-monitor.md) | Explains how to use Windows Analytics: Update Compliance to monitor and manage Windows Updates on devices in your organization.  |
| [Optimize update delivery for Windows 10 updates](update/waas-optimize-windows-10-updates.md) | Explains the benefits of using Delivery Optimization or BranchCache for update distribution.  |
| [Deploy updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile](update/waas-mobile-updates.md) | Explains updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile. |
| [Deploy updates using Windows Update for Business](update/waas-manage-updates-wufb.md) | Explains how to use Windows Update for Business to manage when devices receive updates directly from Windows Update. Includes walkthroughs for configuring Windows Update for Business using Group Policy and Microsoft Intune.  |
| [Deploy Windows 10 updates using Windows Server Update Services (WSUS)](update/waas-manage-updates-wsus.md) | Explains how to use WSUS to manage Windows 10 updates. |
| [Deploy Windows 10 updates using System Center Configuration Manager](update/waas-manage-updates-configuration-manager.md) | Explains how to use Configuration Manager to manage Windows 10 updates.  |
| [Manage device restarts after updates](update/waas-restart.md) | Explains how to manage update related device restarts. |
| [Manage additional Windows Update settings](update/waas-wu-settings.md) | Provides details about settings available to control and configure Windows Update |
| [Windows Insider Program for Business](update/waas-windows-insider-for-business.md) | Explains how the Windows Insider Program for Business works and how to become an insider. |

### Additional topics
|Topic |Description |
|------|------------|
|[Convert MBR partition to GPT](mbr-to-gpt.md) |This topic provides detailed instructions for using the MBR2GPT partition conversion tool. |
|[Configure a PXE server to load Windows PE](configure-a-pxe-server-to-load-windows-pe.md) |This guide describes how to configure a PXE server to load Windows PE by booting a client computer from the network. |
|[Sideload apps in Windows 10](/windows/application-management/sideload-apps-in-windows-10) |Sideload line-of-business apps in Windows 10. |
|[Volume Activation [client]](volume-activation/volume-activation-windows-10.md) |This guide is designed to help organizations that are planning to use volume activation to deploy and activate Windows 10, including organizations that have used volume activation for earlier versions of Windows. |
|[Change history for Deploy Windows 10](change-history-for-deploy-windows-10.md) |This topic lists new and updated topics in the Deploy Windows 10 documentation for [Windows 10 and Windows 10 Mobile](/windows/windows-10). |

 

 





