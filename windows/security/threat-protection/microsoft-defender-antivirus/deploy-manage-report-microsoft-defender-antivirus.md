---
title: Deploy, manage, and report on Microsoft Defender Antivirus
description: You can deploy and manage Microsoft Defender Antivirus with Intune, Microsoft Endpoint Configuration Manager, Group Policy, PowerShell, or WMI
keywords: deploy, manage, update, protection, Microsoft Defender Antivirus
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 09/03/2018
ms.reviewer: 
manager: dansimp
ms.technology: mde
---

# Deploy, manage, and report on Microsoft Defender Antivirus

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

You can deploy, manage, and report on Microsoft Defender Antivirus in a number of ways.

Because the Microsoft Defender Antivirus client is installed as a core part of Windows 10, traditional deployment of a client to your endpoints does not apply.

However, in most cases you will still need to enable the protection service on your endpoints with Microsoft Intune, Microsoft Endpoint Configuration Manager, Azure Defender, or Group Policy Objects, which is described in the following table.

You'll also see additional links for:

- Managing Microsoft Defender Antivirus protection, including managing product and protection updates
- Reporting on Microsoft Defender Antivirus protection

> [!IMPORTANT]
> In most cases, Windows 10 will disable Microsoft Defender Antivirus if it finds another antivirus product that is running and up-to-date. You must disable or uninstall third-party antivirus products before Microsoft Defender Antivirus will function. If you re-enable or install third-party antivirus products, then Windows 10 automatically disables Microsoft Defender Antivirus.

