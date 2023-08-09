---
title: PDE settings and configuration
description: Learn about the available options to configure Personal Data Encryption (PDE) and how to configure them via Microsoft Intune or configuration Service Provider (CSP).
ms.topic: how-to
ms.date: 03/13/2023
---

# PDE settings and configuration

This article describes the Personal Data Encryption (PDE) settings and how to configure them via Microsoft Intune or configuration Service Provider (CSP).



The various required and recommended policies needed for Personal Data Encryption (PDE) can be configured in Intune. The following links for both required and recommended policies contain step by step instructions on how to configure these policies in Intune.

## Required prerequisites

1. [Enable Personal Data Encryption (PDE)](intune-enable-pde.md)
1. [Disable Winlogon automatic restart sign-on (ARSO)](intune-disable-arso.md)

## Security hardening recommendations

1. [Disable kernel-mode crash dumps and live dumps](intune-disable-memory-dumps.md)
1. [Disable Windows Error Reporting (WER)/user-mode crash dumps](intune-disable-wer.md)
1. [Disable hibernation](intune-disable-hibernation.md)
1. [Disable allowing users to select when a password is required when resuming from connected standby](intune-disable-password-connected-standby.md)


## PDE settings list

## PDE configuration

### Enable Personal Data Encryption (PDE)

By default, Personal Data Encryption (PDE) is not enabled on devices. Before PDE can be used on a device, it needs to be enabled.  This can be done via a custom OMA-URI policy assigned to the device.

> [!NOTE]
> Enabling the PDE policy on devices only enables the PDE feature. It does not protect any content. To protect content via PDE, use the [PDE APIs](/uwp/api/windows.security.dataprotection.userdataprotectionmanager). The PDE APIs can be used to create custom applications and scripts to specify which content to protect and at what level to protect the content. Additionally, the PDE APIs can't be used to protect content until the PDE policy has been enabled.

## Enable Personal Data Encryption (PDE) in Intune

To enable Personal Data Encryption (PDE) using Intune, follow the below steps:

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. In the **Home** screen, select **Devices** in the left pane
1. In the **Devices | Overview** screen, under **Policy**, select **Configuration Profiles**
1. In the **Devices | Configuration profiles** screen, make sure **Profiles** is selected at the top, and then select **Create profile**
1. In the **Create profile** window that opens:
   1. Under **Platform**, select **Windows 10 and later**
   1. Under **Profile type**, select **Templates**
   1. When the templates appears, under **Template name**, select **Custom**
   1. Select **Create** to close the **Create profile** window
1. The **Custom** screen will open. In the **Basics** page:
   1. Next to **Name**, enter **Personal Data Encryption**
   1. Next to **Description**, enter a description
   1. Select **Next**
1. In **Configuration settings** page:
   1. Next to **OMA-URI Settings**, select **Add**
   1. In the **Add Row** window that opens:
     1. Next to **Name**, enter **Personal Data Encryption**
     1. Next to **Description**, enter a description
     1. Next to **OMA-URI**, enter in:
        **`./User/Vendor/MSFT/PDE/EnablePersonalDataEncryption`**
     1. Next to **Data type**, select **Integer**
     1. Next to **Value**, enter in **1**
     1. Select **Save** to close the **Add Row** window
   1. Select **Next**
1. In the **Assignments** page:
   1. Under **Included groups**, select **Add groups**
        > [!NOTE]
        > Make sure to add the correct groups under **Included groups** and not under **Excluded groups**. Accidentally adding the desired device groups under **Excluded groups** will result in those devices being excluded and they won't receive the configuration profile.
   1. In the **Select groups to include** window that opens, select the groups that the configuration profile should be assigned to, and then select **Select** to close the **Select groups to include** window
   1. Under **Included groups** > **Groups**, ensure the correct group(s) are selected, and then select **Next**
1. In **Applicability Rules**, configure if necessary and then select **Next**
1. In **Review + create** page, review the configuration to make sure everything is configured correctly, and then select **Create**

### Configure PDE with Microsoft Intune

To configure devices using Microsoft Intune, [create a **Settings catalog** policy][MEM-1], and use the settings listed under the category **`Local Policies Security Options`**:

Assign the policy to a security group that contains as members the devices or users that you want to configure.  

### Configure PDE with CSP

Alternatively, you can configure devices using a [custom policy][MEM-2] with the [Name CSP][CSP-1].\

The policy settings are located under: `./Device/Vendor/MSFT/`.

|Setting|
| - |
| **Setting name**: Title<br>**Policy CSP name**: `Setting Name`|

## Disable Winlogon automatic restart sign-on (ARSO)

Winlogon automatic restart sign-on (ARSO) isn't supported for use with Personal Data Encryption (PDE). For this reason, in order to use PDE, ARSO needs to be disabled.

To disable ARSO using Intune, follow the below steps:

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431)
1. In the **Home** screen, select **Devices** in the left pane
1. In the **Devices | Overview** screen, under **Policy**, select **Configuration Profiles**
1. In the **Devices | Configuration profiles** screen, make sure **Profiles** is selected at the top, and then select **Create profile**
1. In the **Create profile** window that opens:
   1. Under **Platform**, select **Windows 10 and later**
   1. Under **Profile type**, select **Templates**
   1. When the templates appear, under **Template name**, select **Administrative templates**
   1. Select **Create** to close the **Create profile** window.
