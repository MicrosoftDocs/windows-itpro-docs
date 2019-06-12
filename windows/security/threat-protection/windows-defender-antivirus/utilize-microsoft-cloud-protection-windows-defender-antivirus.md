---
title: Use next-gen technologies in Windows Defender Antivirus through cloud-delivered protection
description: Next-gen technologies in cloud-delivered protection provide an advanced level of fast, robust antivirus detection.
keywords: windows defender antivirus, next-gen technologies, next-gen av, machine learning, antimalware, security, defender, cloud, cloud-delivered protection
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 09/03/2018
ms.reviewer: 
manager: dansimp
---

# Use next-gen technologies in Windows Defender Antivirus through cloud-delivered protection

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Microsoft next-gen technologies in Windows Defender Antivirus provide near-instant, automated protection against new and emerging threats. To dynamically identify new threats, these technologies work with large sets of interconnected data in the Microsoft Intelligent Security Graph and powerful artificial intelligence (AI) systems driven by advanced machine learning models.  

To take advantage of the power and speed of these next-gen technologies, Windows Defender Antivirus works seamlessly with Microsoft cloud services. These cloud protection services, also referred to as Microsoft Advanced Protection Service (MAPS), enhances standard real-time protection, providing arguably the best antivirus defense. 


>[!NOTE]
>The Windows Defender Antivirus cloud service is a mechanism for delivering updated protection to your network and endpoints. Although it is called a cloud service, it is not simply protection for files stored in the cloud, rather it uses distributed resources and machine learning to deliver protection to your endpoints at a rate that is far faster than traditional Security intelligence updates.

With cloud-delivered protection, next-gen technologies provide rapid identification of new threats, sometimes even before a single machine is infected. Watch the following video about Microsoft AI and Windows Defender Antivirus in action: 
 
<iframe 
src="https://www.microsoft.com/en-us/videoplayer/embed/RE1Yu4B" width="768" height="432" allowFullScreen="true" frameBorder="0" scrolling="no"></iframe>

To understand how next-gen technologies shorten protection delivery time through the cloud, watch the following video: 
 
<iframe 
src="https://videoplayercdn.osi.office.net/embed/c2f20f59-ca56-4a7b-ba23-44c60bc62c59" width="768" height="432" allowFullScreen="true" frameBorder="0" scrolling="no"></iframe>

Read the following blog posts for detailed protection stories involving cloud-protection and Microsoft AI: 

- [Why Windows Defender Antivirus is the most deployed in the enterprise](https://cloudblogs.microsoft.com/microsoftsecure/2018/03/22/why-windows-defender-antivirus-is-the-most-deployed-in-the-enterprise/) 
- [Behavior monitoring combined with machine learning spoils a massive Dofoil coin mining campaign](https://cloudblogs.microsoft.com/microsoftsecure/2018/03/07/behavior-monitoring-combined-with-machine-learning-spoils-a-massive-dofoil-coin-mining-campaign/)
- [How artificial intelligence stopped an Emotet outbreak](https://cloudblogs.microsoft.com/microsoftsecure/2018/02/14/how-artificial-intelligence-stopped-an-emotet-outbreak/)
- [Detonating a bad rabbit: Windows Defender Antivirus and layered machine learning defenses](https://cloudblogs.microsoft.com/microsoftsecure/2017/12/11/detonating-a-bad-rabbit-windows-defender-antivirus-and-layered-machine-learning-defenses/)
- [Windows Defender Antivirus cloud protection service: Advanced real-time defense against never-before-seen malware](https://cloudblogs.microsoft.com/microsoftsecure/2017/07/18/windows-defender-antivirus-cloud-protection-service-advanced-real-time-defense-against-never-before-seen-malware/) 
 
## Get cloud-delivered protection 

Cloud-delivered protection is enabled by default. However, you may need to re-enable it if it has been disabled as part of previous organizational policies.

Organizations running Windows 10 E5, version 1803 can also take advantage of emergency dynamic intelligence updates, which provide near real-time protection from emerging threats. When you turn cloud-delivered protection on, we can deliver a fix for a malware issue via the cloud within minutes instead of waiting for the next update.

>[!TIP]
>You can also visit the Windows Defender Testground website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to confirm the feature is working and see how it works.


The following table describes the differences in cloud-delivered protection between recent versions of Windows and System Center Configuration Manager.


Feature | Windows 8.1 (Group Policy) | Windows 10, version 1607 (Group Policy) | Windows 10, version 1703 (Group Policy) | System Center Configuration Manager 2012 | System Center Configuration Manager (Current Branch) | Microsoft Intune
---|---|---|---|---|---|---
Cloud-protection service label | Microsoft Advanced Protection Service | Microsoft Advanced Protection Service | Cloud-based Protection | NA | Cloud protection service | Microsoft Advanced Protection Service
Reporting level (MAPS membership level) | Basic, Advanced | Advanced | Advanced | Dependent on Windows version | Dependent on Windows version | Dependent on Windows version
Cloud block timeout period | No | No | Configurable | Not configurable | Configurable | Configurable
 
You can also [configure Windows Defender AV to automatically receive new protection updates based on reports from our cloud service](manage-event-based-updates-windows-defender-antivirus.md#cloud-report-updates).


## In this section

 Topic | Description 
---|---
[Enable cloud-delivered protection](enable-cloud-protection-windows-defender-antivirus.md) | You can enable cloud-delivered protection with System Center Configuration Manager, Group Policy, Microsoft Intune, and PowerShell cmdlets.
[Specify the cloud-delivered protection level](specify-cloud-protection-level-windows-defender-antivirus.md) | You can specify the level of protection offered by the cloud with Group Policy and System Center Configuration Manager. The protection level will affect the amount of information shared with the cloud and how aggressively new files are blocked.
[Configure and validate network connections for Windows Defender Antivirus](configure-network-connections-windows-defender-antivirus.md) | There are certain Microsoft URLs that your network and endpoints must be able to connect to for cloud-delivered protection to work effectively. This topic lists the URLs that should be allowed via firewall or network filtering rules, and instructions for confirming your network is properly enrolled in cloud-delivered protection.
[Configure the block at first sight feature](configure-block-at-first-sight-windows-defender-antivirus.md) | The Block at First Sight feature can block new malware within seconds, without having to wait hours for traditional Security intelligence . You can enable and configure it with System Center Configuration Manager and Group Policy.
[Configure the cloud block timeout period](configure-cloud-block-timeout-period-windows-defender-antivirus.md) | Windows Defender Antivirus can block suspicious files from running while it queries our cloud-delivered protection service. You can configure the amount of time the file will be prevented from running with System Center Configuration Manager and Group Policy.
