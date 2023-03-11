---
title: Configure Personal Data Encryption (PDE) in Intune
description: Configuring and enabling Personal Data Encryption (PDE) required and recommended policies in Intune
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

<!-- Max 5963468 OS 32516487 -->
<!-- Max 6946251 -->

# Configure Personal Data Encryption (PDE) policies in Intune

## Required prerequisites

### Enable Personal Data Encryption (PDE)

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

1. In the **Home** screen, select **Devices**.

1. In the **Devices | Overview** screen, under **Policy**, select **Configuration Profiles**.

1. In the **Devices | Configuration profiles screen**, select **Create profile**.

1. In the **Create profile** window:

   1. Under **Platform**, select **Windows 10 and later**.

   1. Under **Profile type**, select **Templates**.

   1. When the templates appears, under **Template name**, select **Custom**.

   1. Select **Create**.

1. In the **Basics** page of the **Custom** screen:

   1. Next to **Name**, enter **Personal Data Encryption**.

   1. Next to **Description**, enter a description.

   1. Select **Next**.

1. In **Configuration settings** page:

   1. Select **Add**.

   1. In the **Add Row** pane:

       1. Next to **Name**, enter **Personal Data Encryption**.
       1. Next to **Description**, enter a description.
       1. Next to **OMA-URI**, enter in **./User/Vendor/MSFT/PDE/EnablePersonalDataEncryption**.
       1. Next to **Data type**, select **Integer**.
       1. Next to **Value**, enter in **1**.
       1. Select **Save**.

   1. Select **Next**

1. In the **Scope tags** page, configure if necessary and then select **Next**.

1. In the **Assignments** page:

   1. Under **Included groups**, select **Add groups**.

        > [!NOTE]
        >
        > Make sure to add the correct groups under **Included groups** and not under **Excluded groups**. Accidentally adding the desired device groups under **Excluded groups** will result in those devices being excluded and they won't receive the configuration profile.

   1. In the **Select groups to include** window that opens, select the groups that the configuration profile should be assigned to, and then select **Select**.

   1. Under **Groups**, ensure the correct group(s) are selected, and then select **Next**.

1. In **Applicability Rules**, configure if necessary and then select **Next**.

1. In **Review + create** page, review the configuration to make sure everything is configured correctly, and then select **Create**.

### Disable Winlogon automatic restart sign-on (ARSO)

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

1. In the **Home** screen, select **Devices**.

1. In the **Devices | Overview** screen, under **Policy**, select **Configuration Profiles**.

1. In the **Devices | Configuration profiles screen**, select **Create profile**.

1. In the **Create profile** window:

   1. Under **Platform**, select **Windows 10 and later**.

   1. Under **Profile type**, select **Templates**.

   1. When the templates appears, under **Template name**, select **Administrative templates**.

   1. Select **Create**.

1. In the **Basics** page of the **Create profile** screen:

   1. Next to **Name**, enter **Disable ARSO**.

   1. Next to **Description**, enter a description.

   1. Select **Next**.

1. In the **Configuration settings** page:

   1. At the top of the page, make sure **Computer Configuration** is selected.

   1. Under **Setting name**, scroll down and select **Windows Components**.

   1. Under **Setting name**, scroll down and select **Windows Logon Options**. You may need to navigate between pages on the bottom right corner before finding the **Windows Logon Options** option.

   1. Under **Setting name** of the **Windows Logon Options** pane, select **Sign-in and lock last interactive user automatically after a restart**.

   1. In the **Sign-in and lock last interactive user automatically after a restart** window that opens, select **Disabled**, and then select **OK**

   1. Select **Next**

1. In the **Scope tags** page, configure if necessary and then select **Next**.

1. In the **Assignments** page:

   1. Under **Included groups**, select **Add groups**.

        > [!NOTE]
        >
        > Make sure to add the correct groups under **Included groups** and not under **Excluded groups**. Accidentally adding the desired device groups under **Excluded groups** will result in those devices being excluded and they won't receive the configuration profile.

   1. In the **Select groups to include** window that opens, select the groups that the configuration profile should be assigned to, and then select **Select**.

   1. Under **Groups**, ensure the correct group(s) are selected, and then select **Next**.