1. The **Create profile** screen will open. In the **Basics** page:
   1. Next to **Name**, enter **Disable ARSO**
   1. Next to **Description**, enter a description
   1. Select **Next**
1. In the **Configuration settings** page:
   1. On the left pane of the page, make sure **Computer Configuration** is selected
   1. Under **Setting name**, scroll down and select **Windows Components**
   1. Under **Setting name**, scroll down and select **Windows Logon Options**. You may need to navigate between pages on the bottom right corner before finding the **Windows Logon Options** option
   1. Under **Setting name** of the **Windows Logon Options** pane, select **Sign-in and lock last interactive user automatically after a restart**
   1. In the **Sign-in and lock last interactive user automatically after a restart** window that opens, select **Disabled**, and then select **OK**
   1. Select **Next**
1. In the **Scope tags** page, configure if necessary and then select **Next**
1. In the **Assignments** page:
   1. Under **Included groups**, select **Add groups**
        > [!NOTE]
        > Make sure to select **Add groups** under **Included groups** and not under **Excluded groups**. Accidentally adding the desired device groups under **Excluded groups** will result in those devices being excluded and they won't receive the configuration profile.
   1. In the **Select groups to include** window that opens, select the groups that the configuration profile should be assigned to, and then select **Select** to close the **Select groups to include** window
   1. Under **Included groups** > **Groups**, ensure the correct group(s) are selected, and then select **Next**
1. In **Review + create** page, review the configuration to make sure everything is configured correctly, and then select **Create**

## Additional PDE configurations in Intune
## Disable kernel-mode crash dumps and live dumps for PDE

Kernel-mode crash dumps and live dumps can potentially cause the keys used by Personal Data Encryption (PDE) to protect content to be exposed. For greatest security, disable kernel-mode crash dumps and live dumps.

To disable kernel-mode crash dumps and live dumps using Intune, follow the below steps:

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431)
1. In the **Home** screen, select **Devices** in the left pane
1. In the **Devices | Overview** screen, under **Policy**, select **Configuration Profiles**
1. In the **Devices | Configuration profiles** screen, make sure **Profiles** is selected at the top, and then select **Create profile**
1. In the **Create profile** window that opens:
   1. Under **Platform**, select **Windows 10 and later**
   1. Under **Profile type**, select **Settings catalog**
   1. Select **Create** to close the **Create profile** window
1. The **Create profile** screen will open. In the **Basics** page:
   1. Next to **Name**, enter **Disable Kernel-Mode Crash Dumps**
   1. Next to **Description**, enter a description.
   1. Select **Next**
1. In the **Configuration settings** page:
   1. Select **Add settings**
   1. In the **Settings picker** window that opens:
      1. Under **Browse by category**, scroll down and select **Memory Dump**
      1. When the settings for the **Memory Dump** category appear under **Setting name** in the lower pane, select both **Allow Crash Dump** and **Allow Live Dump**, and then select the **X** in the top right corner of the **Settings picker** window to close the window
   1. Change both **Allow Live Dump** and **Allow Crash Dump** from **Allow** to **Block** by selecting the slider next to each option, and then select **Next**
1. In the **Scope tags** page, configure if necessary and then select **Next**
1. In the **Assignments** page:
   1. Under **Included groups**, select **Add groups**
        > [!NOTE]
        > Make sure to add the correct groups under **Included groups** and not under **Excluded groups**. Accidentally adding the desired device groups under **Excluded groups** will result in those devices being excluded and they won't receive the configuration profile.
   1. In the **Select groups to include** window that opens, select the groups that the configuration profile should be assigned to, and then select **Select** to close the **Select groups to include** window
   1. Under **Included groups** > **Groups**, ensure the correct group(s) are selected, and then select **Next**
1. In **Review + create** page, review the configuration to make sure everything is configured correctly, and then select **Create**

## Disable Windows Error Reporting (WER)/user-mode crash dumps for PDE

Disabling Windows Error Reporting prevents user-mode crash dumps. User-mode crash dumps can potentially cause the keys used by PDE to protect content to be exposed. For greatest security, disable user-mode crash dumps.

To disable Windows Error Reporting (WER) and user-mode crash dumps using Intune, follow the below steps:

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431)
1. In the **Home** screen, select **Devices** in the left pane
1. In the **Devices | Overview** screen, under **Policy**, select **Configuration Profiles**
1. In the **Devices | Configuration profiles** screen, make sure **Profiles** is selected at the top, and then select **Create profile**
1. In the **Create profile** window that opens:
   1. Under **Platform**, select **Windows 10 and later**
   1. Under **Profile type**, select **Settings catalog**
   1. Select **Create** to close the **Create profile** window
1. The **Create profile** screen will open. In the **Basics** page:
   1. Next to **Name**, enter **Disable Windows Error Reporting (WER)**
   1. Next to **Description**, enter a description
   1. Select **Next**
