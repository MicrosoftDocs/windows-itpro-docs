---
title: BitLocker recovery screen
description: Learn about the information displayed in the BitLocker recovery screen depending on configured policy settings and recovery keys status.
ms.collection: 
  - highpri
  - tier1
ms.topic: concept-article
ms.date: 10/10/2023
---

# BitLocker recovery screen

During BitLocker recovery, Windows can display a custom recovery message and a few hints to help users finding where a key can be retrieved from.

This article describes the information displayed in the BitLocker recovery screen depending on configured policy settings and recovery keys status.

## Custom recovery message

:::row:::
  :::column span="3":::
    BitLocker policy settings allow configuring a custom recovery message and URL on the BitLocker recovery screen. The custom recovery message and URL can include the address of the BitLocker self-service recovery portal, the IT internal website, or a phone number for support.
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/recovery-message-url.png" alt-text="Screenshot of the BitLocker recovery screen showing a custom URL." lightbox="images/recovery-message-url.png":::
  :::column-end:::
:::row-end:::

For more information, see [Configure preboot recovery message and URL](policy-settings.md?tabs=os#configure-preboot-recovery-message-and-url).

## BitLocker recovery key hints

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
1. If two recovery keys are present, but only one was backed up, the system asks for the backed up key, even if the other key is newer

### Example: single recovery password for Microsoft account and single backup

:::row:::
  :::column span="2":::
    In this scenario, a custom URL is configured. The recovery password is:
      - saved to Microsoft Account
      - not printed
      - not saved to a file
  :::column-end:::
  :::column span="2":::
  **Result:** the hints for the Microsoft account and custom URL are displayed.
  :::image type="content" source="images/rp-example1.png" alt-text="Screenshot of the BitLocker recovery screen showing a hint where the BitLocker recovery key was saved." lightbox="images/rp-example1.png":::
  :::column-end:::
:::row-end:::

### Example: single recovery password in AD DS and single backup

:::row:::
  :::column span="2":::
    In this scenario, a custom URL is configured. The recovery password is:
    - saved to Active Directory
    - not printed
    - not saved to a file  
  :::column-end:::
  :::column span="2":::
  **Result:** only the custom URL is displayed.
  :::image type="content" source="images/rp-example2.png" alt-text="Screenshot of the BitLocker recovery screen showing only the custom URL." lightbox="images/rp-example2.png":::
  :::column-end:::
:::row-end:::

### Example: single recovery password in Microsoft Entra ID with multiple backups

:::row:::
  :::column span="2":::
    In this scenario, the recovery password is:
    - saved to Microsoft Account
    - saved to Microsoft Entra ID
    - printed
    - saved to file  
  :::column-end:::
  :::column span="2":::
  **Result:** only the Microsoft Account hint is displayed.
  :::image type="content" source="images/rp-example3.png" alt-text="Screenshot of the BitLocker recovery screen showing only the Microsoft Account hint." lightbox="images/rp-example3.png":::
  :::column-end:::
:::row-end:::

**Result:** Only the Microsoft Account hint is displayed.

### Example: multiple recovery passwords

:::row:::
  :::column span="2":::
    In this scenario, there are two recovery passwords.

    The recovery password #1 is:
    - saved to file
    - creation time: **1PM**
    - key ID: **A564F193**
    
    The recovery password #2 is:
    - not backed up
    - creation time: **3PM**
    - key ID: **T4521ER5**
  :::column-end:::
  :::column span="2":::
  **Result:** only the hint for the successfully backed up key is displayed, even if it isn't the most recent key.
  :::image type="content" source="images/rp-example4.png" alt-text="Screenshot of the BitLocker recovery screen showing the key ID of the recovery password that was successfully backed up." lightbox="images/rp-example4.png":::
  :::column-end:::
:::row-end:::

### Example: multiple recovery passwords

:::row:::
  :::column span="2":::
    In this scenario, there are two recovery passwords.

    The recovery password #1 is:
     - Saved to Microsoft Account
     - Saved to Microsoft Entra ID
     - creation time: **1PM**
     - key ID: **99631A34**
    
    The recovery password #2 is:
      - Saved to Microsoft Entra ID
      - creation time: **3PM**
      - key ID: **9DF70931**
  :::column-end:::
  :::column span="2":::
  **Result:** the hint for the most recent key is displayed.
  :::image type="content" source="images/rp-example5.png" alt-text="Screenshot of the BitLocker recovery screen showing the key ID of the most recent key." lightbox="images/rp-example5.png":::
  :::column-end:::
:::row-end:::
