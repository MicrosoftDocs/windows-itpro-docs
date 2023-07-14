---
title: Disable hibernation for PDE in Intune
description: Disable hibernation for PDE in Intune
ms.topic: how-to
ms.date: 03/13/2023
---

# Disable hibernation for PDE

Hibernation files can potentially cause the keys used by Personal Data Encryption (PDE) to protect content to be exposed. For greatest security, disable hibernation.

## Disable hibernation in Intune

To disable hibernation using Intune, follow the below steps:

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431)
1. In the **Home** screen, select **Devices** in the left pane
1. In the **Devices | Overview** screen, under **Policy**, select **Configuration Profiles**
1. In the **Devices | Configuration profiles** screen, make sure **Profiles** is selected at the top, and then select **Create profile**
1. In the **Create profile** window that opens:
   1. Under **Platform**, select **Windows 10 and later**
   1. Under **Profile type**, select **Settings catalog**
   1. Select **Create** to close the **Create profile** window
1. The **Create profile** screen will open. In the **Basics** page:
   1. Next to **Name**, enter **Disable Hibernation**
   1. Next to **Description**, enter a description
   1. Select **Next**
1. In the **Configuration settings** page:
   1. select **Add settings**
   1. In the **Settings picker** window that opens:
      1. Under **Browse by category**, scroll down and select **Power**
      1. When the settings for the **Power** category appear under **Setting name** in the lower pane, select **Allow Hibernate**, and then select the **X** in the top right corner of the **Settings picker** window to close the window
   1. Change **Allow Hibernate** from **Allow** to **Block** by selecting the slider next to the option
   1. Select **Next**
1. In the **Scope tags** page, configure if necessary and then select **Next**
1. In the **Assignments** page:
   1. Under **Included groups**, select **Add groups**
        > [!NOTE]
        > Make sure to add the correct groups under **Included groups** and not under **Excluded groups**. Accidentally adding the desired device groups under **Excluded groups** will result in those devices being excluded and they won't receive the configuration profile.
   1. In the **Select groups to include** window that opens, select the groups that the configuration profile should be assigned to, and then select **Select** to close the **Select groups to include** window
   1. Under **Included groups** > **Groups**, ensure the correct group(s) are selected, and then select **Next**
1. In **Review + create** page, review the configuration to make sure everything is configured correctly, and then select **Create**

## Additional PDE configurations in Intune

The following PDE configurations can also be configured using Intune:

### Prerequisites

- [Enable Personal Data Encryption (PDE)](intune-enable-pde.md)
- [Disable Winlogon automatic restart sign-on (ARSO)](intune-disable-arso.md)

### Security hardening recommendations

- [Disable kernel-mode crash dumps and live dumps](intune-disable-memory-dumps.md)
- [Disable Windows Error Reporting (WER)/user-mode crash dumps](intune-disable-wer.md)
- [Disable allowing users to select when a password is required when resuming from connected standby](intune-disable-password-connected-standby.md)

## More information

- [Personal Data Encryption (PDE)](index.md)
- [Personal Data Encryption (PDE) FAQ](faq-pde.yml)
