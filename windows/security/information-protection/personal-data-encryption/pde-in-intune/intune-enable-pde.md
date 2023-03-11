---
title: Enable Personal Data Encryption (PDE) in Intune
description: Enable Personal Data Encryption (PDE) in Intune
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

### Enable Personal Data Encryption (PDE) in Intune

To enable Personal Data Encryption (PDE) using Intune, follow the below steps:

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
