---
title: Hide the Windows Defender Antivirus interface
description: You can hide virus and threat protection tile in the Windows Security app.
keywords: ui lockdown, headless mode, hide app, hide settings, hide interface
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

# Prevent users from seeing or interacting with the Windows Defender Antivirus user interface

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

You can use Group Policy to prevent users on endpoints from seeing the Windows Defender Antivirus interface. You can also prevent them from pausing scans.

## Hide the Windows Defender Antivirus interface

In Windows 10, versions 1703, hiding the interface will hide Windows Defender Antivirus notifications and prevent the Virus & threat protection tile from appearing in the Windows Security app.

With the setting set to **Enabled**:

![Screenshot of Windows Security without the shield icon and virus and threat protection section](images/defender/wdav-headless-mode-1703.png)

With the setting set to **Disabled** or not configured:

![Scheenshot of Windows Security showing the shield icon and virus and threat protection section](images/defender/wdav-headless-mode-off-1703.png)

>[!NOTE]
>Hiding the interface will also prevent Windows Defender Antivirus notifications from appearing on the endpoint. Microsoft Defender Advanced Threat Protection notifications will still appear. You can also individually [Configure the notifications that appear on endpoints](configure-notifications-windows-defender-antivirus.md)


In earlier versions of Windows 10, the setting will hide the Windows Defender client interface. If the user attempts to open it, they will receive a warning "Your system administrator has restricted access to this app.":

![Warning message when headless mode is enabled in Windows 10, versions earlier than 1703 that says Your system administrator has restricted access to this app](images/defender/wdav-headless-mode-1607.png)

**Use Group Policy to hide the Windows Defender AV interface from users:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Client interface**.

6. Double-click the **Enable headless UI mode** setting and set the option to **Enabled**. Click **OK**. 


Also see the [Prevent users from locally modifying policy settings](configure-local-policy-overrides-windows-defender-antivirus.md) topic for more options on preventing users form modifying protection on their PCs.

## Prevent users from pausing a scan

You can prevent users from pausing scans. This can be helpful to ensure scheduled or on-demand scans are not interrupted by users.


**Use Group Policy to prevent users from pausing a scan:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Scan**.

6. Double-click the **Allow users to pause scan** setting and set the option to **Disabled**. Click **OK**. 


## Related topics


- [Configure the notifications that appear on endpoints](configure-notifications-windows-defender-antivirus.md)
- [Configure end-user interaction with Windows Defender Antivirus](configure-end-user-interaction-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
