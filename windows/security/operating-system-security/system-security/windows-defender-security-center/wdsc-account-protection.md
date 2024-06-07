---
title: Account protection in Windows Security
description: Use the Account protection section to manage security for your account and sign in to Microsoft.
ms.date: 08/11/2023
ms.topic: how-to
---


# Account protection

The **Account protection** section contains information and settings for account protection and sign-in. You can get more information about these capabilities from the following list:

- [Microsoft Account](https://account.microsoft.com/account/faq)
- [Windows Hello for Business](../../../identity-protection/hello-for-business/index.md)
- [Lock your Windows 10 PC automatically when you step away from it](https://support.microsoft.com/help/4028111/windows-lock-your-windows-10-pc-automatically-when-you-step-away-from)

You can also choose to hide the section from users of the device, if you don't want your employees to access or view user-configured options for these features.

## Hide the Account protection section

You can choose to hide the entire section by using Group Policy. When hidden, this section doesn't appear on the home page of **Windows Security**, and its icon isn't shown on the navigation bar on the side.

You can only configure these settings by using Group Policy.

> [!IMPORTANT]
> You must have Windows 10, version 1803 or later. The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings.

1. On your Group Policy management machine, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and select  **Edit**.
1. In the **Group Policy Management Editor**, go to **Computer configuration** and select **Administrative templates**.
1. Expand the tree to **Windows components > Windows Security > Account protection**.
1. Open the **Hide the Account protection area** setting and set it to **Enabled**. Select **OK**.
1. [Deploy the updated GPO as you normally do](/windows/win32/srvnodes/group-policy).

> [!NOTE]
> If you hide all sections then **Windows Security** will show a restricted interface, as in the following screenshot:
>
> ![Screenshot of the Windows Security with all sections hidden by Group Policy.](images/wdsc-all-hide.png)