1. In the **Configuration settings** page:
   1. Select **Add settings**
   1. In the **Settings picker** window that opens:
      1. Under **Browse by category**, expand **Administrative Templates**
      1. Under **Administrative Templates**, scroll down and expand **Windows Components**
      1. Under **Windows Components**, scroll down and select **Windows Error Reporting**. Make sure to only select **Windows Error Reporting** and not to expand it
      1. When the settings for the **Windows Error Reporting** subcategory appear under **Setting name** in the lower pane, select **Disable Windows Error Reporting**, and then select the **X** in the top right corner of the **Settings picker** window to close the window
   1. Change **Disable Windows Error Reporting** from **Disabled** to **Enabled** by selecting the slider next to the option
   1. Select **Next**
1. In the **Scope tags** page, configure if necessary and then select **Next**
1. In the **Assignments** page:
   1. Under **Included groups**, select **Add groups**
        > [!NOTE]
        > Make sure to add the correct groups under **Included groups** and not under **Excluded groups**. Accidentally adding the desired device groups under **Excluded groups** will result in those devices being excluded and they won't receive the configuration profile.
   1. In the **Select groups to include** window that opens, select the groups that the configuration profile should be assigned to, and then select **Select** to close the **Select groups to include** window
   1. Under **Included groups** > **Groups**, ensure the correct group(s) are selected, and then select **Next**
1. In **Review + create** page, review the configuration to make sure everything is configured correctly, and then select **Create**


## Disable hibernation for PDE

Hibernation files can potentially cause the keys used by Personal Data Encryption (PDE) to protect content to be exposed. For greatest security, disable hibernation.

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

## Disable allowing users to select when a password is required when resuming from connected standby for PDE

When the **Disable allowing users to select when a password is required when resuming from connected standby** policy isn't configured, the outcome between on-premises Active Directory joined devices and workgroup devices, including Azure Active Directory joined devices, is different:

- On-premises Active Directory joined devices:
  - A user can't change the amount of time after the device's screen turns off before a password is required when waking the device
  - A password is required immediately after the screen turns off
    The above is the desired outcome, but PDE isn't supported with on-premises Active Directory joined devices
- Workgroup devices, including Azure AD joined devices:
  - A user on a Connected Standby device can change the amount of time after the device´s screen turns off before a password is required to wake the device
  - During the time when the screen turns off but a password isn't required, the keys used by PDE to protect content could potentially be exposed. This outcome isn't a desired outcome

Because of this undesired outcome, it's recommended to explicitly disable this policy on Azure AD joined devices instead of leaving it at the default of **Not configured**.

## Disable allowing users to select when a password is required when resuming from connected standby in Intune

To disable the policy **Disable allowing users to select when a password is required when resuming from connected standby** using Intune, follow the below steps:

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431)
1. In the **Home** screen, select **Devices** in the left pane
1. In the **Devices | Overview** screen, under **Policy**, select **Configuration Profiles**
1. In the **Devices | Configuration profiles** screen, make sure **Profiles** is selected at the top, and then select **Create profile**
1. In the **Create profile** window that opens:
   1. Under **Platform**, select **Windows 10 and later**
   1. Under **Profile type**, select **Settings catalog**
   1. Select **Create** to close the **Create profile** window
1. The **Create profile** screen will open. In the **Basics** page:
    1. Next to **Name**, enter **Disable allowing users to select when a password is required when resuming from connected standby**
    1. Next to **Description**, enter a description
    1. Select **Next**.

1. In the **Configuration settings** page:
   1. Select **Add settings**
   1. In the **Settings picker** window that opens:
      1. Under **Browse by category**, expand **Administrative Templates**
      1. Under **Administrative Templates**, scroll down and expand **System**
      1. Under **System**, scroll down and select **Logon**
      1. When the settings for the **Logon** subcategory appear under **Setting name** in the lower pane, select **Allow users to select when a password is required when resuming from connected standby**, and then select the **X** in the top right corner of the **Settings picker** window to close the window
   1. Leave the slider for **Allow users to select when a password is required when resuming from connected standby** at the default of **Disabled**
   1. select **Next**

1. In the **Scope tags** page, configure if necessary and then select **Next**
1. In the **Assignments** page:
   1. Under **Included groups**, select **Add groups**
        > [!NOTE]
        > Make sure to add the correct groups under **Included groups** and not under **Excluded groups**. Accidentally adding the desired device groups under **Excluded groups** will result in those devices being excluded and they won't receive the configuration profile.
   1. In the **Select groups to include** window that opens, select the groups that the configuration profile should be assigned to, and then select **Select** to close the **Select groups to include** window
   1. Under **Included groups** > **Groups**, ensure the correct group(s) are selected, and then select **Next**
1. In **Review + create** page, review the configuration to make sure everything is configured correctly, and then select **Create**

<!--links used in this document-->

[CSP-1]: /windows/client-management/mdm/policy-csp-localpoliciessecurityoptions

[MEM-1]: /mem/intune/configuration/settings-catalog
[MEM-2]: /mem/intune/configuration/custom-settings-windows-10