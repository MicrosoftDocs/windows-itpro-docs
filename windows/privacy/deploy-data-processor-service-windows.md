---
title: Technical Deployment of the data processor service for Windows Enterprise 
description: Use this article to understand how to deploy and manage the data processor service for Windows Enterprise.
keywords: privacy, GDPR
ms.localizationpriority: high
ROBOTS: NOINDEX, NOFOLLOW
ms.prod: w10
ms.topic: article
f1.keywords:
- NOCSH
ms.author: siosulli
author: dansimp
manager: dansimp
audience: itpro
ms.collection: 
- GDPR
- M365-security-compliance
---

# Data processor service for Windows Enterprise Overview 

>[!NOTE]
>This topic is intended for participants in the data processor service for Windows Enterprise preview program and requires acceptance of specific terms of use. To learn
more about the program and agree to the terms of use, see [https://aka.ms/WindowsEnterprisePublicPreview](https://aka.ms/WindowsEnterprisePublicPreview).

The privacy landscape keeps evolving, and with it, we make changes to our services to meet our customers’ needs. 
The data processor service for Windows Enterprise empowers you to be in control of diagnostic data from Windows devices, and act as data controllers for that data, under the definition of the European Union General Data Protection Regulation (GDPR). 

The data processor service for Windows Enterprise will serve as a foundation for other Microsoft services that use Windows diagnostic data. 

The data processor service for Windows Enterprise offering enables you to store and manage your Windows diagnostic data in the cloud, on top of an end-to-end data platform designed and built with compliance in mind, to help you meet your compliance obligations. 
Your data is routed and stored inside an enterprise compliance boundary, operating under a prescriptive and focused set of compliance requirements, in accordance with industry standards. 

The data processor service for Windows Enterprise provides you with controls that help respond to delete data subject requests (DSRs) on diagnostic data, at user account closure, for a specific Azure AD User ID. Additionally, you’re able to execute an export DSR for a specific Azure AD User ID. 
Should you desire so, Microsoft will accommodate a data processor service for Windows Enterprise tenant account closure, either because you decide to close your Azure or Azure AD tenant account, or because you decide you no longer wish to be the data controller for diagnostic data, but still wish to remain an Azure customer. 

>[!Note]
>Tenant account closure will lead to the deletion of all data associated with that tenant. 

## Deployment of data processor service for Windows Enterprise
Use the instructions below to easily manage the data processor service for Windows Enterprise using a single setting, through Group Policy, or an MDM solution, in Windows 10, version 1809 or Windows Server 2019 and newer. 

### Prerequisites 
#### Versions supported 
The data processor service for Windows Enterprise is currently supported on Windows 10, version 1809, and newer versions.

#### Network requirements 
The following endpoints need to be reachable from devices enrolled into the data processor service for Windows Enterprise:
 
 login.live.com

 cy2.vortex.data.microsoft.com.akadns.net 

 v10.events.data.microsoft.com 

 v10.vortex-win.data.microsoft.com/collect/v1 

For additional information, see the “device authentication” and “diagnostic data” sections in the endpoint articles for each respective Windows version: 

[Windows 10, version 1809 endpoints](./manage-windows-1809-endpoints.md)

[Windows 10, version 1903 endpoints](./manage-windows-1903-endpoints.md)

### Deploying data processor service for Windows Enterprise
You can use either Group Policy or an MDM solution to deploy the data processor service for Windows Enterprise to your supported devices.

In Group Policy, to enable data collection through the data processor service for Windows Enterprise, go to **Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds** and switch the **Allow commercial data pipeline** setting to **enabled**. 

If you wish to disable, at any time, switch the same setting to **disabled**. The default state of the above setting is **disabled**.

To use an MDM solution, such as [Microsoft Intune](/intune/custom-settings-Windows-10), to deploy the data processor service for Windows Enterprise to your supported devices, use the following custom OMA-URI setting configuration:

- **Name:** System/AllowCommercialDataPipeline 
- **OMA-URI:** ./Vendor/MSFT/Policy/Config/System/AllowCommercialDataPipeline 
- **Data type:** Integer 

Under **Value**, use **1** to enable the service. 

If you wish to disable, at any time, switch the same setting to **0** to disable. The default is **0**. 

>[!Note]
>Data collected from a device, before it was enrolled into the data processor service for Windows Enterprise, will not be moved into the enterprise compliance boundary. 

## Managing data processor service for Windows Enterprise 
### Executing user-based data subject requests (DSRs) 
To perform user-based DSRs, the data processor service for Windows Enterprise requires your organization to be reflected in Azure AD. 

If your environment is cloud-only and managed in Azure, or all your devices are Azure AD joined - you don’t need to take any further action. 

If your environment uses on-premises Active Directory to manage identities - Azure AD Connect synchronization is required, and your environment needs to be configured for hybrid Azure AD join. 
To learn more, visit [How To: Plan your hybrid Azure Active Directory join implementation](/azure/active-directory/devices/hybrid-azuread-join-plan) and [Azure AD Connect sync: Understand and customize synchronization](/azure/active-directory/hybrid/how-to-connect-sync-whatis).

Once you have Azure AD join or hybrid Azure AD join in place, you can learn more about executing user-based DSRs, by visiting this [page](https://review.docs.microsoft.com/microsoft-365/compliance/gdpr-dsr-windows?branch=siosulli-wps&view=o365-worldwide).

## Geo-location 
Windows Diagnostic Data collected through the data processor service for Windows Enterprise is hosted in our datacenter in the United States.