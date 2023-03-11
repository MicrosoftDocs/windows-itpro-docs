---
title: Disable allowing users to select when a password is required when resuming from connected standby in Intune
description: Disable allowing users to select when a password is required when resuming from connected standby in Intune
author: frankroj
ms.author: frankroj
ms.reviewer: rhonnegowda
manager: aaroncz
ms.topic: how-to
ms.prod: windows-client
ms.technology: itpro-security
ms.localizationpriority: medium
ms.date: 03/10/2023
---

# Disable allowing users to select when a password is required when resuming from connected standby in Intune

When the **Disable allowing users to select when a password is required when resuming from connected standby** policy isn't configured, the outcome between on-premises Active Directory joined devices and workgroup devices, including Azure Active Directory joined devices, is different:

- On-premises Active Directory joined devices:

  - A user can't change the amount of time after the device´s screen turns off before a password is required when waking the device.

  - A password is required immediately after the screen turns off.

    The above is the desired outcome, but PDE isn't supported with on-premises Active Directory joined devices.

- Workgroup devices, including Azure AD joined devices:

  - A user on a Connected Standby device can change the amount of time after the device´s screen turns off before a password is required to wake the device.

  - During the time when the screen turns off but a password isn't required, the keys used by PDE to protect content could potentially be exposed. This outcome isn't a desired outcome.

Because of this undesired outcome, it's recommended to explicitly disable this policy on Azure AD joined devices instead of leaving it at the default of **Not configured**.

To disable the policy **Disable allowing users to select when a password is required when resuming from connected standby** using Intune, follow the below steps:

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

2. In the **Home** screen, select **Devices**.

3. In the **Devices | Overview** screen, under **Policy**, select **Configuration Profiles**.

4. In the **Devices | Configuration profiles screen**, select **Create profile**.

5. In the **Create profile** window:

   1. Under **Platform**, select **Windows 10 and later**.

   2. Under **Profile type**, select **Settings catalog**.

   3. Select **Create**.

6. In the **Basics** page of the **Create profile** screen:

    1. Next to **Name**, enter **Disable allowing users to select when a password is required when resuming from connected standby**.

    2. Next to **Description**, enter a description.

    3. Select **Next**.

7. In the **Configuration settings** page:

   1. Select **Add settings**.

   2. In the **Settings picker** window:

      1. Under **Browse by category**, expand **Administrative Templates** by selecting the **>** to the left of it.

      2. Under **Administrative Templates**, scroll down and expand **System**.

      3. Under **System**, scroll down and select **Logon**.

      4. When the settings for the **Logon** subcategory appear under **Setting name**, select **Allow users to select when a password is required when resuming from connected standby**, and then select the **X** in the top right corner of the **Settings picker** window to close the window.

   3. Leave the slider for **Allow users to select when a password is required when resuming from connected standby** at the default of **Disabled**.

   4. select **Next**.

8. In the **Scope tags** page, configure if necessary and then select **Next**.

9. In the **Assignments** page:

   1. Under **Included groups**, select **Add groups**.

        > [!NOTE]
        >
        > Make sure to add the correct groups under **Included groups** and not under **Excluded groups**. Accidentally adding the desired device groups under **Excluded groups** will result in those devices being excluded and they won't receive the configuration profile.

   2. In the **Select groups to include** window that opens, select the groups that the configuration profile should be assigned to, and then select **Select**.

   3. Under **Groups**, ensure the correct group(s) are selected, and then select **Next**.

10. In **Review + create** page, review the configuration to make sure everything is configured correctly, and then select **Create**.
