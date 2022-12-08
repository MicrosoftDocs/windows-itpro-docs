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

7. In **Basics**:

    1. Next to **Name**, enter **Personal Data Encryption**
    2. Next to **Description**, enter a description

8. Select **Next**

9. In **Configuration settings**, select **Add**

10. In **Add Row**:

    1. Next to **Name**, enter **Personal Data Encryption**
    2. Next to **Description**, enter a description
    3. Next to **OMA-URI**, enter in **./User/Vendor/MSFT/PDE/EnablePersonalDataEncryption**
    4. Next to **Data type**, select **Integer**
    5. Next to **Value**, enter in **1**

11. Select **Save**, and then select **Next**

12. In **Assignments**:

    1. Under **Included groups**, select **Add groups**
    2. Select the groups that the PDE policy should be deployed to
    3. Select **Select**
    4. Select **Next**

13. In **Applicability Rules**, configure if necessary and then select **Next**

14. In **Review + create**, review the configuration to make sure everything is configured correctly, and then select **Create**

### Disable Winlogon automatic restart sign-on (ARSO)

1. Sign into [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

2. Navigate to **Devices** > **Configuration Profiles**

3. Select **Create profile**

4. Under **Platform**, select **Windows 10 and later**

5. Under **Profile type**, select **Templates**

6. Under **Template name**, select **Administrative templates**, and then select **Create**

7. In **Basics**:

    1. Next to **Name**, enter **Disable ARSO**
    2. Next to **Description**, enter a description

8. Select **Next**

9. In **Configuration settings**, under **Computer Configuration**, navigate to **Windows Components** > **Windows Logon Options**

10. Select **Sign-in and lock last interactive user automatically after a restart**

11. In the **Sign-in and lock last interactive user automatically after a restart** window that opens, select **Disabled**, and then select **OK**

12. Select **Next**

13. In **Scope tags**, configure if necessary and then select **Next**

14. In **Assignments**:

    1. Under **Included groups**, select **Add groups**
    2. Select the groups that the ARSO policy should be deployed to
    3. Select **Select**
    4. Select **Next**

15. In **Review + create**, review the configuration to make sure everything is configured correctly, and then select **Create**

## Security hardening recommendations

### Disable kernel-mode crash dumps and live dumps

1. Sign into [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

2. Navigate to **Devices** > **Configuration Profiles**

3. Select **Create profile**

4. Under **Platform**, select **Windows 10 and later**

5. Under **Profile type**, select **Settings catalog**, and then select **Create**

6. In **Basics**:

    1. Next to **Name**, enter **Disable Kernel-Mode Crash Dumps**
    2. Next to **Description**, enter a description

7. Select **Next**

8. In **Configuration settings**, select **Add settings**

9. In the **Settings picker** window, under **Browse by category**, select **Memory Dump**

10. When the settings appear under **Setting name**, select both **Allow Crash Dump** and **Allow Live Dump**, and then select the **X** in the top right corner of the **Settings picker** window to close the window

11. Change both **Allow Live Dump** and **Allow Crash Dump** to **Block**, and then select **Next**

12. In **Scope tags**, configure if necessary and then select **Next**

13. In **Assignments**:

    1. Under **Included groups**, select **Add groups**
    2. Select the groups that the disable crash dumps policy should be deployed to
    3. Select **Select**
    4. Select **Next**

14. In **Review + create**, review the configuration to make sure everything is configured correctly, and then select **Create**

### Disable Windows Error Reporting (WER)/Disable user-mode crash dumps

1. Sign into [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

2. Navigate to **Devices** > **Configuration Profiles**

3. Select **Create profile**

4. Under **Platform**, select **Windows 10 and later**

5. Under **Profile type**, select **Settings catalog**, and then select **Create**

6. In **Basics**:

    1. Next to **Name**, enter **Disable Windows Error Reporting (WER)**
    2. Next to **Description**, enter a description

7. Select **Next**

8. In **Configuration settings**, select **Add settings**

9. In the **Settings picker** window, under **Browse by category**, expand to **Administrative Templates** > **Windows Components**, and then select **Windows Error Reporting**

10. When the settings appear under **Setting name**, select **Disable Windows Error Reporting**, and then select the **X** in the top right corner of the **Settings picker** window to close the window

11. Change **Disable Windows Error Reporting** to **Enabled**, and then select **Next**

12. In **Scope tags**, configure if necessary and then select **Next**

13. In **Assignments**:

    1. Under **Included groups**, select **Add groups**
    2. Select the groups that the disable WER dumps policy should be deployed to
    3. Select **Select**
    4. Select **Next**

14. In **Review + create**, review the configuration to make sure everything is configured correctly, and then select **Create**

### Disable hibernation

1. Sign into [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

2. Navigate to **Devices** > **Configuration Profiles**

3. Select **Create profile**

4. Under **Platform**, select **Windows 10 and later**

5. Under **Profile type**, select **Settings catalog**, and then select **Create**

6. In **Basics**:

    1. Next to **Name**, enter **Disable Hibernation**
    2. Next to **Description**, enter a description

7. Select **Next**

8. In **Configuration settings**, select **Add settings**

9. In the **Settings picker** window, under **Browse by category**, select **Power**

10. When the settings appear under **Setting name**, select **Allow Hibernate**, and then select the **X** in the top right corner of the **Settings picker** window to close the window

11. Change **Allow Hibernate** to **Block**, and then select **Next**

12. In **Scope tags**, configure if necessary and then select **Next**

13. In **Assignments**:

    1. Under **Included groups**, select **Add groups**
    2. Select the groups that the disable hibernation policy should be deployed to
    3. Select **Select**
    4. Select **Next**

14. In **Review + create**, review the configuration to make sure everything is configured correctly, and then select **Create**

### Disable allowing users to select when a password is required when resuming from connected standby

1. Sign into [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

2. Navigate to **Devices** > **Configuration Profiles**

3. Select **Create profile**

4. Under **Platform**, select **Windows 10 and later**

5. Under **Profile type**, select **Settings catalog**, and then select **Create**

6. In **Basics**:

    1. Next to **Name**, enter **Disable allowing users to select when a password is required when resuming from connected standby**
    2. Next to **Description**, enter a description

7. Select **Next**

8. In **Configuration settings**, select **Add settings**

9. In the **Settings picker** window, under **Browse by category**, expand to **Administrative Templates** > **System**, and then select **Logon**

10. When the settings appear under **Setting name**, select **Allow users to select when a password is required when resuming from connected standby**, and then select the **X** in the top right corner of the **Settings picker** window to close the window

11. Make sure that **Allow users to select when a password is required when resuming from connected standby** is left at the default of **Disabled**, and then select **Next**

12. In **Scope tags**, configure if necessary and then select **Next**

13. In **Assignments**:

    1. Under **Included groups**, select **Add groups**
    2. Select the groups that the disable Allow users to select when a password is required when resuming from connected standby policy should be deployed to
    3. Select **Select**
    4. Select **Next**

14. In **Review + create**, review the configuration to make sure everything is configured correctly, and then select **Create**

## See also

- [Personal Data Encryption (PDE)](overview-pde.md)
- [Personal Data Encryption (PDE) FAQ](faq-pde.yml)
