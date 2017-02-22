---
title: Deploy, manage, and report on Windows Defender Antivirus
description: 
keywords: 
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Deploy, manage, and report on Windows Defender Antivirus

**Applies to:**

- Windows 10

**Audience**

- IT administrators

You can deploy, manage, and report on Windows Defender Antivirus in a number of ways. 

The following table illustrates how each function can be managed or accessed. The topics in this section provide links or describe how to use each product:
- To deploy or enable the Windows Defender Antivirus protection client on endpoints or servers
- To manage and report on Windows Defender Antivirus protection, including managing product and protection updates
- To report on Windows Defender Antivirus protection


> [!IMPORTANT]
> In most cases, Windows 10 will disable Windows Defender Antivirus if it finds another antivirus product running and up-to-date. You must disable or uninstall third-party antivirus products before Windows Defender Antivirus will be functioning. If you re-enable or install third-part antivirus products, then Windows 10 will automatically disable Windows Defender Antivirus.


Tool|Deployment options (<a href="#fn1" id="ref1">1</a>)|Management options (network-wide configuration and policy or baseline deployment) ([2](#fn2))|Reporting options  
---|---|---|---  
System Center Configuration Manager ([3](#fn3))|Use the [Endpoint Protection point site system role][] and [enable Endpoint Protection with custom client settings][]|With [default and customized antimalware policies][] and [client management][]|With the default [Configuration Manager Monitoring workspace][] and [email alerts][]  
Microsoft Intune|[Deploy the Microsoft Intune client to endpoints][]|Use and deploy a [custom Intune policy][] and use the Intune console to [manage tasks][]|[Monitor endpoint protection in the Microsoft Intune administration console][]  
Windows Management Instrumentation|Deploy with Group Policy, System Center Configuration Manager, or manually on individual endpoints.|Use the [Set method of the MSFT_MpPreference class][] and the [Update method of the MSFT_MpSignature class][]|Use the [MSFT_MpComputerStatus][] class and the get method of associated classes in the [Windows Defender WMIv2 Provider][]
PowerShell|Deploy with Group Policy, System Center Configuration Manager, or manually on individual endpoints.|Use the [Set-MpPreference][] and [Update-MpSignature] [] cmdlets available in the Defender module|Use the appropriate [Get- cmdlets available in the Defender module][]
Group Policy and Active Directory (domain-joined)|Use a Group Policy Object to deploy configuration changes and ensure Windows Defender Antivirus is enabled.|Use Group Policy Objects (GPOs) to [Configure update options for Windows Defender Antivirus][] and [Configure Windows Defender features][]|Endpoint reporting is not available with Group Policy. You can generate a list of [Group Policies to determine if any settings or policies are not applied][]
Azure Active Directory|Deploy with Group Policy, System Center Configuration Manager, or manually on individual endpoints.|You cannot use AAD to manage Windows Defender Antivirus protection. Use other management options (such as Configuration Manager, Intune, GPO, WMI, or PowerShell). |Endpoint protection reporting is not available in AAD. You can review usage reports to determine suspicious activity, including the [Possibly infected devices][] report. You can also configure an SIEM tool to report on [Windows Defender Antivirus events][] and add that tool as an app in AAD.

1. <span id="fn1" />The availability of some functions and features, especially related to cloud-delivered protection, differ between System Center Configuration Manager, current branch (for example, System Center Configuration Manager 2016) and System Center Configuration Manager 2012. In this library, we've focused on Windows 10, Windows Server 2016, and System Center Configuration Manager, current branch (2016). See the [Utilize Microsoft cloud-provided protection in Windows Defender Antivirus](utilize-microsoft-cloud-protection-windows-defender-antivirus.md) topic for a table that describes the major differences.  [(Return to table)](#ref1)

1. <span id="fn2" />Configuration of features and protection, including configuring product and protection updates, are further described in the [Configure Windows Defender Antivirus features](configure-windows-defender-enhanced-notifications) section in this library.  [(Return to table)](#ref2)
  
1.	<span id="fn3" />In Windows 10, Windows Defender Antivirus is a component available without installation or deployment of an additional client or service. It will automatically be enabled when third-party antivirus products are either uninstalled or out of date. Traditional deployment therefore is not required. Deployment here refers to ensuring the Windows Defender Antivirus component is available and enabled on endpoints or servers.  [(Return to table)](#ref3)





[Endpoint Protection point site system role]: https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-protection-site-role
[default and customized antimalware policies]:  https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies
[client management]:  https://docs.microsoft.com/en-us/sccm/core/clients/manage/manage-clients
[enable Endpoint Protection with custom client settings]:  https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-protection-configure-client
[Configuration Manager Monitoring workspace]:  https://docs.microsoft.com/en-us/sccm/protect/deploy-use/monitor-endpoint-protection 
[email alerts]:  https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-configure-alerts
[Deploy the Microsoft Intune client to endpoints]: https://docs.microsoft.com/en-us/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune
[custom Intune policy]:  https://docs.microsoft.com/en-us/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune#configure-microsoft-intune-endpoint-protection
 [custom Intune policy]:  https://docs.microsoft.com/en-us/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune#configure-microsoft-intune-endpoint-protection 
[manage tasks]: https://docs.microsoft.com/en-us/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune#choose-management-tasks-for-endpoint-protection
[Monitor endpoint protection in the Microsoft Intune administration console]: https://docs.microsoft.com/en-us/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune#monitor-endpoint-protection
[Set method of the MSFT_MpPreference class]:  https://msdn.microsoft.com/en-us/library/dn439474 
[Update method of the MSFT_MpSignature class]:  https://msdn.microsoft.com/en-us/library/dn439474
[MSFT_MpComputerStatus]:  https://msdn.microsoft.com/en-us/library/dn455321 
[Windows Defender WMIv2 Provider]: https://msdn.microsoft.com/en-us/library/dn439477
[Set-MpPreference]:  ../itpro/powershell/windows/defender/set-mppreference.md
[Update-MpSignature]: ../itpro/powershell/windows/defender/update-mpsignature
[Get- cmdlets available in the Defender module]: ../itpro/powershell/windows/defender/index.md
[Configure update options for Windows Defender Antivirus]: configure-update-options-windows-defender-antivirus.md
[Configure Windows Defender features]: configure-windows-defender-antivirus-features.md
[Group Policies to determine if any settings or policies are not applied]: https://technet.microsoft.com/en-us/library/cc771389.aspx
[Possibly infected devices]: https://docs.microsoft.com/en-us/azure/active-directory/active-directory-reporting-sign-ins-from-possibly-infected-devices
[Windows Defender Antivirus events]: event-ids-windows-defender-antivirus.md


# In this section

Topic | Description 
---|---
[Deploy and enable Windows Defender Antivirus protection](deploy-windows-defender-antivirus.md) | While the client is installed as a core part of Windows 10, and traditional deployment does not apply, you will still need to enable the client on your endpoints with System Center Configuration Manager, Microsoft Intune, or Group Policy Objects.
[Manage Windows Defender Antivirus updates and apply baselines](manage-updates-baselines-windows-defender-antivirus.md) | There are two parts to updating Windows Defender Antivirus: updating the client on endpoints (product updates), and updating definitions (protection updates). You can update definitions in a number of ways, using System Center Configuration Manager, Microsoft Intune, WSUS, and others.
[Monitor and report on Windows Defender Antivirus protection](report-monitor-windows-defender-antiviirus.md) | You can use System Center Configuration Manager, a third-party SIEM product (by consuming Windows event logs), or Microsoft Intune to monitor the protection status and create reports on endpoints

## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-in-windows-10.md)
- [Configure Windows Defender Antivirus features](configure-windows-defender-antivirus-features.md)
