---
title: Account protection in the Windows Security app
description: Use the Account protection section to manage security for your account and sign in to Microsoft.
keywords: account protection, wdav, smartscreen, antivirus, wdsc, exploit, protection, hide
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: justinha
ms.author: justinha
ms.date: 04/30/2018
---


# Account protection

**Applies to**

- Windows 10, version 1803 and later


The **Account protection** section contains information and settings for account protection and sign in. IT administrators and IT pros can get more information and documentation about configuration from the following:

- [Microsoft Account](https://account.microsoft.com/account/faq)
- [Windows Hello for Business](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-identity-verification)
- [Lock your Windows 10 PC automatically when you step away from it](https://support.microsoft.com/help/4028111/windows-lock-your-windows-10-pc-automatically-when-you-step-away-from)

You can also choose to hide the section from users of the machine. This can be useful if you don't want employees in your organization to see or have access to user-configured options for the features shown in the section.


## Hide the Account protection section

You can choose to hide the entire section by using Group Policy. The section will not appear on the home page of the Windows Security app, and its icon will not be shown on the navigiation bar on the side of the app.

This can only be done in Group Policy.

>[!IMPORTANT]
>### Requirements
>
>You must have Windows 10, version 1803 or later. The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings. 

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Security > Account protection**.

6.  Open the **Hide the Account protection area** setting and set it to **Enabled**. Click **OK**.

7. [Deploy the updated GPO as you normally do](https://msdn.microsoft.com/library/ee663280(v=vs.85).aspx). 

>[!NOTE]
>If you hide all sections then the app will show a restricted interface, as in the following screenshot:
>  
>![Windows Security app with all sections hidden by Group Policy](images/wdsc-all-hide.png)