1. In **Review + create** page, review the configuration to make sure everything is configured correctly, and then select **Create**.

## Security hardening recommendations

### Disable kernel-mode crash dumps and live dumps

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

1. In the **Home** screen, select **Devices**.

1. In the **Devices | Overview** screen, under **Policy**, select **Configuration Profiles**.

1. In the **Devices | Configuration profiles screen**, select **Create profile**.

1. In the **Create profile** window:

   1. Under **Platform**, select **Windows 10 and later**.

   1. Under **Profile type**, select **Settings catalog**.

   1. Select **Create**.

1. In the **Basics** page of the **Create profile** screen:

   1. Next to **Name**, enter **Disable Kernel-Mode Crash Dumps**.

   1. Next to **Description**, enter a description.

   1. Select **Next**.

1. In the **Configuration settings** page:

   1. Select **Add settings**.
   1. In the **Settings picker** pane:

      1. Under **Browse by category**, scroll down and select **Memory Dump**.

      1. When the settings for the **Memory Dump** category appear under **Setting name**, select both **Allow Crash Dump** and **Allow Live Dump**, and then select the **X** in the top right corner of the **Settings picker** window to close the window.

   1. Change both **Allow Live Dump** and **Allow Crash Dump** from **Allow** to **Block** by selecting the slider next to each option, and then select **Next**.

1. In the **Scope tags** page, configure if necessary and then select **Next**.

1. In the **Assignments** page:

   1. Under **Included groups**, select **Add groups**.

        > [!NOTE]
        >
        > Make sure to add the correct groups under **Included groups** and not under **Excluded groups**. Accidentally adding the desired device groups under **Excluded groups** will result in those devices being excluded and they won't receive the configuration profile.

   1. In the **Select groups to include** window that opens, select the groups that the configuration profile should be assigned to, and then select **Select**.

   1. Under **Groups**, ensure the correct group(s) are selected, and then select **Next**.

1. In **Review + create** page, review the configuration to make sure everything is configured correctly, and then select **Create**.

### Disable Windows Error Reporting (WER)/Disable user-mode crash dumps

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

1. In the **Home** screen, select **Devices**.

1. In the **Devices | Overview** screen, under **Policy**, select **Configuration Profiles**.

1. In the **Devices | Configuration profiles screen**, select **Create profile**.

1. In the **Create profile** window:

   1. Under **Platform**, select **Windows 10 and later**.

   1. Under **Profile type**, select **Settings catalog**.

   1. Select **Create**.

1. In the **Basics** page of the **Create profile** screen:

   1. Next to **Name**, enter **Disable Windows Error Reporting (WER)**.

   1. Next to **Description**, enter a description.

   1. Select **Next**.

1. In the **Configuration settings** page:

   1. Select **Add settings**.

   1. In the **Settings picker** window:

      1. Under **Browse by category**, expand **Administrative Templates** by selecting the **>** to the left of it.

      1. Under **Administrative Templates**, scroll down and expand **Windows Components**.

      1. Under **Windows Components**, scroll down and select **Windows Error Reporting**.

      1. When the settings for the **Windows Error Reporting** subcategory appear under **Setting name**, select **Disable Windows Error Reporting**, and then select the **X** in the top right corner of the **Settings picker** window to close the window.

   1. Change **Disable Windows Error Reporting** from **Disabled** to **Enabled** by selecting the slider next to the option.

   1. select **Next**.

1. In the **Scope tags** page, configure if necessary and then select **Next**.

1. In the **Assignments** page:

   1. Under **Included groups**, select **Add groups**.

        > [!NOTE]
        >
        > Make sure to add the correct groups under **Included groups** and not under **Excluded groups**. Accidentally adding the desired device groups under **Excluded groups** will result in those devices being excluded and they won't receive the configuration profile.

   1. In the **Select groups to include** window that opens, select the groups that the configuration profile should be assigned to, and then select **Select**.

   1. Under **Groups**, ensure the correct group(s) are selected, and then select **Next**.

