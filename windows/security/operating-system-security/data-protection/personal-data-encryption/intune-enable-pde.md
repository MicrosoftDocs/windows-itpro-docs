---
title: Enable Personal Data Encryption (PDE) in Intune
description: Enable Personal Data Encryption (PDE) in Intune
ms.topic: how-to
ms.date: 03/13/2023
---

# Enable Personal Data Encryption (PDE)

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

## Additional PDE configurations in Intune

The following PDE configurations can also be configured using Intune:

### Prerequisites

- [Disable Winlogon automatic restart sign-on (ARSO)](intune-disable-arso.md)

### Security hardening recommendations

- [Disable kernel-mode crash dumps and live dumps](intune-disable-memory-dumps.md)
- [Disable Windows Error Reporting (WER)/user-mode crash dumps](intune-disable-wer.md)
- [Disable hibernation](intune-disable-hibernation.md)
- [Disable allowing users to select when a password is required when resuming from connected standby](intune-disable-password-connected-standby.md)

## More information

- [Personal Data Encryption (PDE)](index.md)
- [Personal Data Encryption (PDE) FAQ](faq-pde.yml)
