---
title: Upgrade Analytics requirements (Windows 10)
description: Provides requirements for Upgrade Analytics.
ms.prod: w10
author: MaggiePucciEvans
---

# Upgrade Analytics requirements

Prior to installing the Upgrade Analytics solution, review the following requirements and recommendations for using the solution to simplify and accelerate your Windows upgrade.

This article introduces the steps needed to get up and running with Upgrade Analytics. We recommend that you review this list of requirements before getting started as you may need to collect information, such as account credentials, and get approval from internal IT groups, such as your network security group, before you can start using Upgrade Analytics.

See *Get started with Upgrade Analytics* for detailed, step-by-step instructions for configuring Upgrade Analytics and getting started on your Windows upgrade project.

## Supported upgrade paths 

To perform an in-place upgrade, user computers must be running the latest version of either Windows 7 SP1 or Windows 8.1. After you enable Windows telemetry, Upgrade Analytics performs a full inventory of computers so that you can see which version of Windows is installed on each computer.

If you need to update user computers to Windows 7 SP1 or Windows 8.1, use Windows Update or download and deploy the applicable package from the Microsoft Download Center.

Note: Upgrade Analytics is designed to best support in-place upgrades. In-place upgrades do not support migrations from BIOS to UEFI or from 32-bit to 64-bit architecture. If you need to migrate computers in these scenarios, use the wipe-and-reload method. Upgrade Analytics insights are still valuable in this scenario, however, you can ignore in-place upgrade specific guidance.

See [Windows 10 Specifications](http://www.microsoft.com/en-US/windows/windows-10-specifications) for additional information about computer system requirements.

## Operations Management Suite

Upgrade Analytics is offered as a solution in the Microsoft Operations Management Suite (OMS), a collection of cloud based services for managing on premise and cloud computing environments. For more information about OMS, see [Operations Management Suite overview](http://azure.microsoft.com/en-us/documentation/articles/operations-management-suite-overview/).

If you’re already using OMS, you’ll find Upgrade Analytics in the Solutions Gallery. Click the Upgrade Analytics tile in the gallery and then click Add on the solution’s details page. Upgrade Analytics is now visible in your workspace.

If you are not using OMS, go to \[link to new Upgrade Analytics Web page on Microsoft.com\] and select **Upgrade Analytics Service** to kick off the OMS onboarding process. During the onboarding process, you’ll create an OMS workspace and add the Upgrade Analytics solution to it.

Important: You can use either a Microsoft Account or a Work or School account to create a workspace. If your company is already using Azure Active Directory, use a Work or School account when you sign in to OMS. Using a Work or School account allows you to use identities from your Azure AD to manage permissions in OMS.

## Telemetry and data sharing 

After you’ve signed in to Operations Management Suite and added the Upgrade Analytics solution to your workspace, you’ll need to complete the following tasks to allow user computer data to be shared with and assessed by Upgrade Analytics.

See \[link to Steve May’s PDF doc when it’s published\] for more information about what user computer data Upgrade Analytics collects and assesses. See [Configure Windows telemetry in your organization](https://technet.microsoft.com/itpro/windows/manage/configure-windows-telemetry-in-your-organization) for more information about how Microsoft uses Windows telemetry data.

**Whitelist telemetry endpoints.** To enable telemetry data to be sent to Microsoft, you’ll need to whitelist the following Microsoft telemetry endpoints on your proxy server or firewall. You may need to get approval from your security group to do this.

`https://v10.vortex-win.data.microsoft.com/collect/v1`

`https://settings-win.data.microsoft.com/settings`

`https://vortex.data.microsoft.com/health/keepalive`

`https://settings.data.microsoft.com/qos`

`http://go.microsoft.com/fwlink/?LinkID=544713`

`https://compatexchange1.trafficmanager.net/CompatibilityExchangeService.svc/extended`

NOTE: The compatibility update KB runs under the computer’s system account and does not support user authentication in this release.

**Generate your commercial ID key.** Microsoft uses a unique commercial ID GUID to map data from your computers to your OMS workspace. You’ll need to generate your commercial ID key in OMS. We recommend that you save your commercial ID key as you’ll need it later.

**Subscribe your OMS workspace to Upgrade Analytics.** For Upgrade Analytics to receive and display upgrade readiness data from Microsoft, you’ll need to subscribe your OMS workspace to Upgrade Analytics.

**Enable telemetry and connect data sources.** To allow Upgrade Analytics to collect system, application, and driver data and assess your organization’s upgrade readiness, communication must be established between Upgrade Analytics and user computers. You’ll need to connect Upgrade Analytics to your data sources and enable telemetry to establish communication.

**Configure and deploy Upgrade Analytics deployment script.** Configure and deploy the Upgrade Analytics deployment script to user computers to finish setting up.

**Deploy compatibility update and related KBs.** The compatibility update KB scans your systems and enables application usage tracking. If you don’t already have this KB installed, you can download the applicable version from the Microsoft Update Catalog or deploy it using Windows Server Update Services (WSUS) or your software distribution solution, such as System Center Configuration Manager.

IMPORTANT: The compatibility update and related KBs are frequently updated to include new compatibility issues as they become known to Microsoft. We recommend that you use a deployment system that allows for automatic updates of these KBs. The compatibility update KB scans computers only when it is updated and does not scan computers on a schedule, although an option to kick off the scan manually is available.

