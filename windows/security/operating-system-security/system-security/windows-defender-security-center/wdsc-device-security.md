---
title: Device security in the Windows Security app
description: Use the Device security section to manage security built into your device, including virtualization-based security.
ms.date: 12/31/2018
ms.topic: article
---

# Device security

The **Device security** section contains information and settings for built-in device security.

You can choose to hide the section from users of the machine. This option can be useful if you don't want employees in your organization to see or have access to user-configured options for the features shown in the section.

## Hide the Device security section

You can choose to hide the entire section by using Group Policy. The section won't appear on the home page of the Windows Security app, and its icon won't be shown on the navigation bar on the side of the app. You can hide the device security section by using Group Policy only.

> [!IMPORTANT]
> You must have Windows 10, version 1803 or later. The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings.

1. On your Group Policy management machine, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and click **Edit**.
2. In **Group Policy Management Editor**, go to **Computer configuration** and then select **Administrative templates**.
3. Expand the tree to **Windows components** > **Windows Security** > **Device security**.
4. Open the **Hide the Device security area** setting and set it to **Enabled**. Select **OK**.
5. [Deploy the updated GPO as you normally do](/windows/win32/srvnodes/group-policy).

> [!NOTE]
> If you hide all sections then the app will show a restricted interface, as in the following screenshot:
>
> ![Screenshot of the Windows Security app with all sections hidden by Group Policy.](images/wdsc-all-hide.png)

## Disable the Clear TPM button

If you don't want users to be able to click the **Clear TPM** button in the Windows Security app, you can disable it.

> [!IMPORTANT]
> You must have Windows 10, version 1809 or later. The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings.

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and click **Edit**.
2. In **Group Policy Management Editor**, go to **Computer configuration** and then select **Administrative templates**.
3. Expand the tree to **Windows components** > **Windows Security** > **Device security**.
4. Open the **Disable the Clear TPM button** setting and set it to **Enabled**. Select **OK**.
5. [Deploy the updated GPO as you normally do](/windows/win32/srvnodes/group-policy).

## Hide the TPM Firmware Update recommendation

If you don't want users to see the recommendation to update TPM firmware, you can disable it.

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and click **Edit**.
2. In **Group Policy Management Editor**, go to **Computer configuration** and then select **Administrative templates**.
3. Expand the tree to **Windows components** > **Windows Security** > **Device security**.
4. Open the **Hide the TPM Firmware Update recommendation** setting and set it to **Enabled**. Select **OK**.
5. [Deploy the updated GPO as you normally do](/windows/win32/srvnodes/group-policy).
