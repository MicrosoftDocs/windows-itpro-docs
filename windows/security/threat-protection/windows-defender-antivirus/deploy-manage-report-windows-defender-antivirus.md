---
title: Deploy, manage, and report on Windows Defender Antivirus
description: You can deploy and manage Windows Defender Antivirus with Intune, System Center Configuration Manager, Group Policy, PowerShell, or WMI
keywords: deploy, manage, update, protection, windows defender antivirus
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: justinha
ms.author: v-anbic
ms.date: 09/03/2018
---

# Deploy, manage, and report on Windows Defender Antivirus

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

You can deploy, manage, and report on Windows Defender Antivirus in a number of ways.

Because the Windows Defender Antivirus client is installed as a core part of Windows 10, traditional deployment of a client to your endpoints does not apply.

However, in most cases you will still need to enable the protection service on your endpoints with Microsoft Intune, System Center Configuration Manager, Azure Security Center, or Group Policy Objects, which is described in the following table.

You'll also see additional links for:

- Managing Windows Defender Antivirus protection, including managing product and protection updates
- Reporting on Windows Defender Antivirus protection

> [!IMPORTANT]
> In most cases, Windows 10 will disable Windows Defender Antivirus if it finds another antivirus product that is running and up-to-date. You must disable or uninstall third-party antivirus products before Windows Defender Antivirus will function. If you re-enable or install third-party antivirus products, then Windows 10 automatically disables Windows Defender Antivirus.

