---
title: Device security in the Windows Security app
description: Use the Device security section to manage security built into your device, including virtualization-based security.
keywords: device security, device guard, wdav, smartscreen, antivirus, wdsc, exploit, protection, hide
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 10/02/2018
---

# Device security

**Applies to**

- Windows 10, version 1803 and later

The **Device security** section contains information and settings for built-in device security.

You can choose to hide the section from users of the machine. This can be useful if you don't want employees in your organization to see or have access to user-configured options for the features shown in the section.

## Hide the Device security section

You can choose to hide the entire section by using Group Policy. The section will not appear on the home page of the Windows Security app, and its icon will not be shown on the navigiation bar on the side of the app.

This can only be done in Group Policy.

>[!IMPORTANT]
>### Requirements
>
>You must have Windows 10, version 1803 or later. The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings. 

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2.  In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

3.  Expand the tree to **Windows components > Windows Security > Device security**.

4.  Open the **Hide the Device security area** setting and set it to **Enabled**. Click **OK**.

5. [Deploy the updated GPO as you normally do](https://msdn.microsoft.com/library/ee663280(v=vs.85).aspx). 

>[!NOTE]
>If you hide all sections then the app will show a restricted interface, as in the following screenshot:
>  
>![Windows Security app with all sections hidden by Group Policy](images/wdsc-all-hide.png)

## Disable the Clear TPM button
If you don't want users to be able to click the **Clear TPM** button in the Windows Security app, you can disable it.

>[!IMPORTANT]
>### Requirements
>
>You must have Windows 10, version 1809 or later. The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings. 

1.  On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2.  In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

3.  Expand the tree to **Windows components > Windows Security > Device security**.

4.  Open the **Disable the Clear TPM button** setting and set it to **Enabled**. Click **OK**.

5. [Deploy the updated GPO as you normally do](https://msdn.microsoft.com/library/ee663280(v=vs.85).aspx). 

## Hide the TPM Firmware Update recommendation
If you don't want users to see the recommendation to update TPM firmware, you can disable it.

1.  On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2.  In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

3.  Expand the tree to **Windows components > Windows Security > Device security**.

4.  Open the **Hide the TPM Firmware Update recommendation** setting and set it to **Enabled**. Click **OK**.

5. [Deploy the updated GPO as you normally do](https://msdn.microsoft.com/library/ee663280(v=vs.85).aspx). 

## Disable Memory integrity switch
If you don't want users to be able to change the Hypervisor Control Integrity (HVCI), or memory integrity, setting on their computers, you can disable the **Memory integrity** switch.

1.  On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2.  In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

3.  Expand the tree to **Windows components > Windows Security > Device security**.

4.  Open the **Disable Memory integrity switch** setting and set it to **Enabled**. Click **OK**.

5. [Deploy the updated GPO as you normally do](https://msdn.microsoft.com/library/ee663280(v=vs.85).aspx). 
