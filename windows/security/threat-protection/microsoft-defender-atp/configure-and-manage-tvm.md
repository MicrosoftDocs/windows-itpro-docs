---
title: Configure Threat & Vulnerability Management in Microsoft Defender ATP
ms.reviewer: 
description: Configure your Threat & Vulnerability Management to allow security administrators and IT administrators to collaborate seamlessly to remediate issues via Microsoft intune and Microsoft System Center Configuration Manager (SCCM) integrations.
keywords: RBAC, Threat & Vulnerability Management configuration, Threat & Vulnerability Management integrations, Microsft Intune integration with TVM, SCCM integration with TVM  
search.product: Windows 10
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: mjcaparas
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---
# Configure Threat & Vulnerability Management
**Applies to:**
- [Microsoft Defender Advanced Threat Protection Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

[!include[Prerelease information](prerelease.md)]

This section guides you through the steps you need to take to configure Threat & Vulnerability Management's integration with Microsoft Intune or Microsoft System Center Configuration Manager (SCCM) for a seamless collaboration of issue remediation.

### Before you begin
> [!IMPORTANT]
> Threat & Vulnerability Management data currently supports Windows 10 machines. Upgrade to Windows 10 to account for the rest of your devices’ threat and vulnerability exposure data.</br>

Ensure that you have the right RBAC permissions to configure your Threat & Vulnerability Management integration with Microsoft Intune or Microsoft System Center Configuration Manager (SCCM).   

>[!WARNING] 
>Only Intune and SCCM enrolled devices are supported in this scenario.</br>
>Use any of the following options to enroll devices in Intune:
>- IT Admin: For more information on how to enabling auto-enrollment, see [Windows Enrollment](https://docs.microsoft.com/intune/windows-enroll#enable-windows-10-automatic-enrollment)
>- End-user: For more information on how to enroll your Windows 10 device in Intune, see [Enroll your Windows 10 device in Intune](https://docs.microsoft.com/intune-user-help/enroll-your-w10-device-access-work-or-school)
>- End-user alternative: For more information on joining an Azure AD domain, see [Set up Azure Active Directory joined devices](https://docs.microsoft.com/azure/active-directory/device-management-azuread-joined-devices-setup).

## Related topics
- [Risk-based Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md)
- [Threat & Vulnerability Management dashboard overview](tvm-dashboard-insights.md)
- [Configuration score](configuration-score.md)
- [Scenarios](threat-and-vuln-mgt-scenarios.md)
