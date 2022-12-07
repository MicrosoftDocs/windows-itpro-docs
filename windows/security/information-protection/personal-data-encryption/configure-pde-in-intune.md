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
ms.date: 12/07/2022
---

<!-- Max 5963468 OS 32516487 -->
<!-- Max 6946251 -->

# Configure Personal Data Encryption (PDE) policies in Intune

## Required prerequisites

### Enable Personal Data Encryption (PDE)

1. Sign into [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

2. Navigate to **Devices** > **Configuration Profiles**

3. Select **Create profile**

4. Under **Platform**, select **Windows 10 and later**

5. Under **Profile type**, select **Templates**

6. Under **Template name**, select **Custom**, and then select **Create**

7. On the **Basics** tab:

    1. Next to **Name**, enter **Personal Data Encryption**
    2. Next to **Description**, enter a description

8. Select **Next**

9. On the **Configuration settings** tab, select **Add**

10. In the **Add Row** window:

    1. Next to **Name**, enter **Personal Data Encryption**
    2. Next to **Description**, enter a description
    3. Next to **OMA-URI**, enter in **./User/Vendor/MSFT/PDE/EnablePersonalDataEncryption**
    4. Next to **Data type**, select **Integer**
    5. Next to **Value**, enter in **1**

11. Select **Save**, and then select **Next**

12. On the **Assignments** tab:

    1. Under **Included groups**, select **Add groups**
    2. Select the groups that the PDE policy should be deployed to
    3. Select **Select**
    4. Select **Next**

13. On the **Applicability Rules** tab, configure if necessary and then select **Next**

14. On the **Review + create** tab, review the configuration to make sure everything is configured correctly, and then select **Create**

### Disable Winlogon automatic restart sign-on (ARSO)

1. Sign into [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

2. Navigate to **Devices** > **Configuration Profiles**

3. Select **Create profile**

4. Under **Platform**, select **Windows 10 and later**

5. Under **Profile type**, select **Templates**

6. Under **Template name**, select **Administrative templates**, and then select **Create**

7. On the **Basics** tab:

    1. Next to **Name**, enter **Disable ARSO**
    2. Next to **Description**, enter a description

8. Select **Next**

9. On the **Configuration settings** tab, under **Computer Configuration**, navigate to **Windows Components** > **Windows Logon Options**

10. Select **Sign-in and lock last interactive user automatically after a restart**

11. In the **Sign-in and lock last interactive user automatically after a restart** window that opens, select **Disabled**, and then select **OK**

12. Select **Next**

13. On the **Scope tags** tab, configure if necessary and then select **Next**

14. On the **Assignments** tab:

    1. Under **Included groups**, select **Add groups**
    2. Select the groups that the ARSO policy should be deployed to
    3. Select **Select**
    4. Select **Next**

15. On the **Review + create** tab, review the configuration to make sure everything is configured correctly, and then select **Create**

## Security hardening recommendations

### Disable kernel-mode crash dumps and live dumps

1. Sign into [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

2. Navigate to **Devices** > **Configuration Profiles**

3. Select **Create profile**

4. Under **Platform**, select **Windows 10 and later**

5. Under **Profile type**, select **Settings catalog**, and then select **Create**

6. On the **Basics** tab:

    1. Next to **Name**, enter **Disable Kernel-Mode Crash Dumps**
    2. Next to **Description**, enter a description

7. Select **Next**

8. On the **Configuration settings** tab, select **Add settings**

9. In the **Settings picker** windows, select **Memory Dump**

10. When the settings appear in the lower pane, under **Setting name**, select both **Allow Crash Dump** and **Allow Live Dump**, and then select the **X** in the top right corner of the **Settings picker** window to close the window

11. Change both **Allow Live Dump** and **Allow Crash Dump** to **Block**, and then select **Next**

12. On the **Scope tags** tab, configure if necessary and then select **Next**

13. On the **Assignments** tab:

    1. Under **Included groups**, select **Add groups**
    2. Select the groups that the disable crash dumps policy should be deployed to
    3. Select **Select**
    4. Select **Next**

14. On the **Review + create** tab, review the configuration to make sure everything is configured correctly, and then select **Create**

### Disable Windows Error Reporting (WER)/Disable user-mode crash dumps

1. Sign into [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

2. Navigate to **Devices** > **Configuration Profiles**

3. Select **Create profile**

4. Under **Platform**, select **Windows 10 and later**

5. Under **Profile type**, select **Settings catalog**, and then select **Create**

6. On the **Basics** tab:

    1. Next to **Name**, enter **Disable Windows Error Reporting (WER)**
    2. Next to **Description**, enter a description

7. Select **Next**

8. On the **Configuration settings** tab, select **Add settings**

9. In the **Settings picker** windows, expand to **Administrative Templates** > **Windows Components**, and then select **Windows Error Reporting**

10. When the settings appear in the lower pane, under **Setting name**, select **Disable Windows Error Reporting**, and then select the **X** in the top right corner of the **Settings picker** window to close the window

11. Change both **Disable Windows Error Reporting** to **Enabled**, and then select **Next**

12. On the **Scope tags** tab, configure if necessary and then select **Next**

13. On the **Assignments** tab:

    1. Under **Included groups**, select **Add groups**
    2. Select the groups that the disable WER dumps policy should be deployed to
    3. Select **Select**
    4. Select **Next**

14. On the **Review + create** tab, review the configuration to make sure everything is configured correctly, and then select **Create**

### Disable hibernation

1. Sign into [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

2. Navigate to **Devices** > **Configuration Profiles**

3. Select **Create profile**

4. Under **Platform**, select **Windows 10 and later**

5. Under **Profile type**, select **Settings catalog**, and then select **Create**

6. On the **Basics** tab:

    1. Next to **Name**, enter **Disable Hibernation**
    2. Next to **Description**, enter a description

7. Select **Next**

8. On the **Configuration settings** tab, select **Add settings**

9. In the **Settings picker** windows, select **Power**

10. When the settings appear in the lower pane, under **Setting name**, select **Allow Hibernate**, and then select the **X** in the top right corner of the **Settings picker** window to close the window

11. Change **Allow Hibernate** to **Block**, and then select **Next**

12. On the **Scope tags** tab, configure if necessary and then select **Next**

13. On the **Assignments** tab:

    1. Under **Included groups**, select **Add groups**
    2. Select the groups that the disable hibernation policy should be deployed to
    3. Select **Select**
    4. Select **Next**

14. On the **Review + create** tab, review the configuration to make sure everything is configured correctly, and then select **Create**

## See also

- [Personal Data Encryption (PDE)](overview-pde.md)
- [Personal Data Encryption (PDE) FAQ](faq-pde.yml)
