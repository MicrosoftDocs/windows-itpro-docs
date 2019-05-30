---
title: Virus and threat protection in the Windows Security app
description: Use the Virus & threat protection section to see and configure Windows Defender Antivirus, Controlled folder access, and 3rd-party AV products.
keywords: wdav, smartscreen, antivirus, wdsc, exploit, protection, hide
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 04/30/2018
---


# Virus and threat protection

**Applies to**

- Windows 10, version 1703 and later


The **Virus & threat protection** section contains information and settings for antivirus protection from Windows Defender Antivirus and third-party AV products.

In Windows 10, version 1803, this section also contains information and settings for ransomware protection and recovery. This includes Controlled folder access settings to prevent unknown apps from changing files in protected folders, plus Microsoft OneDrive configuration to help you recover from a ransomware attack. This area also notifies users and provides recovery instructions in the event of a ransomware attack.

IT administrators and IT pros can get more information and documentation about configuration from the following:

- [Windows Defender Antivirus in the Windows Security app](../windows-defender-antivirus/windows-defender-security-center-antivirus.md)
- [Windows Defender Antivirus documentation library](../windows-defender-antivirus/windows-defender-antivirus-in-windows-10.md)
- [Protect important folders with Controlled folder access](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/controlled-folders-exploit-guard)
- [Defend yourself from cybercrime with new Office 365 capabilities](https://blogs.office.com/en-us/2018/04/05/defend-yourself-from-cybercrime-with-new-office-365-capabilities/)
- [Office 365 advanced protection](https://support.office.com/en-us/article/office-365-advanced-protection-82e72640-39be-4dc7-8efd-740fb289123a)
- [Ransomware detection and recovering your files](https://support.office.com/en-us/article/ransomware-detection-and-recovering-your-files-0d90ec50-6bfd-40f4-acc7-b8c12c73637f?ui=en-US&rs=en-US&ad=US)

You can choose to hide the **Virus & threat protection** section or the **Ransomware protection** area from users of the machine. This can be useful if you don't want employees in your organization to see or have access to user-configured options for the features shown in the section.


## Hide the Virus & threat protection section

You can choose to hide the entire section by using Group Policy. The section will not appear on the home page of the Windows Security app, and its icon will not be shown on the navigiation bar on the side of the app.

This can only be done in Group Policy.

>[!IMPORTANT]
>### Requirements
>
>You must have Windows 10, version 1709 or later. The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings. 

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Security > Virus and threat protection**.

6.  Open the **Hide the Virus and threat protection area** setting and set it to **Enabled**. Click **OK**.

7. [Deploy the updated GPO as you normally do](https://msdn.microsoft.com/library/ee663280(v=vs.85).aspx). 

>[!NOTE]
>If you hide all sections then the app will show a restricted interface, as in the following screenshot:
>  
>![Windows Security app with all sections hidden by Group Policy](images/wdsc-all-hide.png)

## Hide the Ransomware protection area

You can choose to hide the **Ransomware protection** area by using Group Policy. The area will not appear on the **Virus & threat protection** section of the Windows Security app.

This can only be done in Group Policy.

>[!IMPORTANT]
>### Requirements
>
>You must have Windows 10, version 1709 or later. The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings. 

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Security > Virus and threat protection**.

6.  Open the **Hide the Ransomware data recovery area** setting and set it to **Enabled**. Click **OK**.

7. [Deploy the updated GPO as you normally do](https://msdn.microsoft.com/library/ee663280(v=vs.85).aspx). 
