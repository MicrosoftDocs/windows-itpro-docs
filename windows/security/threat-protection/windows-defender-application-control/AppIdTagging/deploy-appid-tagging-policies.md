---
title: Deploying Windows Defender Application Control AppId Tagging policies (Windows)
description: How to deploy your WDAC AppId Tagging policies locally and globally within your managed environment
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jgeurten
ms.reviewer: jsuther1974
ms.author: dansimp
manager: dansimp
ms.date: 04/27/2022
ms.technology: windows-sec
---

# Use multiple Windows Defender Application Control Policies

**Applies to:**

-   Windows 10
-   Windows 11
-   Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](../feature-availability.md).

Similar to WDAC Application Control policies, WDAC AppId Tagging policies can be deployed locally and to your managed endpoints several ways. Once you've created your AppId Tagging policy, use one of the following methods to deploy:

1. [Deploy policies with MDM](#Deploy-AppId-Tagging-Policies-with-MDM)
1. [Deploy policies with MEMCM](#Deploy-AppId-Tagging-Policies-with-MEMCM)
1. [Deploy policies using scripting](#Deploy-AppId-Tagging-Policies-via-Scripting)
1. [Deploy using the ApplicationControl CSP](#Deploying-policies-via-the-ApplicationControl-CSP)

## Deploy AppId Tagging Policies with MDM

While policies can't be created in MDM, custom AppId Tagging policies can be deployed to endpoints using [the OMA-URI feature in MDM](../deploy-windows-defender-application-control-policies-using-intune.md#deploy-wdac-policies-with-custom-oma-uri). 

## Deploy AppId Tagging Policies with MEMCM

Similar to MDM, policies can only be deployed via MEMCM not created. Using the [deployment task sequences](/deployment/deploy-windows-defender-application-control-policies-with-memcm.md#deploy-custom-wdac-policies-using-packagesprograms-or-task-sequences), policies can be deployed to your managed endpoints and users. 

### Deploy AppId Tagging Policies via Scripting

Scripting hosts can be used to deploy AppId Tagging policies as well. This approach is often best suited for local deployment, but works for deployment to managed endpoints and users too. The [Deploy WDAC policies using script topic](/deployment/deploy-wdac-policies-with-script.md) describes how to deploy WDAC AppId Tagging policies via scripting. Only the method for deploying to version 1903 and above is applicable for AppId Tagging policies. 

### Deploying policies via the ApplicationControl CSP

Multiple WDAC policies can be managed from an MDM server through ApplicationControl configuration service provider (CSP). The CSP also provides support for rebootless policy deployment.

However, when policies are unenrolled from an MDM server, the CSP will attempt to remove every policy from devices, not just the policies added by the CSP. The reason for this is that the ApplicationControl CSP doesn't track enrollment sources for individual policies, even though it will query all policies on a device, regardless if they were deployed by the CSP.

For more information, see [ApplicationControl CSP](/windows/client-management/mdm/applicationcontrol-csp) to deploy multiple policies, and optionally use MEM Intune's Custom OMA-URI capability.

> [!NOTE]
> WMI and GP do not currently support multiple policies. Instead, customers who can't directly access the MDM stack should use the [ApplicationControl CSP via the MDM Bridge WMI Provider](/windows/client-management/mdm/applicationcontrol-csp#powershell-and-wmi-bridge-usage-guidance) to manage Multiple Policy Format WDAC policies.