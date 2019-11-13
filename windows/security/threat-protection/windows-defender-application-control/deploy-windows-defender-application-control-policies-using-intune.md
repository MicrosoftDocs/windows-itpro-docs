---
title: Deploy Windows Defender Application Control (WDAC) policies by using Microsoft Intune (Windows 10)
description: Windows Defender Application Control restricts which applications users are allowed to run and the code that runs in the system core.
keywords: whitelisting, security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.date: 05/17/2018
---

> [!NOTE]
> For WDAC enhancements see [Delivering major enhancements in Windows Defender Application Control with the Windows 10 May 2019 Update](https://www.microsoft.com/security/blog/2019/07/01/). 

# Deploy Windows Defender Application Control policies by using Microsoft Intune

**Applies to:**

-   Windows 10
-   Windows Server 2016

You can use Microsoft Intune to configure Windows Defender Application Control (WDAC). Beginning in 1903, you can configure a custom profile using Custom OMA-URI to leverage the new ApplicationControl CSP. This CSP has support for [multiple policies](deploy-multiple-windows-defender-application-control-policies.md) and rebootless policies. Custom OMA-URI can also be used on pre-1903 systems to deploy custom policies.
Alternately, you can instead choose to configure an Endpoint Protection profile to deploy built-in Intune-managed WDAC policies on pre-1903 systems. Using Endpoint Protection, you can configure Windows 10 client computers to only run Windows components and Microsoft Store apps, or let them also run reputable apps defined by the Intelligent Security Graph.

## Custom OMA-URI profile
To use ApplicationControl CSP through custom OMA-URI, you must:
- Know a generated policy’s GUID, which can be found in the policy xml as `<PolicyID>` or `<PolicyTypeID>` for pre-1903 systems.
- Convert the policies to binary format using the ConvertFrom-CIPolicy cmdlet in order to be deployed. The binary policy may be signed or unsigned.

If you are using hybrid MDM management with System Center Configuration Manager (SCCM) or using Intune, the steps to use Custom OMA-URI functionality to apply the Code Integrity policy are:
- In the Intune portal, navigate to Device configuration, then Profiles, then create a profile with Custom OMA-URI Settings and add a row.
- OMA-URI: ./Vendor/MSFT/ApplicationControl/Policies/Policy GUID/Policy
- Data type: Base64
- Certificate file: upload your binary format policy file.

## Endpoint Protection profile
1. Open the Microsoft Intune portal and click **Device configuration** > **Profiles** > **Create profile**.

3. Type a name for the new profile, select **Windows 10 and later** as the **Platform** and **Endpoint protection** as the **Profile type**.  

   ![Configure profile](images/wdac-intune-create-profile-name.png)

4. Click **Configure** > **Windows Defender Application Control**, choose from the following settings and then click **OK**:

   - **Application control code intergity policies**: Select **Audit only** to log events but not block any apps from running or select **Enforce** to allow only Windows components and Store apps to run.  
   - **Trust apps with good reputation**: Select **Enable** to allow reputable apps as defined by the Intelligent Security Graph to run in addition to Windows components and Store apps.

   ![Configure WDAC](images/wdac-intune-wdac-settings.png)
