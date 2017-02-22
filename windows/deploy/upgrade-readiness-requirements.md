---
title: Upgrade Readiness requirements (Windows 10)
description: Provides requirements for Upgrade Readiness.
ms.prod: w10
author: greg-lindsay
---

# Upgrade Readiness requirements

This article introduces concepts and steps needed to get up and running with Upgrade Readiness. We recommend that you review this list of requirements before getting started as you may need to collect information, such as account credentials, and get approval from internal IT groups, such as your network security group, before you can start using Upgrade Readiness.

## Supported upgrade paths 

### Windows 7 and Windows 8.1

To perform an in-place upgrade, user computers must be running the latest version of either Windows 7 SP1 or Windows 8.1. After you enable Windows telemetry, Upgrade Readiness performs a full inventory of computers so that you can see which version of Windows is installed on each computer.

The compatibility update KB that sends telemetry data from user computers to Microsoft data centers works with Windows 7 SP1 and Windows 8.1 only. Upgrade Readiness cannot evaluate Windows XP or Windows Vista for upgrade eligibility.

<!--With Windows 10, edition 1607, the compatibility update KB is installed automatically.-->

If you need to update user computers to Windows 7 SP1 or Windows 8.1, use Windows Update or download and deploy the applicable package from the Microsoft Download Center.

Note: Upgrade Readiness is designed to best support in-place upgrades. In-place upgrades do not support migrations from BIOS to UEFI or from 32-bit to 64-bit architecture. If you need to migrate computers in these scenarios, use the wipe-and-reload method. Upgrade Readiness insights are still valuable in this scenario, however, you can ignore in-place upgrade specific guidance.