Tool|Deployment options (<a href="#fn2" id="ref2">2</a>)|Management options (network-wide configuration and policy or baseline deployment) ([3](#fn3))|Reporting options  
---|---|---|---  
Microsoft Intune|[Add endpoint protection settings in Intune](https://docs.microsoft.com/intune/endpoint-protection-configure)|[Configure device restriction settings in Intune](https://docs.microsoft.com/intune/device-restrictions-configure)| [Use the Intune console to manage devices](https://docs.microsoft.com/intune/device-management)  
System Center Configuration Manager ([1](#fn1))|Use the [Endpoint Protection point site system role][] and [enable Endpoint Protection with custom client settings][]|With [default and customized antimalware policies][] and [client management][]|With the default [Configuration Manager Monitoring workspace][] and [email alerts][]  
Group Policy and Active Directory (domain-joined)|Use a Group Policy Object to deploy configuration changes and ensure Windows Defender Antivirus is enabled.|Use Group Policy Objects (GPOs) to [Configure update options for Windows Defender Antivirus][] and [Configure Windows Defender features][]|Endpoint reporting is not available with Group Policy. You can generate a list of [Group Policies to determine if any settings or policies are not applied][]
PowerShell|Deploy with Group Policy, System Center Configuration Manager, or manually on individual endpoints.|Use the [Set-MpPreference][] and [Update-MpSignature] [] cmdlets available in the Defender module|Use the appropriate [Get- cmdlets available in the Defender module][]
Windows Management Instrumentation|Deploy with Group Policy, System Center Configuration Manager, or manually on individual endpoints.|Use the [Set method of the MSFT_MpPreference class][] and the [Update method of the MSFT_MpSignature class][]|Use the [MSFT_MpComputerStatus][] class and the get method of associated classes in the [Windows Defender WMIv2 Provider][]
Microsoft Azure|Deploy Microsoft Antimalware for Azure in the [Azure portal, by using Visual Studio virtual machine configuration, or using Azure PowerShell cmdlets](https://docs.microsoft.com/azure/security/azure-security-antimalware#antimalware-deployment-scenarios). You can also [Install Endpoint protection in Azure Security Center](https://docs.microsoft.com/azure/security-center/security-center-install-endpoint-protection)|Configure [Microsoft Antimalware for Virtual Machines and Cloud Services with Azure PowerShell cmdlets](https://docs.microsoft.com/azure/security/azure-security-antimalware#enable-and-configure-antimalware-using-powershell-cmdlets) or [use code samples](https://gallery.technet.microsoft.com/Antimalware-For-Azure-5ce70efe)|Use [Microsoft Antimalware for Virtual Machines and Cloud Services with Azure PowerShell cmdlets](https://docs.microsoft.com/azure/security/azure-security-antimalware#enable-and-configure-antimalware-using-powershell-cmdlets) to enable monitoring. You can also review usage reports in Azure Active Directory to determine suspicious activity, including the [Possibly infected devices][] report and configure an SIEM tool to report on [Windows Defender Antivirus events][] and add that tool as an app in AAD.

1. <span id="fn1" />The availability of some functions and features, especially related to cloud-delivered protection, differ between System Center Configuration Manager (Current Branch) and System Center Configuration Manager 2012. In this library, we've focused on Windows 10, Windows Server 2016, and System Center Configuration Manager (Current Branch). See [Use Microsoft cloud-provided protection in Windows Defender Antivirus](utilize-microsoft-cloud-protection-windows-defender-antivirus.md) for a table that describes the major differences. [(Return to table)](#ref2)
  
2.	<span id="fn2" />In Windows 10, Windows Defender Antivirus is a component available without installation or deployment of an additional client or service. It will automatically be enabled when third-party antivirus products are either uninstalled or out of date ([except on Windows Server 2016](windows-defender-antivirus-on-windows-server-2016.md)). Traditional deployment therefore is not required. Deployment here refers to ensuring the Windows Defender Antivirus component is available and enabled on endpoints or servers. [(Return to table)](#ref2)

3. <span id="fn3" />Configuration of features and protection, including configuring product and protection updates, are further described in the [Configure Windows Defender Antivirus features](configure-notifications-windows-defender-antivirus.md) section in this library. [(Return to table)](#ref2)

[Endpoint Protection point site system role]: https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-protection-site-role
[default and customized antimalware policies]:  https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-antimalware-policies
[client management]:  https://docs.microsoft.com/sccm/core/clients/manage/manage-clients
[enable Endpoint Protection with custom client settings]:  https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-protection-configure-client
[Configuration Manager Monitoring workspace]:  https://docs.microsoft.com/sccm/protect/deploy-use/monitor-endpoint-protection 
[email alerts]:  https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-configure-alerts
[Deploy the Microsoft Intune client to endpoints]: https://docs.microsoft.com/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune
[custom Intune policy]:  https://docs.microsoft.com/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune#configure-microsoft-intune-endpoint-protection
 [custom Intune policy]:  https://docs.microsoft.com/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune#configure-microsoft-intune-endpoint-protection 
[manage tasks]: https://docs.microsoft.com/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune#choose-management-tasks-for-endpoint-protection
[Monitor endpoint protection in the Microsoft Intune administration console]: https://docs.microsoft.com/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune#monitor-endpoint-protection
[Set method of the MSFT_MpPreference class]:  https://msdn.microsoft.com/library/dn439474 
[Update method of the MSFT_MpSignature class]:  https://msdn.microsoft.com/library/dn439474
[MSFT_MpComputerStatus]:  https://msdn.microsoft.com/library/dn455321 
[Windows Defender WMIv2 Provider]: https://msdn.microsoft.com/library/dn439477
[Set-MpPreference]:  https://technet.microsoft.com/itpro/powershell/windows/defender/set-mppreference.md
[Update-MpSignature]: https://technet.microsoft.com/itpro/powershell/windows/defender/update-mpsignature
[Get- cmdlets available in the Defender module]: https://technet.microsoft.com/itpro/powershell/windows/defender/index
[Configure update options for Windows Defender Antivirus]: manage-updates-baselines-windows-defender-antivirus.md
[Configure Windows Defender features]: configure-windows-defender-antivirus-features.md
[Group Policies to determine if any settings or policies are not applied]: https://technet.microsoft.com/library/cc771389.aspx
[Possibly infected devices]: https://docs.microsoft.com/azure/active-directory/active-directory-reporting-sign-ins-from-possibly-infected-devices
[Windows Defender Antivirus events]: troubleshoot-windows-defender-antivirus.md

## In this section

Topic | Description
---|---
[Deploy and enable Windows Defender Antivirus protection](deploy-windows-defender-antivirus.md) | While the client is installed as a core part of Windows 10, and traditional deployment does not apply, you will still need to enable the client on your endpoints with System Center Configuration Manager, Microsoft Intune, or Group Policy Objects.
[Manage Windows Defender Antivirus updates and apply baselines](manage-updates-baselines-windows-defender-antivirus.md) | There are two parts to updating Windows Defender Antivirus: updating the client on endpoints (product updates), and updating Security intelligence (protection updates). You can update Security intelligence in a number of ways, using System Center Configuration Manager, Group Policy, PowerShell, and WMI.
[Monitor and report on Windows Defender Antivirus protection](report-monitor-windows-defender-antivirus.md) | You can use Microsoft Intune, System Center Configuration Manager, the Update Compliance add-in for Microsoft Operations Management Suite, or a third-party SIEM product (by consuming Windows event logs) to monitor protection status and create reports about endpoint protection.
