---
title: Get started with Update Compliance (Windows 10)
description: Configure Update Compliance in Azure Portal to see the status of updates and antimalware protection on devices in your network.
keywords: update compliance, oms, operations management suite, prerequisites, requirements, updates, upgrades, antivirus, antimalware, signature, log analytics, wdav
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: Jaimeo
ms.author: jaimeo
ms.localizationpriority: medium
ms.collection: M365-analytics
ms.topic: article
---

# Get started with Update Compliance
This topic explains the steps necessary to configure your environment for Windows Analytics: Update Compliance.

Steps are provided in sections that follow the recommended setup process:

1. Ensure you meet the [Update Compliance prerequisites](#update-compliance-prerequisites).
2. [Add Update Compliance to your Azure subscription](#add-update-compliance-to-your-azure-subscription).
3. [Enroll devices in Windows Analytics](#enroll-devices-in-windows-analytics).
4. [Use Update Compliance](update-compliance-using.md) to monitor Windows Updates, Windows Defender Antivirus status, and Delivery Optimization.

## Update Compliance prerequisites
Before you begin the process to add Update Compliance to your Azure subscription, first ensure you can meet the prerequisites:
1.	Update Compliance works only with Windows 10 Professional, Education, and Enterprise editions. Update Compliance only provides data for the standard Desktop Windows 10 version and is not currently compatible with Windows Server, Surface Hub, IoT, etc. 
2.	Update Compliance provides detailed deployment data for devices on the Semi-Annual Channel and the Long-term Servicing Channel. Update Compliance will show Windows Insider Preview devices, but currently will not provide detailed deployment information for them.
3.	Update Compliance requires at least the Basic level of diagnostic data and a Commercial ID to be enabled on the device. 
4.	To show device names for versions of Windows 10 starting with 1803 in Windows Analytics you must opt in. For details about this, see the "AllowDeviceNameinTelemetry (in Windows 10)" entry in the table in the [Distributing policies at scale](windows-analytics-get-started.md#deploying-windows-analytics-at-scale) section of [Enrolling devices in Windows Analytics](windows-analytics-get-started.md).
5.	To use the Windows Defender Status, devices must be E3-licensed and have Cloud Protection enabled. E5-licensed devices will not appear here. For E5 devices, you should use [Windows Defender ATP](https://docs.microsoft.com/sccm/protect/deploy-use/windows-defender-advanced-threat-protection) instead. For more information on Windows 10 Enterprise licensing, see [Windows 10 Enterprise: FAQ for IT Professionals](https://docs.microsoft.com/windows/deployment/planning/windows-10-enterprise-faq-itpro).

## Add Update Compliance to your Azure subscription
Update Compliance is offered as a solution which is linked to a new or existing [Azure Log Analytics](https://docs.microsoft.com/azure/log-analytics/query-language/get-started-analytics-portal) workspace within your Azure subscription. To configure this, follow these steps:

1.	Sign in to the [Azure Portal](https://portal.azure.com) with your work or school account or a Microsoft account. If you don't already have an Azure subscription you can create one (including free trial options) through the portal.

> [!NOTE]
> Update Compliance is included at no additional cost with Windows 10 Professional, Education, and Enterprise editions. An Azure subscription is required for managing and using Update Compliance, but no Azure charges are expected to accrue to the subscription as a result of using Update Compliance. 

2.	In the Azure portal select **+ Create a resource**, and search for “Update Compliance". You should see it in the results below. 

![Update Compliance marketplace search results](images/UC_00_marketplace_search.png)

3.	Select **Update Compliance** and a blade will appear summarizing the solution’s offerings. At the bottom, select **Create** to begin adding the solution to Azure.

![Update Compliance solution creation](images/UC_01_marketplace_create.png)

4.	Choose an existing workspace or create a new workspace that will be assigned to the Update Compliance solution. 
    - If you already have another Windows Analytics solution, you should use the same workspace. 
    - If you are creating a new workspace, and your organization does not have policies governing naming conventions and structure, consider the following workspace settings to get started:
        - Choose a workspace name which reflects the scope of planned usage in your organization, for example *PC-Analytics*.
        - For the resource group setting select **Create new** and use the same name you chose for your new workspace.
        - For the location setting, choose the Azure region where you would prefer the data to be stored.
        - For the pricing tier select **per GB**.

![Update Compliance workspace creation](images/UC_02_workspace_create.png)

5.	The resource group and workspace creation process could take a few minutes. After this, you are able to use that workspace for Update Compliance. Select **Create**.

![Update Compliance workspace selection](images/UC_03_workspace_select.png)

6.	Watch for a notification in the Azure portal that your deployment has been successful. This might take a few minutes. Then, select **Go to resource**. 

![Update Compliance deployment successful](images/UC_04_resourcegrp_deployment_successful.png)

## Enroll devices in Windows Analytics
Once you've added Update Compliance to a workspace in your Azure subscription, you can start enrolling the devices in your organization. For Update Compliance there are two key steps for enrollment:
1.	Deploy your Commercial ID (from the Update Compliance Settings page) to your Windows 10 devices (typically by using Group Policy, [Mobile Device Management](https://docs.microsoft.com/windows/client-management/windows-10-mobile-and-mdm), [System Center Configuration Manager](https://docs.microsoft.com/sccm/core/understand/introduction) or similar).
2.	Ensure the Windows Diagnostic Data setting on devices is set to at least Basic (typically using Group Policy or similar). For full enrollment instructions and troubleshooting, see [Enrolling devices in Windows Analytics](windows-analytics-get-started.md).

After enrolling your devices (by deploying your CommercialID and Windows Diagnostic Data settings), it might take 48-72 hours for the first data to appear in the solution. Until then, Update Compliance will indicate it is still assessing devices. 
