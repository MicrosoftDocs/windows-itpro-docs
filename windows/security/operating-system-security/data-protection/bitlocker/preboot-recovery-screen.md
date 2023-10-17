---
title: BitLocker preboot recovery screen
description: Learn about the information displayed in the BitLocker preboot recovery screen, depending on configured policy settings and recovery keys status.
ms.collection: 
  - highpri
  - tier1
ms.topic: concept-article
ms.date: 10/11/2023
---

# BitLocker preboot recovery screen

During BitLocker recovery, the *preboot recovery screen* can display a custom recovery message, a custom recovery URL, and a few hints to help users finding where a key can be retrieved from.

This article describes the information displayed in the preboot recovery screen depending on configured policy settings and recovery keys status.

## Default preboot recovery screen

:::row:::
  :::column span="2":::
    By default, the BitLocker recovery screen displays a generic message and the url **https://aka.ms/recoverykeyfaq**.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery.png" alt-text="Screenshot of the default BitLocker recovery screen." lightbox="images/preboot-recovery.png" border="false":::
  :::column-end:::
:::row-end:::

## Custom recovery message

With BitLocker policy settings, you can configure a custom recovery message and URL on the BitLocker preboot recovery screen. The custom recovery message and URL can include the address of the BitLocker self-service recovery portal, the IT internal website, or a phone number for support.

:::row:::
  :::column span="2":::
    BitLocker policy settings configured with a custom recovery message.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-custom-message.png" alt-text="Screenshot of the BitLocker recovery screen showing a custom message." lightbox="images/preboot-recovery-custom-message.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
    BitLocker policy settings configured with a custom recovery URL.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-custom-url.png" alt-text="Screenshot of the BitLocker recovery screen showing a custom URL." lightbox="images/preboot-recovery-custom-url.png" border="false":::
  :::column-end:::
:::row-end:::

For more information how to configure a custom recovery message with policy settings, see [Configure preboot recovery message and URL](configure.md?tabs=os#configure-preboot-recovery-message-and-url).

## Recovery key hints

BitLocker metadata includes information about when and where a BitLocker recovery key was saved. This information isn't exposed through the UI or any public API. It's used solely by the BitLocker recovery screen in the form of hints to help a user locate a volume's recovery key. Hints are displayed on the recovery screen and refer to the location where the key was saved. The hints apply to both the boot manager recovery screen and the WinRE unlock screen.

There are rules governing which hint is shown during the recovery (in the order of processing):

1. Always display custom recovery message, if configured via policy settings
1. Always display generic hint: **For more information, go to https://aka.ms/recoverykeyfaq**
1. If multiple recovery keys exist on the volume, prioritize the last-created (and successfully backed up) recovery key
1. Prioritize keys with successful backup over keys that have never been backed up
1. Prioritize backup hints in the following order for remote backup locations:
    - Microsoft account
    - Microsoft Entra ID
    - Active Directory
1. If a key has been printed and saved to file, display a combined hint **Look for a printout or a text file with the key**, instead of two separate hints
1. If multiple backups of the same type (remove vs. local) were done for the same recovery key, prioritize backup info with latest backup date
1. There's no specific hint for keys saved to an on-premises Active Directory. In this case, a custom message (if configured) or a generic message, **Contact your organization's help desk**, is displayed
1. If two recovery keys are present and only one backed up, the system asks for the backed up key, even if the other key is newer

:::row:::
  :::column span="4":::
    #### Example: single recovery password saved to file and single backup
    :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
    In this scenario, the recovery password is saved to a file
    
    > [!IMPORTANT]
    > It's not recommend to print recovery keys or saving them to a file. Instead, use Microsoft account, Microsoft Entra ID or Active Directory backup.
  
:::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-hint.png" alt-text="Screenshot of the BitLocker recovery screen showing a hint where the BitLocker recovery key was saved." lightbox="images/preboot-recovery-hint.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    #### Example: single recovery password for Microsoft account and single backup
    :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
    In this scenario, a custom URL is configured. The recovery password is:
      - saved to Microsoft account
      - not printed
      - not saved to a file
    
    **Result:** the hints for the custom URL and the Microsoft account (**https://aka.ms/myrecoverykey**) are displayed.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-custom-url-single-backup.png" alt-text="Screenshot of the BitLocker recovery screen showing a custom URL and the hint where the BitLocker recovery key was saved." lightbox="images/preboot-recovery-custom-url-single-backup.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    #### Example: single recovery password in AD DS and single backup
    :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
    In this scenario, a custom URL is configured. The recovery password is:
    - saved to Active Directory
    - not printed
    - not saved to a file
    
    **Result:** only the custom URL is displayed.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-custom-url.png" alt-text="Screenshot of the BitLocker recovery screen showing only the custom URL." lightbox="images/preboot-recovery-custom-url.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    #### Example: single recovery password with multiple backups
    :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
    In this scenario, the recovery password is:
    - saved to Microsoft account
    - saved to Microsoft Entra ID
    - printed
    - saved to file
    
    **Result:** only the Microsoft account hint (**https://aka.ms/myrecoverykey**) is displayed.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-multiple-backups.png" alt-text="Screenshot of the BitLocker recovery screen showing only the Microsoft account hint." lightbox="images/preboot-recovery-multiple-backups.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    #### Example: multiple recovery passwords with sinlge backup
    :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
    In this scenario, there are two recovery passwords.

    The recovery password #1 is:
    - saved to file
    - creation time: **1PM**
    - key ID: **4290B6C0-B17A-497A-8552-272CC30E80D4**
    
    The recovery password #2 is:
    - not backed up
    - creation time: **3PM**
    - key ID: **045219EC-A53B-41AE-B310-08EC883AAEDD**
    
    **Result:** only the hint for the successfully backed up key is displayed, even if it isn't the most recent key.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-hint.png" alt-text="Screenshot of the BitLocker recovery screen showing the key ID of the recovery password that was successfully backed up." lightbox="images/preboot-recovery-hint.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    #### Example: multiple recovery passwords with multiple backups
    :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
    In this scenario, there are two recovery passwords.

    The recovery password #1 is:
     - Saved to Microsoft account
     - Saved to Microsoft Entra ID
     - creation time: **1PM**
     - key ID: **4290B6C0-B17A-497A-8552-272CC30E80D4**
    
    The recovery password #2 is:
      - Saved to Microsoft Entra ID
      - creation time: **3PM**
      - key ID: **045219EC-A53B-41AE-B310-08EC883AAEDD**
    
    **Result:** the Microsoft Entra ID hint (**https://aka.ms/aadrecoverykey**), which is the most recent key saved, is displayed.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-multiple-passwords-multiple-backups.png" alt-text="Screenshot of the BitLocker recovery screen showing the key ID of the most recent key." lightbox="images/preboot-recovery-multiple-passwords-multiple-backups.png" border="false":::
  :::column-end:::
:::row-end:::
