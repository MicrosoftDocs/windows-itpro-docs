---
title: Get started with Update Compliance (Windows 10)
description: Explains how to configure Update Compliance.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
---

# Get started with Upgrade Compliance

This topic explains the steps necessary to configure your environment for Windows Analytics: Update Compliance. 

Steps are provided in sections that follow the recommended setup process:
1.	Ensure that [prerequisites](#update-compliance-prerequisites) are met.
2.	[Add Update Compliance](#add-update-compliance-to-microsoft-operatiions-management-suite) to Microsoft Operations Management Suite
3.	[Deploy your Commercial ID](#deploy-your-commercial-id-to-your-windows-10-devices) to your organization’s devices

## Update Compliance Prerequisites

Update Compliance has the following requirements: 
1. Update Compliance is currently only compatible with Windows 10 devices. The solution is intended to be used with desktop devices (Windows 10 workstations and laptops). 
2. The solution requires that Windows 10 telemetry is enabled on all devices that are intended to be displayed in the solution. These devices must have at least the [basic level of telemetry](https://technet.microsoft.com/itpro/windows/manage/configure-windows-telemetry-in-your-organization#basic-level) enabled. To learn more about Windows telemetry, see [Configure Windows telemetry in your organization](configure-windows-telemetry-in-your-organization.md). 
3. The telemetry of your organization’s Windows devices must be successfully transmitted it to Microsoft. Microsoft has specified endpoints for different aspects of telemetry, which must be whitelisted by your organization so the data can be transmitted. The following table was taken from the article on telemetry endpoints and summarizes the use of each endpoint:

    <TABLE BORDER=1>
    <TR><TH BGCOLOR=blue>Service<TH BGCOLOR=blue>Endpoint
    <TR><TD>Connected User Experience and Telemetry component<TD>v10.vortex-win.data.microsoft.com
    <BR>settings-win.data.microsoft.com
    <TR><TD>Windows Error Reporting	<TD>watson.telemetry.microsoft.com
    <TR><TD>Online Crash Analysis	<TD>oca.telemetry.microsoft.com
    </TABLE>

## Add Update Compliance to Microsoft Operations Management Suite

Update Compliance is offered as a solution in the Microsoft Operations Management Suite (OMS), a collection of cloud-based servicing for monitoring and automating your on-premises and cloud environments. For more information about OMS, see [Operations Management Suite overview](https://azure.microsoft.com/en-us/documentation/articles/operations-management-suite-overview/). 

If you are already using OMS, you’ll find Update Compliance in the Solutions Gallery. Select the **Update Compliance** tile in the gallery and then click **Add** on the solution's details page. Update Compliance is now visible in your workspace.

If you are not yet using OMS, use the following steps to subscribe to OMS Update Compliance:

<TABLE>
<TR><TH>Step<TH>Procedure<TH>Example (click image to view)
<TR><TD VALIGN=top>1<TD VALIGN=top>Go to [Operations Management Suite’s page](https://www.microsoft.com/en-us/cloud-platform/operations-management-suite) on Microsoft.com and click **Sign in**.<TD><A HREF="images/uc-02.png" onClick="MyWindow=window.open('images/uc-02.png','MyWindow'); return false;"><img src="images/uc-02.png" width="213"></A>
</TABLE>

1.	Go to [Operations Management Suite’s page](https://www.microsoft.com/en-us/cloud-platform/operations-management-suite) on Microsoft.com and click **Sign in**.

![OMS](images/uc-02.png)

2.	Sign in to Operations Management Suite (OMS). You can use either a Microsoft Account or a Work or School account to create a workspace. If your company is already using Azure Active Directory (Azure AD), use a Work or School account when you sign in to OMS. Using a Work or School account allows you to use identities from your Azure AD to manage permissions in OMS.
3.	Create a new OMS workspace. 
4.	Enter a name for the workspace, select the workspace region, and provide the email address that you want associated with this workspace. Select Create.
5.	If your organization already has an Azure subscription, you can link it to your workspace. Note that you may need to request access from your organization’s Azure administrator. If your organization does not have an Azure subscription, create a new one or select the default OMS Azure subscription from the list. If you do not yet have an Azure subscription, follow this guide to create and link an Azure subscription to an OMS workspace.
6.	To add the Update Compliance solution to your workspace, go to the Solutions Gallery. 
7.	Select the Update Compliance tile in the gallery and then select Add on the solution’s details page. Note that you may need to scroll to find Update Compliance. The solution is now visible on your workspace. 
8.	Click the Update Compliance tile to configure the solution. The Settings Dashboard opens.
9.	Click “Subscribe” to subscribe to OMS Update Compliance. You will then need to distribute your Commercial ID across all your organization’s devices. More information on the Commercial ID is provided below.

After you are subscribed to OMS Update Compliance and your devices have a Commercial ID, you will begin receiving data. It will typically take 24 hours for the first data to begin appearing. The following section explains how to deploy your Commercial ID to your Windows 10 devices.

## Deploy your Commercial ID to your Windows 10 devices

For your devices to show up in Windows Analytics: Update Compliance, they must be configured with your organization’s Commercial ID. This is so that Microsoft knows that a given device is a member of your organization and to feed that device’s data back to you. There are two primary methods for widespread deployment of your Commercial ID: using Microsoft’s Group Policy (GP) and using Microsoft Mobile Device Management (MDM). 

- Using Microsoft Group Policy (GP)
Deploying your Commercial ID using GP can be accomplished through Microsoft Group Policy Management Console (GPMC), or through an individual device’s Local Group Policy Editor.
    1. From the user interface, navigate to Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds
    2. Double-click Commercial ID
    3. In the Options box, provide the Commercial ID GUID provided to you, and then click OK.

- Using Microsoft Mobile Device Management (MDM)
Microsoft’s Mobile Device Management can be used to deploy your Commercial ID to your organization’s devices. The Commercial ID is listed under Provider/ProviderID/CommercialID. More information on deployment through MDM can be found here.  


