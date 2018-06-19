---
title: Get started with Update Compliance (Windows 10)
description: Configure Update Compliance in OMS to see the status of updates and antimalware protection on devices in your network.
keywords: update compliance, oms, operations management suite, prerequisites, requirements, updates, upgrades, antivirus, antimalware, signature, log analytics, wdav
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: Jaimeo
ms.author: jaimeo
ms.date: 03/15/2018
ms.localizationpriority: high
---

# Get started with Update Compliance

This topic explains the steps necessary to configure your environment for Windows Analytics: Update Compliance. 

Steps are provided in sections that follow the recommended setup process:
1. [Add Update Compliance](#add-update-compliance-to-microsoft-operations-management-suite) to Microsoft Operations Management Suite.
2. [Enroll devices in Windows Analytics](#enroll-devices-in-windows-analytics) to your organization’s devices.
3. [Use Update Compliance to monitor Windows Updates](#use-update-compliance-to-monitor-windows-updates) once your devices are enrolled.



## Add Update Compliance to Microsoft Operations Management Suite or Azure Log Analytics

Update Compliance is offered as a solution in the Microsoft Operations Management Suite (OMS), a collection of cloud-based servicing for monitoring and automating your on-premise and cloud environments. For more information about OMS, see [Operations Management Suite overview](https://azure.microsoft.com/en-us/documentation/articles/operations-management-suite-overview/) or the Azure [Log Analytics overview](https://azure.microsoft.com/services/log-analytics/).

>[!IMPORTANT]
>Update Compliance is a free solution for Azure subscribers.

If you are already using OMS, skip to step **6** to add Update Compliance to your workspace.

>[!NOTE]
>If you are already using OMS, you can also follow [this link](https://portal.mms.microsoft.com/#Workspace/ipgallery/details/details/index?IPId=WaaSUpdateInsights) to go directly to the Update Compliance solution and add it to your workspace.


If you are not yet using OMS, use the following steps to subscribe to OMS Update Compliance:

1.	Go to [Operations Management Suite](https://www.microsoft.com/en-us/cloud-platform/operations-management-suite) on Microsoft.com and click **Sign in**.   
  ![Operations Management Suite bar with sign-in button](images/uc-02a.png)  
  
2.	Sign in to Operations Management Suite (OMS). You can use either a Microsoft Account or a Work or School account to create a workspace. If your company is already using Azure Active Directory (Azure AD), use a Work or School account when you sign in to OMS. Using a Work or School account allows you to use identities from your Azure AD to manage permissions in OMS.   
  ![OMS Sign-in dialog box for account name and password](images/uc-03a.png)  
  
3.	Create a new OMS workspace.   
  ![OMS dialog with buttons to create a new OMS workspace or cancel](images/uc-04a.png)  
   
4.	Enter a name for the workspace, select the workspace region, and provide the email address that you want associated with this workspace. Click **Create**.   
  ![OMS Create New Workspace dialog](images/uc-05a.png)](images/uc-05.png)
  
5.	If your organization already has an Azure subscription, you can link it to your workspace. Note that you may need to request access from your organization’s Azure administrator. If your organization does not have an Azure subscription, create a new one or select the default OMS Azure subscription from the list. If you do not yet have an Azure subscription, follow [this guide](https://blogs.technet.microsoft.com/upgradeanalytics/2016/11/08/linking-operations-management-suite-workspaces-to-microsoft-azure/) to create and link an Azure subscription to an OMS workspace.  
  ![OMS dialog to link existing Azure subscription or create a new one](images/uc-06a.png)  
  
6.	To add the Update Compliance solution to your workspace, go to the Solutions Gallery.  While you have this dialog open, you should also consider adding the [Upgrade Readiness](../upgrade/use-upgrade-readiness-to-manage-windows-upgrades.md) and [Device Health](device-health-monitor.md) solutions as well, if you haven't already. To do so, just select the check boxes for those solutions.   
  ![OMS workspace with Solutions Gallery tile highlighted](images/uc-07a.png)   
  
7.	Select the **Update Compliance** tile in the gallery and then select **Add** on the solution’s details page. You might need to scroll to find **Update Compliance**. The solution is now visible in your workspace.   
  ![Workspace showing Solutions Gallery](images/uc-08a.png)  
  
8.	Click the **Update Compliance** tile to configure the solution. The **Settings Dashboard** opens.   
  ![OMS workspace with new Update Compliance tile on the right side highlighted](images/uc-09a.png)  
  
9.	Click **Subscribe** to subscribe to OMS Update Compliance. You will then need to distribute your Commercial ID across all your organization’s devices. More information on the Commercial ID is provided below.   
  ![Series of blades showing Connected Sources, Windows Diagnostic Data, and Upgrade Analytics solution with Subscribe button](images/uc-10a.png)  
  
After you are subscribed to OMS Update Compliance and your devices have a Commercial ID, you will begin receiving data. It will typically take 24 hours for the first data to begin appearing. The following section explains how to deploy your Commercial ID to your Windows 10 devices.

>[!NOTE]
>You can unsubscribe from the Update Compliance solution if you no longer want to monitor your organization’s devices. User device data will continue to be shared with Microsoft while the opt-in keys are set on user devices and the proxy allows traffic.

## Enroll devices in Windows Analytics

Once you've added Update Compliance to Microsoft Operations Management Suite, you can now start enrolling the devices in your organization. For full instructions, see [Enrolling devices in Windows Analytics](windows-analytics-get-started.md).


## Use Update Compliance to monitor Windows Updates

Once your devices are enrolled, you can starte to [Use Update Compliance to monitor Windows Updates](update-compliance-using.md).
