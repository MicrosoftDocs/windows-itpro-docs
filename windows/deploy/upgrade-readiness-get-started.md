---
title: Get started with Upgrade Readiness (Windows 10)
description: Explains how to get started with Upgrade Readiness.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
---

# Get started with Upgrade Readiness

This topic explains how to obtain and configure Upgrade Readiness for your organization. 

You can use Upgrade Readiness to plan and manage your upgrade project end-to-end. Upgrade Readiness works by establishing communications between computers in your organization and Microsoft. Upgrade Readiness collects computer, application, and driver data for analysis. This data is used to identify compatibility issues that can block your upgrade and to suggest fixes that are known to Microsoft.

Before you begin, consider reviewing the following helpful information:<BR>
    - [Upgrade Readiness requirements](https://technet.microsoft.com/itpro/windows/deploy/upgrade-readiness-requirements): Provides detailed requirements to use Upgrade Readiness.<BR>
    - [Upgrade Readiness blog](https://blogs.technet.microsoft.com/UpgradeAnalytics): Contains announcements of new features and provides helpful tips for using Upgrade Readiness.

>If you are using System Center Configuration Manager, also check out information about how to integrate Upgrade Readiness with Configuration Manager: [Integrate Upgrade Readiness with System Center Configuration Manager](https://docs.microsoft.com/sccm/core/clients/manage/upgrade/upgrade-analytics).

When you are ready to begin using Upgrade Readiness, perform the following steps:

1. Review [data collection and privacy](#data-collection-and-privacy) information.
2. [Add Upgrade Readiness to OMS](#add-upgrade-readiness-to-operations-management-suite).
3. [Enable data sharing](#enable-data-sharing).
4. [Deploy required updates](#deploy-the-compatibility-update-and-related-kbs) to computers, and validate using a pilot deployment.
5. [Deploy Upgrade Readiness at scale](#deploy-upgrade-readiness-at-scale).

## Data collection and privacy 

To enable system, application, and driver data to be shared with Microsoft, you must configure user computers to send data. For information about what telemetry data Microsoft collects and how that data is used and protected by Microsoft, see the following topics:

- [Configure Windows telemetry in your organization](https://technet.microsoft.com/itpro/windows/manage/configure-windows-telemetry-in-your-organization)
- [Manage connections from Windows operating system components to Microsoft services](https://technet.microsoft.com/itpro/windows/manage/manage-connections-from-windows-operating-system-components-to-microsoft-services)
- [Windows 7, Windows 8, and Windows 8.1 appraiser telemetry events and fields](https://go.microsoft.com/fwlink/?LinkID=822965)

## Add Upgrade Readiness to Operations Management Suite

Upgrade Readiness is offered as a solution in the Microsoft Operations Management Suite (OMS), a collection of cloud based services for managing your on-premises and cloud environments. For more information about OMS, see [Operations Management Suite overview](http://azure.microsoft.com/documentation/articles/operations-management-suite-overview/).

If you are already using OMS, you’ll find Upgrade Readiness in the Solutions Gallery. Select the **Upgrade Readiness** tile in the gallery and then click **Add** on the solution's details page. Upgrade Readiness is now visible in your workspace.

If you are not using OMS:

1.  Go to the [Upgrade Readiness page on Microsoft.com](https://go.microsoft.com/fwlink/?LinkID=799190&clcid=0x409) and click **Sign up** to kick off the onboarding process.
2.  Sign in to Operations Management Suite (OMS). You can use either a Microsoft Account or a Work or School account to create a workspace. If your company is already using Azure Active Directory (Azure AD), use a Work or School account when you sign in to OMS. Using a Work or School account allows you to use identities from your Azure AD to manage permissions in OMS.
3.  Create a new OMS workspace. Enter a name for the workspace, select the workspace region, and provide the email address that you want associated with this workspace. Select **Create**.
4.  If your organization already has an Azure subscription, you can link it to your workspace. Note that you may need to request access from your organization’s Azure administrator.

    > If your organization does not have an Azure subscription, create a new one or select the default OMS Azure subscription from the list. Your workspace opens.

1.  To add the Upgrade Readiness solution to your workspace, go to the **Solutions Gallery**. Select the **Upgrade Readiness** tile in the gallery and then select **Add** on the solution’s details page. The solution is now visible on your workspace. Note that you may need to scroll to find Upgrade Readiness.

2.  Click the **Upgrade Readiness** tile to configure the solution. The **Settings Dashboard** opens.

### Generate your commercial ID key

Microsoft uses a unique commercial ID to map information from user computers to your OMS workspace. Generate your commercial ID key in OMS and then deploy it to user computers.

1.  On the Settings Dashboard, navigate to the **Windows telemetry** panel.

    ![upgrade-readiness-telemetry](images/upgrade-analytics-telemetry.png)

2. On the Windows telemetry panel, copy and save your commercial ID key. You’ll need to insert this key into the Upgrade Readiness deployment script later so it can be deployed to user computers.

    >**Important**<br> Regenerate a commercial ID key only if your original ID key can no longer be used. Regenerating a commercial ID key resets the data in your workspace for all solutions that use the ID. Additionally, you’ll need to deploy the new commercial ID key to user computers again.

### Subscribe to Upgrade Readiness

For Upgrade Readiness to receive and display upgrade readiness data from Microsoft, subscribe your OMS workspace to Upgrade Readiness.

1.  On the **Windows telemetry** panel, click **Subscribe**. The button changes to **Unsubscribe**. Unsubscribe from the Upgrade Readiness solution if you no longer want to receive upgrade-readiness information from Microsoft. Note that user computer data will continue to be shared with Microsoft for as long as the opt-in keys are set on user computers and the proxy allows the traffic.

1.  Click **Overview** on the Settings Dashboard to return to your OMS workspace portal. The Upgrade Readiness tile now displays summary data. Click the tile to open Upgrade Readiness.

## Enable data sharing

To enable data sharing, whitelist the following endpoints. Note that you may need to get approval from your security group to do this.

Note: The compatibility update KB runs under the computer’s system account. If you are using user authenticated proxies, read [this blog post](https://go.microsoft.com/fwlink/?linkid=838688) to learn what you need to do to run it under the logged on user account.

| **Endpoint**  | **Function**  |
|---------------------------------------------------------|-----------|
| `https://v10.vortex-win.data.microsoft.com/collect/v1`<br>`https://Vortex-win.data.microsoft.com/health/keepalive`                                                                                                      | Connected User Experience and Telemetry component endpoint. User computers send data to Microsoft through this endpoint.             |
| `https://settings.data.microsoft.com/qos`                                                                                                                                  | Enables the compatibility update KB to send data to Microsoft.                                                                       |
| `https://go.microsoft.com/fwlink/?LinkID=544713`<br>`https://compatexchange1.trafficmanager.net/CompatibilityExchangeService.svc`                                         | This service provides driver information about whether there will be a driver available post-upgrade for the hardware on the system. |


## Deploy the compatibility update and related KBs

The compatibility update KB scans your computers and enables application usage tracking. If you don’t already have these KBs installed, you can download the applicable version from the Microsoft Update Catalog or deploy it using Windows Server Update Services (WSUS) or your software distribution solution, such as System Center Configuration Manager.

| **Operating System** | **KBs** |
|----------------------|-----------------------------------------------------------------------------|
| Windows 10        | The latest cumulative updates must be installed on Windows 10 computers to make sure that the required compatibility KBs are installed.  You can find the latest cumulative update on the [Microsoft Update Catalog](https://catalog.update.microsoft.com) |
| Windows 8.1          | [KB 2976978](http://catalog.update.microsoft.com/v7/site/Search.aspx?q=KB2976978)<br>Performs diagnostics on the Windows 8.1 systems that participate in the Windows Customer Experience Improvement Program. These diagnostics help determine whether compatibility issues may be encountered when the latest Windows operating system is installed. <br>For more information about this KB, see <https://support.microsoft.com/kb/2976978><br><BR>[KB 3150513](https://catalog.update.microsoft.com/v7/site/Search.aspx?q=3150513)<br>Provides updated configuration and definitions for compatibility diagnostics performed on the system.<br>For more information about this KB, see <https://support.microsoft.com/kb/3150513><br>NOTE: KB2976978 must be installed before you can download and install KB3150513.   |
| Windows 7 SP1        | [KB2952664](http://catalog.update.microsoft.com/v7/site/Search.aspx?q=KB2952664) <br>Performs diagnostics on the Windows 7 SP1 systems that participate in the Windows Customer Experience Improvement Program. These diagnostics help determine whether compatibility issues may be encountered when the latest Windows operating system is installed. <br>For more information about this KB, see <https://support.microsoft.com/kb/2952664><br><BR>[KB 3150513](https://catalog.update.microsoft.com/v7/site/Search.aspx?q=3150513)<br>Provides updated configuration and definitions for compatibility diagnostics performed on the system.<br>For more information about this KB, see <https://support.microsoft.com/kb/3150513><br>NOTE: KB2952664 must be installed before you can download and install KB3150513. |

IMPORTANT: Restart user computers after you install the compatibility update KBs for the first time.

If you are planning to enable IE Site Discovery, you will need to install a few additional KBs.

| **Site discovery** | **KB** |
|----------------------|-----------------------------------------------------------------------------|
| [Review site discovery](https://technet.microsoft.com/en-us/itpro/windows/deploy/upgrade-readiness-additional-insights#site-discovery)         | [KB3080149](http://www.catalog.update.microsoft.com/Search.aspx?q=3080149)<br>Updates the Diagnostic and Telemetry tracking service to existing devices. This update is only necessary on Windows 7 and Windows 8.1 devices. <br>For more information about this KB, see <https://support.microsoft.com/kb/3150513><br><br>Install the latest [Windows Monthly Rollup](http://catalog.update.microsoft.com/v7/site/Search.aspx?q=security%20monthly%20quality%20rollup). This functionality has been included in Internet Explorer 11 starting with the July 2016 Cumulative Update.  |

### Deploy the Upgrade Readiness deployment script

You can use the Upgrade Readiness deployment script to automate and verify your deployment. 

See [Upgrade Readiness deployment script](upgrade-readiness-deployment-script.md) for information on obtaining and running the script, and for a description of the error codes that can be displayed.

>After data is sent from computers to Microsoft, it generally takes 48 hours for the data to populate in Upgrade Readiness. The compatibility update KB takes several minutes to run. If the KB does not get a chance to finish running or if the computers are inaccessible (turned off or sleeping for example), data will take longer to populate in Upgrade Readiness. For this reason, you can expect most your computers to be populated in OMS in about 1-2 weeks after deploying the KB and configuration to user computers.

## Deploy Upgrade Readiness at scale

When you have completed a pilot deployment, you are ready to automate data collection and distribute the deployment script to the remaining computers in your organization.

### Automate data collection

To ensure that user computers are receiving the most up to date data from Microsoft, we recommend that you establish the following data sharing and analysis processes.

- Enable automatic updates for the compatibility update and related KBs. These KBs are updated frequently to include the latest application and driver issue information as we discover it during testing.
- Schedule the Upgrade Readiness deployment script to automatically run so that you don’t have to manually initiate an inventory scan each time the compatibility update KBs are updated. Computers are re-scanned only when the compatibility KBs are updated, so if your inventory changes significantly between KB releases you won’t see the changes in Upgrade Readiness until you run the script again.
- Schedule monthly user computer scans to view monthly active computer and usage information.

### Distribute the deployment script at scale

Use a software distribution system such as System Center Configuration Manager to distribute the Upgrade Readiness deployment script at scale. For more information, see the [Upgrade Readiness blog](https://blogs.technet.microsoft.com/upgradeanalytics/2016/09/20/new-version-of-the-upgrade-analytics-deployment-script-available/).