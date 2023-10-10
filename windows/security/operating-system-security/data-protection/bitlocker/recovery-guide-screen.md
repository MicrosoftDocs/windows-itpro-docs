---
title: BitLocker recovery screen
description: Learn how to recover BitLocker keys from Microsoft Entra ID and Active Directory Domain Services (AD DS).
ms.collection: 
  - highpri
  - tier1
ms.topic: how-to
ms.date: 09/29/2023
---

# BitLocker recovery screen

During BitLocker recovery, Windows displays a custom recovery message and a few hints that identify where a key can be retrieved from. These improvements can help a user during BitLocker recovery.

### Custom recovery message

:::row:::
  :::column span="3":::
    BitLocker policy settings allows configuring a custom recovery message and URL on the BitLocker recovery screen. The custom recovery message and URL can include the address of the BitLocker self-service recovery portal, the IT internal website, or a phone number for support.
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/recovery-message-url.png" alt-text="Screenshot of the BitLocker recovery screen showing a custom URL." lightbox="images/recovery-message-url.png":::
  :::column-end:::
:::row-end:::

For more information, see [Configure preboot recovery message and URL](policy-settings.md?tabs=os#configure-preboot-recovery-message-and-url).

### BitLocker recovery key hints

:::row:::
  :::column span="3":::
    BitLocker metadata includes information about when and where a BitLocker recovery key was saved. This information isn't exposed through the UI or any public API. It's used solely by the BitLocker recovery screen in the form of hints to help a user locate a volume's recovery key. Hints are displayed on the recovery screen and refer to the location where the key was saved. The hints apply to both the boot manager recovery screen and the WinRE unlock screen.
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/recover-message-hint.png" alt-text="Screenshot of the BitLocker recovery screen showing a hint where the BitLocker recovery key was saved." lightbox="images/recover-message-hint.png":::
  :::column-end:::
:::row-end:::

> [!IMPORTANT]
> It's not recommend to print recovery keys or saving them to a file. Instead, use Microsoft Account, Microsoft Entra ID or Active Directory backup.

There are rules governing which hint is shown during the recovery (in the order of processing):

1. Always display custom recovery message, if configured via policy settings
1. Always display generic hint: **For more information, go to https://aka.ms/recoverykeyfaq.**
1. If multiple recovery keys exist on the volume, prioritize the last-created (and successfully backed up) recovery key
1. Prioritize keys with successful backup over keys that have never been backed up
1. Prioritize backup hints in the following order for remote backup locations: **Microsoft Account > Azure AD > Active Directory**
1. If a key has been printed and saved to file, display a combined hint **Look for a printout or a text file with the key**, instead of two separate hints
1. If multiple backups of the same type (remove vs. local) were done for the same recovery key, prioritize backup info with latest backup date
1. There's no specific hint for keys saved to an on-premises Active Directory. In this case, a custom message (if configured) or a generic message, **Contact your organization's help desk**, is displayed
1. If two recovery keys are present on the disk, but only one was successfully backed up, the system asks for a key that was backed up, even if another key is newer

#### Example 1 (single recovery key with single backup)

:::row:::
  :::column span="3":::
| Custom URL                 | Yes |
|----------------------------|-----|
| Saved to Microsoft Account | Yes |
| Saved to Azure AD          | No  |
| Saved to Active Directory  | No  |
| Printed                    | No  |
| Saved to file              | No  |
**Result:** The hints for the Microsoft account and custom URL are displayed.
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/rp-example1.png" alt-text="Screenshot of the BitLocker recovery screen showing a hint where the BitLocker recovery key was saved." lightbox="images/rp-example1.png":::
  :::column-end:::
:::row-end:::

| Custom URL                 | Yes |
|----------------------------|-----|
| Saved to Microsoft Account | Yes |
| Saved to Azure AD          | No  |
| Saved to Active Directory  | No  |
| Printed                    | No  |
| Saved to file              | No  |

**Result:** The hints for the Microsoft account and custom URL are displayed.

![Example 1 of Customized BitLocker recovery screen.](images/rp-example1.png)

#### Example 2 (single recovery key with single backup)

| Custom URL                 | Yes |
|----------------------------|-----|
| Saved to Microsoft Account | No  |
| Saved to Azure AD          | No  |
| Saved to Active Directory  | Yes |
| Printed                    | No  |
| Saved to file              | No  |

**Result:** Only the custom URL is displayed.

![Example 2 of customized BitLocker recovery screen.](images/rp-example2.png)

#### Example 3 (single recovery key with multiple backups)

| Custom URL                 | No  |
|----------------------------|-----|
| Saved to Microsoft Account | Yes |
| Saved to Azure AD          | Yes |
| Saved to Active Directory  | No  |
| Printed                    | Yes |
| Saved to file              | Yes |

**Result:** Only the Microsoft Account hint is displayed.

![Example 3 of customized BitLocker recovery screen.](images/rp-example3.png)

#### Example 4  (multiple recovery passwords)

| Custom URL                 | No       |
|----------------------------|----------|
| Saved to Microsoft Account | No       |
| Saved to Azure AD          | No       |
| Saved to Active Directory  | No       |
| Printed                    | No       |
| Saved to file              | Yes      |
| Creation time              | **1PM**  |
| Key ID                     | A564F193 |

| Custom URL                 | No       |
|----------------------------|----------|
| Saved to Microsoft Account | No       |
| Saved to Azure AD          | No       |
| Saved to Active Directory  | No       |
| Printed                    | No       |
| Saved to file              | No       |
| Creation time              | **3PM**  |
| Key ID                     | T4521ER5 |

**Result:** Only the hint for a successfully backed up key is displayed, even if it isn't the most recent key.

![Example 4 of customized BitLocker recovery screen.](images/rp-example4.png)

#### Example 5  (multiple recovery passwords)

| Custom URL                 | No       |
|----------------------------|----------|
| Saved to Microsoft Account | Yes      |
| Saved to Azure AD          | Yes      |
| Saved to Active Directory  | No       |
| Printed                    | No       |
| Saved to file              | No       |
| Creation time              | **1PM**  |
| Key ID                     | 99631A34 |

| Custom URL                 | No       |
|----------------------------|----------|
| Saved to Microsoft Account | No       |
| Saved to Azure AD          | Yes      |
| Saved to Active Directory  | No       |
| Printed                    | No       |
| Saved to file              | No       |
| Creation time              | **3PM**  |
| Key ID                     | 9DF70931 |

**Result:** The hint for the most recent key is displayed.

![Example 5 of customized BitLocker recovery screen.](images/rp-example5.png)
