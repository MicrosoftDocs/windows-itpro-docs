---
title: Utilize cloud-provided protection in Windows Defender Antivirus
description: Cloud-provided protection provides an advanced level of fast, robust antivirus detection.
keywords: windows defender antivirus, antimalware, security, defender, cloud, cloud-based protection
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Utilize Microsoft cloud-provided protection in Windows Defender Antivirus

**Applies to:**

- Windows 10, version 1703

**Audience**

- Enterprise security administrators

Cloud-delivered protection for Windows Defender Antivirus, also referred to as Microsoft Advanced Protection Service (MAPS), provides you with strong, fast protection in addition to our standard real-time protection.

>[!NOTE] 
>The Windows Defender Antivirus cloud service is a mechanism for delivering updated protection to your network and endpoints. Although it is called a cloud service, it is not simply protection for files stored in the cloud, rather it uses distributed resources and machine learning to deliver protection to your endpoints at a rate that is far faster than traditional signature updates.

Enabling cloud-delivered protection helps detect and block new malware – even if the malware has never been seen before – without needing to wait for a traditionally delivered definition update to block it. Definition updates can take hours to prepare and deliver; our cloud service can deliver updated protection in seconds. 

Cloud-delivered protecton is enabled by default, however you may need to re-enable it if it has been disabled as part of previous organizational policies.

The following table describes the differences in cloud-based protection between recent versions of Windows and System Center Configuration Manager.


Feature | Windows 8.1 (Group Policy) | Windows 10, version 1607 (Group Policy) | Windows 10, version 1703 (Group Policy) | Configuration manager 2012 | Configuration manager (current branch) | Microsoft Intune
---|---|---|---|---|
Cloud-protection service label | Microsoft Advanced Protection Service | Microsoft Advanced Protection Service | Cloud-based Protection | NA | Cloud protection service | Microsoft Advanced Protection Service
Reporting level (MAPS membership level) | Basic, Advanced | Advanced | Advanced | Dependent on Windows version | Dependent on Windows version | Dependent on Windows version
Block at first sight availability | No | Yes | Yes | Not configurable | Configurable | No
Cloud block timeout period | No | No | Configurable | Not configurable | Configurable | No
 
# In this section

 Topic | Description 
---|---
[Enable cloud-delivered protection](enable-cloud-protection-windows-defender-antivirus.md) | You can enable cloud-delivered protection with System Center Configuration Manager, Group Policy, Microsoft Intune, and PowerShell cmdlets.
[Specify the cloud-delivered protection level](specify-cloud-protection-level-windows-defender-antivirus.md) | You can specify the level of protection offered by the cloud with Group Policy and System Center Configuration Manager. The protection level will affect the amount of information shared with the cloud and how aggressively new files are blocked.
[Configure and validate network connections for Windows Defender Antivirus](configure-network-connections-windows-defender-antivirus.md) | There are certain Microsoft URLs that your network and endpoints must be able to connect to for cloud-delivered protection to work effectively. This topic lists the URLs that should be allowed via firewall or network filtering rules, and instructions for confirming your network is properly enrolled in cloud-delivered protection.
[Configure the Block at First Sight feature](configure-block-at-first-sight-windows-defender-antivirus.md) | The Block at First Sight feature can block new malware within seconds, without having to wait hours for a traditional signature. You can enable and configure it with System Center Configuration Manager and Group Policy.
[Configure the cloud block timeout period](configure-cloud-block-timeout-period-windows-defender-antivirus.md) | Windows Defender Antivirus can block suspicious files from running while it queries our cloud-based protection service. You can configure the amount of time the file will be prevented from running with System Center Configuration Manager and Group Policy.



## Manage cloud-based protection

Windows Defender offers improved cloud-based protection and threat intelligence for endpoint protection clients using the Microsoft Active Protection Service. Read more about the Microsoft Active Protection Service community in [Join the Microsoft Active Protection Service community](http://windows.microsoft.com/windows-8/join-maps-community).

You can enable or disable the Microsoft Active Protection Service using *Group Policy* settings and administrative template files.

More information on deploying administrative template files for Windows Defender is available in the article [Description of the Windows Defender Group Policy administrative template settings](https://support.microsoft.com/kb/927367).

The Microsoft Active Protection Service can be configured with the following *Group Policy* settings:

1.  Open the **Group Policy Editor**.
2.  In the **Local Computer Policy** tree, expand **Computer Configuration**, then **Administrative Templates**, then **Windows Components**, then **Windows Defender**.
3.  Click on **MAPS**.
4.  Double-click on **Join Microsoft MAPS**.
5.  Select your configuration option from the **Join Microsoft MAPS** list.

    >**Note:**  Any settings modified on an endpoint will be overridden by the administrator's policy setting.
     
Use the Windowsdefender.adm *Group Policy* template file to control the policy settings for Windows Defender in Windows 10:

Policy setting: **Configure Microsoft SpyNet Reporting**

Registry key name: **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\SpyNet\\SpyNetReporting**

Policy description: **Adjusts membership in Microsoft Active Protection Service**

You can also configure preferences using the following PowerShell parameters:

-   Turn Microsoft Active Protection Service off: *Set-MpPreference -MAPSReporting 0*
-   Turn Microsoft Active Protection Service on: *Set-MpPreference -MAPSReporting 2*

Read more about this in:

-   [Scripting with Windows PowerShell](https://technet.microsoft.com/library/bb978526.aspx)
-   [Defender Cmdlets](https://technet.microsoft.com/library/dn433280.aspx)

>**Note:**  Any information that Windows Defender collects is encrypted in transit to our servers, and then stored in secure facilities. Microsoft takes several steps to avoid collecting any information that directly identifies you, such as your name, email address, or account ID.
 
Read more about how to manage your privacy settings in [Setting your preferences for Windows 10 services](http://windows.microsoft.com/windows-10/services-setting-preferences).