See [Windows 10 Specifications](http://www.microsoft.com/en-US/windows/windows-10-specifications) for additional information about computer system requirements.

### Windows 10

Keeping Windows 10 up to date involves deploying a feature update, and Upgrade Readiness tools help you prepare and plan for these Windows updates.
The latest cumulative updates must be installed on Windows 10 computers to make sure that the required compatibility KBs are installed.  You can find the latest cumulative update on the [Microsoft Update Catalog](https://catalog.update.microsoft.com). 


## Operations Management Suite

Upgrade Readiness is offered as a solution in the Microsoft Operations Management Suite (OMS), a collection of cloud based services for managing on premise and cloud computing environments. For more information about OMS, see [Operations Management Suite overview](http://azure.microsoft.com/en-us/documentation/articles/operations-management-suite-overview/).

If you’re already using OMS, you’ll find Upgrade Readiness in the Solutions Gallery. Click the Upgrade Readiness tile in the gallery and then click Add on the solution’s details page. Upgrade Readiness is now visible in your workspace.

If you are not using OMS, go to the [Upgrade Readiness page](https://www.microsoft.com/en-us/WindowsForBusiness/upgrade-analytics) on Microsoft.com and select **Sign up** to kick off the OMS onboarding process. During the onboarding process, you’ll create an OMS workspace and add the Upgrade Readiness solution to it.

Important: You can use either a Microsoft Account or a Work or School account to create a workspace. If your company is already using Azure Active Directory, use a Work or School account when you sign in to OMS. Using a Work or School account allows you to use identities from your Azure AD to manage permissions in OMS. You also need an Azure subscription to link to your OMS workspace.  The account you used to create the workspace must have administrator permissions on the Azure subscription in order to link the workspace to the Azure account.  Once the link has been established, you can revoke the administrator permissions.

## System Center Configuration Manager integration

Upgrade Readiness can be integrated with your installation of Configuration Manager. For more information, see [Integrate Upgrade Readiness with System Center Configuration Manager](https://docs.microsoft.com/sccm/core/clients/manage/upgrade/upgrade-analytics).

## Telemetry and data sharing 

After you’ve signed in to Operations Management Suite and added the Upgrade Readiness solution to your workspace, you’ll need to complete the following tasks to allow user computer data to be shared with and assessed by Upgrade Readiness.

See [Windows 7, Windows 8, and Windows 8.1 appraiser telemetry events and fields](https://go.microsoft.com/fwlink/?LinkID=822965) for more information about what user computer data Upgrade Readiness collects and assesses. See [Configure Windows telemetry in your organization](https://technet.microsoft.com/itpro/windows/manage/configure-windows-telemetry-in-your-organization) for more information about how Microsoft uses Windows telemetry data.

**Whitelist telemetry endpoints.** To enable telemetry data to be sent to Microsoft, you’ll need to whitelist the following Microsoft telemetry endpoints on your proxy server or firewall. You may need to get approval from your security group to do this.

`https://v10.vortex-win.data.microsoft.com/collect/v1`<BR>
`https://vortex-win.data.microsoft.com/health/keepalive`<BR>
`https://settings.data.microsoft.com/qos`<BR>
`https://go.microsoft.com/fwlink/?LinkID=544713`<BR>
`https://compatexchange1.trafficmanager.net/CompatibilityExchangeService.svc`<BR>

>**Note** The compatibility update KB runs under the computer’s system account and does not support user authentication in this release.

**Generate your commercial ID key.** Microsoft uses a unique commercial ID GUID to map data from your computers to your OMS workspace. You’ll need to generate your commercial ID key in OMS. We recommend that you save your commercial ID key as you’ll need it later.

**Subscribe your OMS workspace to Upgrade Readiness.** For Upgrade Readiness to receive and display upgrade readiness data from Microsoft, you’ll need to subscribe your OMS workspace to Upgrade Readiness.

**Enable telemetry and connect data sources.** To allow Upgrade Readiness to collect system, application, and driver data and assess your organization’s upgrade readiness, communication must be established between Upgrade Readiness and user computers. You’ll need to connect Upgrade Readiness to your data sources and enable telemetry to establish communication.

**Deploy compatibility update and related KBs.** The compatibility update KB scans your systems and enables application usage tracking. If you don’t already have this KB installed, you can download the applicable version from the Microsoft Update Catalog or deploy it using Windows Server Update Services (WSUS) or your software distribution solution, such as System Center Configuration Manager.

>**Important**<br> The compatibility update and related KBs are updated frequently to include new compatibility issues as they become known to Microsoft. We recommend that you use a deployment system that allows for automatic updates of these KBs. The compatibility update KB collects inventory information from computers only when it is updated. 

**Configure and deploy Upgrade Readiness deployment script.** Configure and deploy the Upgrade Readiness deployment script to user computers to finish setting up.

## Important information about this release

Before you get started configuring Upgrade Anatlyics, review the following tips and limitations about this release.

**User authenticated proxies are not supported in this release.** User computers communicate with Microsoft through Windows telemetry. The Windows telemetry client runs in System context and requires a connection to various Microsoft telemetry endpoints. User authenticated proxies are not supported at this time. Work with your Network Administrator to ensure that user computers can communicate with telemetry endpoints.

**Upgrade Readiness does not support on-premises Windows deployments.** Upgrade Readiness is built as a cloud service, which allows Upgrade Readiness to provide you with insights based on the data from user computers and other Microsoft compatibility services. Cloud services are easy to get up and running and are cost-effective because there is no requirement to physically implement and maintain services on-premises.

**In-region data storage requirements.** Windows telemetry data from user computers is encrypted, sent to, and processed at Microsoft-managed secure data centers located in the US. Our analysis of the upgrade readiness-related data is then provided to you through the Upgrade Readiness solution in the Microsoft Operations Management Suite (OMS) portal. At the time this topic is being published, only OMS workspaces created in the East US and West Europe are supported. We’re adding support for additional regions and we’ll update this information when new international regions are supported.

### Tips

- When viewing inventory items in table view, the maximum number of rows that can be viewed and exported is limited to 5,000. If you need to view or export more than 5,000 items, reduce the scope of the query so you can export a list with fewer items.

- Sorting data by clicking a column heading may not sort your complete list of items. For information about how to sort data in OMS, see [Sorting DocumentDB data using Order By](https://azure.microsoft.com/documentation/articles/documentdb-orderby).

## Get started

See [Get started with Upgrade Readiness](upgrade-readiness-get-started.md) for detailed, step-by-step instructions for configuring Upgrade Readiness and getting started on your Windows upgrade project.
