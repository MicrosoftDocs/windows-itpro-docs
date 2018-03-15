---
title: Get started with Upgrade Readiness (Windows 10)
description: Explains how to get started with Upgrade Readiness.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: jaimeo
ms.date: 03/18/2018
---

# Get started with Upgrade Readiness

This topic explains how to obtain and configure Upgrade Readiness for your organization. 

You can use Upgrade Readiness to plan and manage your upgrade project end-to-end. Upgrade Readiness works by establishing communications between computers in your organization and Microsoft. Upgrade Readiness collects computer, application, and driver data for analysis. This data is used to identify compatibility issues that can block your upgrade and to suggest fixes that are known to Microsoft.

Before you begin, consider reviewing the following helpful information:<BR>
    - [Upgrade Readiness requirements](upgrade-readiness-requirements.md): Provides detailed requirements to use Upgrade Readiness.<BR>
    - [Upgrade Readiness blog](https://blogs.technet.microsoft.com/UpgradeAnalytics): Contains announcements of new features and provides helpful tips for using Upgrade Readiness.

>If you are using System Center Configuration Manager, also check out information about how to integrate Upgrade Readiness with Configuration Manager: [Integrate Upgrade Readiness with System Center Configuration Manager](https://docs.microsoft.com/sccm/core/clients/manage/upgrade/upgrade-analytics).

When you are ready to begin using Upgrade Readiness, perform the following steps:

1. Review [data collection and privacy](#data-collection-and-privacy) information.
2. [Add Upgrade Readiness to OMS](#add-upgrade-readiness-to-operations-management-suite).
3. [Enroll devices in Windows Analytics](#enroll-devices-in-windows-analytics).
4. [Use Upgrade Readiness to manage Windows Upgrades](#use-upgrade-readiness-to-manage-windows-upgrades) once your devices are enrolled.

## Data collection and privacy 

To enable system, application, and driver data to be shared with Microsoft, you must configure user computers to send data. For information about what diagnostic data Microsoft collects and how that data is used and protected by Microsoft, see the following topics, refer to [Frequently asked questions and troubleshooting Windows Analytics](https://docs.microsoft.com/windows/deployment/update/windows-analytics-FAQ-troubleshooting.md), which discusses the issues and provides links to still more detailed information.

## Add Upgrade Readiness to Operations Management Suite

Upgrade Readiness is offered as a solution in the Microsoft Operations Management Suite (OMS), a collection of cloud based services for managing your on-premises and cloud environments. For more information about OMS, see [Operations Management Suite overview](http://azure.microsoft.com/documentation/articles/operations-management-suite-overview/).

>[!IMPORTANT]
>Upgrade Readiness is a free solution for Azure subsribers. When configured correctly, all data associated with the Upgrade Readiness solution are exempt from billing in both OMS and Azure. Upgrade Readiness data **do not** count toward OMS daily upload limits.

If you are already using OMS, you’ll find Upgrade Readiness in the Solutions Gallery. Select the **Upgrade Readiness** tile in the gallery and then click **Add** on the solution's details page. Upgrade Readiness is now visible in your workspace. While you have this dialog open, you should also consider adding the [Device Health](../update/device-health-monitor.md) and [Update Compliance](../update/update-compliance-monitor.md) solutions as well, if you haven't already. To do so, just select the check boxes for those solutions.

If you are not using OMS:

1.  Go to the [Upgrade Readiness page on Microsoft.com](https://go.microsoft.com/fwlink/?LinkID=799190&clcid=0x409) and select **New Customers >** to start the process.
2.  Sign in to Operations Management Suite (OMS). You can use either a Microsoft Account or a Work or School account to create a workspace. If your company is already using Azure Active Directory (Azure AD), use a Work or School account when you sign in to OMS. Using a Work or School account allows you to use identities from your Azure AD to manage permissions in OMS.
3.  Create a new OMS workspace. Enter a name for the workspace, select the workspace region, and provide the email address that you want associated with this workspace. Select **Create**.
4.  If your organization already has an Azure subscription, you can link it to your workspace. Note that you may need to request access from your organization’s Azure administrator.

    > If your organization does not have an Azure subscription, create a new one or select the default OMS Azure subscription from the list. Your workspace opens.

5.  To add the Upgrade Readiness solution to your workspace, go to the **Solutions Gallery**. Select the **Upgrade Readiness** tile in the gallery and then select **Add** on the solution’s details page. The solution is now visible on your workspace. Note that you may need to scroll to find Upgrade Readiness.

## Enroll devices in Windows Analytics

Once you've added Update Compliance to Microsoft Operations Management Suite, you can now start enrolling the devices in your organization. For full instructions, see [Enrolling devices in Windows Analytics](https://docs.microsoft.com/windows/deployment/update/windows-analytics-get-started.md).

### Connection settings

The settings that are used to enable client computers to connect to Windows diagnostic data depend on the type of connection scenario you use. These scenarios are discussed in [this blog post](https://blogs.technet.microsoft.com/upgradeanalytics/2017/03/10/understanding-connectivity-scenarios-and-the-deployment-script/) and are summarized below.

| **Connection scenario** | **ClientProxy setting** <BR>in **runconfig.bat**  | **Local computer configuration** |
|---------------------------------------------------------|-----------|-----------|
| Direct connection to the Internet (no proxy) | **ClientProxy=Direct** | No additional configuration necessary |
| WinHTTP proxy  | **ClientProxy=System**  | Specify `netsh winhttp set proxy <server>:<port>` on client computers |
| Other proxy  |  **ClientProxy=User** | Configure the Windows Registry value: <p style="font-size: 12px"> **HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection\DisableEnterpriseAuthProxy** </p> to 0 on client computers |

### Automate data collection

To ensure that user computers are receiving the most up to date data from Microsoft, we recommend that you establish the following data sharing and analysis processes.

- Enable automatic updates for the compatibility update and related KBs. These KBs are updated frequently to include the latest application and driver issue information as we discover it during testing.
- Schedule the Upgrade Readiness deployment script to automatically run so that you don’t have to manually initiate an inventory scan each time the compatibility update KBs are updated. 
- Schedule monthly user computer scans to view monthly active computer and usage information.

>When you run the deployment script, it initiates a full scan. The daily scheduled task to capture the deltas is created when the update package is installed. For Windows 10 devices, it's already part of the OS. A full scan averages about 2 MB, but the delta scans are very small. The scheduled task is named **Windows Compatibility Appraiser** and can be found in the Task Scheduler Library under Microsoft > Windows > Application Experience. Deltas are invoked via the nightly scheduled task. It attempts to run around 3:00AM every day. If the system is powered off at that time, the task will run when the system is turned on. 

## Use Upgrade Readiness to manage Windows Upgrades

Now that your devices are enrolled, you can move on to [Use Upgrade Readiness to manage Windows Upgrades](https://docs.microsoft.com/windows/deployment/upgrade/use-upgrade-readiness-to-manage-windows-upgrades).
