---
title: App & browser control in Windows Security
description: Use the App & browser control section to see and configure Windows Defender SmartScreen and Exploit protection settings.
ms.date: 08/11/2023
ms.topic: how-to
---

# App and browser control

The **App and browser control** section contains information and settings for Windows Defender SmartScreen. IT administrators and IT pros can get configuration guidance from the [Windows Defender SmartScreen documentation library](/windows/threat-protection/windows-defender-smartscreen/windows-defender-smartscreen-overview).

In Windows 10, version 1709 and later, the section also provides configuration options for Exploit protection. You can prevent users from modifying these specific options with Group Policy. IT administrators can get more information at [Exploit protection](/microsoft-365/security/defender-endpoint/exploit-protection).

You can also choose to hide the section from users of the machine. This option can be useful if you don't want employees in your organization to see or have access to user-configured options for the features shown in the section.

## Prevent users from making changes to the Exploit protection area in the App & browser control section

You can prevent users from modifying settings in the Exploit protection area. The settings will be either greyed out or not appear if you enable this setting. Users will still have access to other settings in the App & browser control section, such as those settings for Windows Defender SmartScreen, unless those options have been configured separately.

You can only prevent users from modifying Exploit protection settings by using Group Policy.

> [!IMPORTANT]
> You must have Windows 10, version 1709 or later. The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings.

1. On your Group Policy management machine, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and select **Edit**.
2. In the **Group Policy Management Editor**, go to **Computer configuration**, select **Policies** and then **Administrative templates**.
3. Expand the tree to **Windows components > Windows Security > App and browser protection**.
4. Open the **Prevent users from modifying settings** setting and set it to **Enabled**. Select **OK**.
5. [Deploy the updated GPO as you normally do](/windows/win32/srvnodes/group-policy).

## Hide the App & browser control section

You can choose to hide the entire section by using Group Policy. The section won't appear on the home page of **Windows Security**, and its icon won't be shown on the navigation bar on the side.

This section can be hidden only by using Group Policy.

> [!IMPORTANT]
> You must have Windows 10, version 1709 or later. The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings.

1. On your Group Policy management machine, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and select **Edit**.
2. In the **Group Policy Management Editor** go to **Computer configuration**, select **Policies** and then **Administrative templates**.
3. Expand the tree to **Windows components > Windows Security > App and browser protection**.
4. Open the **Hide the App and browser protection area** setting and set it to **Enabled**. Select **OK**.
5. [Deploy the updated GPO as you normally do](/windows/win32/srvnodes/group-policy).

> [!NOTE]
> If you hide all sections then **Windows Security** will show a restricted interface, as in the following screenshot:
>
> ![Windows Security with all sections hidden by Group Policy.](images/wdsc-all-hide.png)
