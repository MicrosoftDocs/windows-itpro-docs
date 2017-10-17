---
title: App & browser control in the Windows Defender Security Center app
description: Use the App & browser control section to see and configure Windows Defender SmartScreen and Exploit protection settings.
keywords: wdav, smartscreen, antivirus, wdsc, exploit, protection, hide
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: iaanw
ms.author: iawilt
ms.date: 10/16/2017
---

1709 - Add  CFA



# App and browser control

**Applies to**

- Windows 10, version 1703 and later


The **Virust & threat protection** section contains information and settings for antivirus protection. IT administrators and IT pros can get more information and documentation about configuration from the following:

- [Windows Defender Antivirus in the Windows Defender Security Center app](../windows-defender-antivirus/windows-defender-security-center-antivirus)
- [Windows Defender Antivirus documentation library](../windows-defender-antivirus/windows-defender-antivirus-in-windows-10)

In Windows 10, version 1709, the section also provides configuration options for Controlled folder access. IT administrators can get more information at the [Controlled folder access](../windows-defender-exploit-guard/controlled-folders-exploit-guard) topic in the Windows Defender Exploit Guard library.

You can also choose to hide the section from users of the machine. This can be useful if you don't want employees in your organization to see or have access to user-configured options for the features shown in the section.


## Prevent users from making changes to the Exploit protection area in the App & browser control section

You can prevent users from modifying settings in the Exploit protection area. The settings will be either greyed out or not appear if you enable this setting. Users will still have access to other settings in the App & browser control section, such as those for Windows Defender SmartScreen, unless those options have been configured separately.

You can only prevent users from modifying Exploit protection settings by using Group Policy.

>[!IMPORTANT]
>### Requirements
>
>You must have Windows 10, version 1709 (the Fall Creators Update). The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings. 

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Security Center > App and browser protection**.

6.  Open the **Prevent users from modifying settings** setting and set it to **Enabled**. Click **OK**.

7. [Deploy the updated GPO as you normally do](https://msdn.microsoft.com/en-us/library/ee663280(v=vs.85).aspx). 

## Hide the App & browser control section

You can choose to hide the entire section by using Group Policy. The section will not appear on the home page of the Windows Defender Security Center app, and its icon will not be shown on the navigiation bar on the side of the app.

This can only be done in Group Policy.

>[!IMPORTANT]
>### Requirements
>
>You must have Windows 10, version 1709 (the Fall Creators Update). The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings. 

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Security Center > App and browser protection**.

6.  Open the **Hide the App and browser protection area** setting and set it to **Enabled**. Click **OK**.

7. [Deploy the updated GPO as you normally do](https://msdn.microsoft.com/en-us/library/ee663280(v=vs.85).aspx). 