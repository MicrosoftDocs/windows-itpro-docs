---
title: Disable Windows Error Reporting (WER)/Disable user-mode crash dumps in Intune
description: Disable Windows Error Reporting (WER)/Disable user-mode crash dumps in Intune
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

# Disable Windows Error Reporting (WER)/Disable user-mode crash dumps in Intune

Disabling Windows Error Reporting prevents user-mode crash dumps. User-mode crash dumps can potentially cause the keys used by PDE to protect content to be exposed. For greatest security, disable user-mode crash dumps.

To disable Windows Error Reporting (WER) and user-mode crash dumps using Intune, follow the below steps:

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