Tool|Deployment options (<a href="#fn2" id="ref2">2</a>)|Management options (network-wide configuration and policy or baseline deployment) ([3](#fn3))|Reporting options  
---|---|---|---  
Microsoft Intune|[Add endpoint protection settings in Intune](/intune/endpoint-protection-configure)|[Configure device restriction settings in Intune](/intune/device-restrictions-configure)| [Use the Intune console to manage devices](/intune/device-management)  
Microsoft Endpoint Manager ([1](#fn1))|Use the [Endpoint Protection point site system role][] and [enable Endpoint Protection with custom client settings][]|With [default and customized antimalware policies][] and [client management][]|With the default [Configuration Manager Monitoring workspace][] and [email alerts][]  
Group Policy and Active Directory (domain-joined)|Use a Group Policy Object to deploy configuration changes and ensure Microsoft Defender Antivirus is enabled.|Use Group Policy Objects (GPOs) to [Configure update options for Microsoft Defender Antivirus][] and [Configure Windows Defender features][]|Endpoint reporting is not available with Group Policy. You can generate a list of [Group Policies to determine if any settings or policies are not applied][]
PowerShell|Deploy with Group Policy, Microsoft Endpoint Configuration Manager, or manually on individual endpoints.|Use the [Set-MpPreference] and [Update-MpSignature] cmdlets available in the Defender module.|Use the appropriate [Get- cmdlets available in the Defender module][]
Windows Management Instrumentation|Deploy with Group Policy, Microsoft Endpoint Configuration Manager, or manually on individual endpoints.|Use the [Set method of the MSFT_MpPreference class][] and the [Update method of the MSFT_MpSignature class][]|Use the [MSFT_MpComputerStatus][] class and the get method of associated classes in the [Windows Defender WMIv2 Provider][]
Microsoft Azure|Deploy Microsoft Antimalware for Azure in the [Azure portal, by using Visual Studio virtual machine configuration, or using Azure PowerShell cmdlets](/azure/security/azure-security-antimalware#antimalware-deployment-scenarios). You can also [Install Endpoint protection in Azure Defender*](/azure/security-center/security-center-install-endpoint-protection)|Configure [Microsoft Antimalware for Virtual Machines and Cloud Services with Azure PowerShell cmdlets](/azure/security/azure-security-antimalware#enable-and-configure-antimalware-using-powershell-cmdlets) or [use code samples](https://gallery.technet.microsoft.com/Antimalware-For-Azure-5ce70efe)|Use [Microsoft Antimalware for Virtual Machines and Cloud Services with Azure PowerShell cmdlets](/azure/security/azure-security-antimalware#enable-and-configure-antimalware-using-powershell-cmdlets) to enable monitoring. You can also review usage reports in Azure Active Directory to determine suspicious activity, including the [Possibly infected devices][] report and configure an SIEM tool to report on [Microsoft Defender Antivirus events][] and add that tool as an app in AAD.

1. <span id="fn1" />The availability of some functions and features, especially related to cloud-delivered protection, differ between Microsoft Endpoint Manager (Current Branch) and System Center 2012 Configuration Manager. In this library, we've focused on Windows 10, Windows Server 2016, and Microsoft Endpoint Manager (Current Branch). See [Use Microsoft cloud-provided protection in Microsoft Defender Antivirus](utilize-microsoft-cloud-protection-microsoft-defender-antivirus.md) for a table that describes the major differences. [(Return to table)](#ref2)
  
2.	<span id="fn2" />In Windows 10, Microsoft Defender Antivirus is a component available without installation or deployment of an additional client or service. It will automatically be enabled when third-party antivirus products are either uninstalled or out of date ([except on Windows Server 2016](microsoft-defender-antivirus-on-windows-server-2016.md)). Traditional deployment therefore is not required. Deployment here refers to ensuring the Microsoft Defender Antivirus component is available and enabled on endpoints or servers. [(Return to table)](#ref2)

3. <span id="fn3" />Configuration of features and protection, including configuring product and protection updates, are further described in the [Configure Microsoft Defender Antivirus features](configure-notifications-microsoft-defender-antivirus.md) section in this library. [(Return to table)](#ref2)

[Endpoint Protection point site system role]: /configmgr/protect/deploy-use/endpoint-protection-site-role
[default and customized antimalware policies]:  /configmgr/protect/deploy-use/endpoint-antimalware-policies
[client management]:  /configmgr/core/clients/manage/manage-clients
[enable Endpoint Protection with custom client settings]:  /configmgr/protect/deploy-use/endpoint-protection-configure-client
[Configuration Manager Monitoring workspace]:  /configmgr/protect/deploy-use/monitor-endpoint-protection
[email alerts]:  /configmgr/protect/deploy-use/endpoint-configure-alerts
[Deploy the Microsoft Intune client to endpoints]: /intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune
[custom Intune policy]:  /intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune#configure-microsoft-intune-endpoint-protection
 [custom Intune policy]:  /intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune#configure-microsoft-intune-endpoint-protection 
[manage tasks]: /intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune#choose-management-tasks-for-endpoint-protection
[Monitor endpoint protection in the Microsoft Intune administration console]: /intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune#monitor-endpoint-protection
[Set method of the MSFT_MpPreference class]:  /previous-versions/windows/desktop/defender/set-msft-mppreference
[Update method of the MSFT_MpSignature class]:  /previous-versions/windows/desktop/defender/set-msft-mppreference
[MSFT_MpComputerStatus]:  /previous-versions/windows/desktop/defender/msft-mpcomputerstatus
[Windows Defender WMIv2 Provider]: /previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal
[Set-MpPreference]:  https://technet.microsoft.com/itpro/powershell/windows/defender/set-mppreference.md
[Update-MpSignature]: /powershell/module/defender/update-mpsignature
[Get- cmdlets available in the Defender module]: /powershell/module/defender/
[Configure update options for Microsoft Defender Antivirus]: manage-updates-baselines-microsoft-defender-antivirus.md
[Configure Windows Defender features]: configure-microsoft-defender-antivirus-features.md
[Group Policies to determine if any settings or policies are not applied]: /previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc771389(v=ws.11)
[Possibly infected devices]: /azure/active-directory/active-directory-reporting-sign-ins-from-possibly-infected-devices
[Microsoft Defender Antivirus events]: troubleshoot-microsoft-defender-antivirus.md

## In this section

Topic | Description
---|---
[Deploy and enable Microsoft Defender Antivirus protection](deploy-microsoft-defender-antivirus.md) | While the client is installed as a core part of Windows 10, and traditional deployment does not apply, you will still need to enable the client on your endpoints with Microsoft Endpoint Configuration Manager, Microsoft Intune, or Group Policy Objects. 
[Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md) | There are two parts to updating Microsoft Defender Antivirus: updating the client on endpoints (product updates), and updating Security intelligence (protection updates). You can update Security intelligence in a number of ways, using Microsoft Endpoint Configuration Manager, Group Policy, PowerShell, and WMI.
[Monitor and report on Microsoft Defender Antivirus protection](report-monitor-microsoft-defender-antivirus.md) | You can use Microsoft Intune, Microsoft Endpoint Configuration Manager, the Update Compliance add-in for Microsoft Operations Management Suite, or a third-party SIEM product (by consuming Windows event logs) to monitor protection status and create reports about endpoint protection.