1. In **Review + create** page, review the configuration to make sure everything is configured correctly, and then select **Create**.

### Disable hibernation

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

1. In the **Home** screen, select **Devices**.

1. In the **Devices | Overview** screen, under **Policy**, select **Configuration Profiles**.

1. In the **Devices | Configuration profiles screen**, select **Create profile**.

1. In the **Create profile** window:

   1. Under **Platform**, select **Windows 10 and later**.

   1. Under **Profile type**, select **Settings catalog**.

   1. Select **Create**.

1. In the **Basics** page of the **Create profile** screen:

   1. Next to **Name**, enter **Disable Hibernation**.

   1. Next to **Description**, enter a description.

   1. Select **Next**.

1. In the **Configuration settings** page:

   1. select **Add settings**.

   1. In the **Settings picker** window:

      1. Under **Browse by category**, scroll down and select **Power**.

      1. When the settings for the **Power** category appear under **Setting name**, select **Allow Hibernate**, and then select the **X** in the top right corner of the **Settings picker** window to close the window.

   1. Change **Allow Hibernate** from **Allow** to **Block** by selecting the slider next to the option.

   1. Select **Next**.

1. In the **Scope tags** page, configure if necessary and then select **Next**.

1. In the **Assignments** page:

   1. Under **Included groups**, select **Add groups**.

        > [!NOTE]
        >
        > Make sure to add the correct groups under **Included groups** and not under **Excluded groups**. Accidentally adding the desired device groups under **Excluded groups** will result in those devices being excluded and they won't receive the configuration profile.

   1. In the **Select groups to include** window that opens, select the groups that the configuration profile should be assigned to, and then select **Select**.

   1. Under **Groups**, ensure the correct group(s) are selected, and then select **Next**.

1. In **Review + create** page, review the configuration to make sure everything is configured correctly, and then select **Create**.

### Disable allowing users to select when a password is required when resuming from connected standby

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

1. In the **Home** screen, select **Devices**.

1. In the **Devices | Overview** screen, under **Policy**, select **Configuration Profiles**.

1. In the **Devices | Configuration profiles screen**, select **Create profile**.

1. In the **Create profile** window:

   1. Under **Platform**, select **Windows 10 and later**.

   1. Under **Profile type**, select **Settings catalog**.

   1. Select **Create**.

1. In the **Basics** page of the **Create profile** screen:

    1. Next to **Name**, enter **Disable allowing users to select when a password is required when resuming from connected standby**.

    1. Next to **Description**, enter a description.

    1. Select **Next**.

1. In the **Configuration settings** page:

   1. Select **Add settings**.

   1. In the **Settings picker** window:

      1. Under **Browse by category**, expand **Administrative Templates** by selecting the **>** to the left of it.

      1. Under **Administrative Templates**, scroll down and expand **System**.

      1. Under **System**, scroll down and select **Logon**.

      1. When the settings for the **Logon** subcategory appear under **Setting name**, select **Allow users to select when a password is required when resuming from connected standby**, and then select the **X** in the top right corner of the **Settings picker** window to close the window.

   1. Leave the slider for **Allow users to select when a password is required when resuming from connected standby** at the default of **Disabled**.

   1. select **Next**.

1. In the **Scope tags** page, configure if necessary and then select **Next**.

1. In the **Assignments** page:

   1. Under **Included groups**, select **Add groups**.

        > [!NOTE]
        >
        > Make sure to add the correct groups under **Included groups** and not under **Excluded groups**. Accidentally adding the desired device groups under **Excluded groups** will result in those devices being excluded and they won't receive the configuration profile.

   1. In the **Select groups to include** window that opens, select the groups that the configuration profile should be assigned to, and then select **Select**.

   1. Under **Groups**, ensure the correct group(s) are selected, and then select **Next**.

1. In **Review + create** page, review the configuration to make sure everything is configured correctly, and then select **Create**.

## See also

- [Personal Data Encryption (PDE)](overview-pde.md)
- [Personal Data Encryption (PDE) FAQ](faq-pde.yml)
