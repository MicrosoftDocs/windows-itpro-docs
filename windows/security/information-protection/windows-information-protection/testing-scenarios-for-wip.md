---
title: Testing scenarios for Windows Information Protection (WIP) 
description: A list of suggested testing scenarios that you can use to test Windows Information Protection (WIP) in your company.
ms.reviewer: 
author: aczechowski
ms.author: aaroncz
manager: dougeby
ms.topic: conceptual
ms.date: 03/05/2019
---

# Testing scenarios for Windows Information Protection (WIP)
**Applies to:**

- Windows 10, version 1607 and later

We've come up with a list of suggested testing scenarios that you can use to test Windows Information Protection (WIP) in your company.

## Testing scenarios
You can try any of the processes included in these scenarios, but you should focus on the ones that you might encounter in your organization.

>[!IMPORTANT]
>If any of these scenarios does not work, first take note of whether WIP has been revoked. If it has, unenlightened apps will have to be uninstalled and re-installed since their settings files will remain encrypted.

- **Encrypt and decrypt files using File Explorer**:

  1. Open File Explorer, right-click a work document, and then click **Work** from the **File Ownership** menu.

      Make sure the file is encrypted by right-clicking the file again, clicking **Advanced** from the **General** tab, and then clicking **Details** from the **Compress or Encrypt attributes** area. The file should show up under the heading, **This enterprise domain can remove or revoke access:** `*<your_enterprise_identity>*`. For example, `contoso.com`.

  2. In File Explorer, right-click the same document, and then click **Personal** from the **File Ownership** menu.

      Make sure the file is decrypted by right-clicking the file again, clicking **Advanced** from the **General** tab, and then verifying that the **Details** button is unavailable.

- **Create work documents in enterprise-allowed apps**: Start an unenlightened but allowed app, such as a line-of-business app, and then create a new document, saving your changes.

  Make sure the document is encrypted to your Enterprise Identity. This might take a few minutes and require you to close and re-open the file.

  > [!IMPORTANT]
  > Certain file types like `.exe` and `.dll`, along with certain file paths, such as `%windir%` and `%programfiles%` are excluded from automatic encryption.

  For more info about your Enterprise Identity and adding apps to your allowed apps list, see either [Create a Windows Information Protection (WIP) policy using Microsoft Intune](create-wip-policy-using-intune-azure.md) or [Create a Windows Information Protection (WIP) policy using Microsoft Configuration Manager](create-wip-policy-using-configmgr.md), based on your deployment system.

- **Block enterprise data from non-enterprise apps**:

  1. Start an app that doesn't appear on your allowed apps list, and then try to open a work-encrypted file.

      The app shouldn't be able to access the file.

  2. Try double-clicking or tapping on the work-encrypted file. If your default app association is an app not on your allowed apps list, you should get an **Access Denied** error message.

- **Copy and paste from enterprise apps to non-enterprise apps**:

  1. Copy (CTRL+C) content from an app on your allowed apps list, and then try to paste (CTRL+V) the content into an app that doesn't appear on your allowed apps list.

      You should see a WIP-related warning box, asking you to click either **Change to personal** or **Keep at work**.

  2. Click **Keep at work**. The content isn't pasted into the non-enterprise app.
  3. Repeat Step 1, but this time select **Change to personal** and try to paste the content again.

      The content is pasted into the non-enterprise app.

  4. Try copying and pasting content between apps on your allowed apps list. The content should copy and paste between apps without any warning messages.

- **Drag and drop from enterprise apps to non-enterprise apps**:

  1. Drag content from an app on your allowed apps list, and then try to drop the content into an app that doesn't appear on your allowed apps list.

      You should see a WIP-related warning box, asking you to click either **Keep at work** or **Change to personal**.

  2. Click **Keep at work**. The content isn't dropped into the non-enterprise app.
  3. Repeat Step 1, but this time select **Change to personal** and try to drop the content again.

      The content is dropped into the non-enterprise app.

  4. Try dragging and dropping content between apps on your allowed apps list. The content should move between the apps without any warning messages.

- **Share between enterprise apps and non-enterprise apps**: 

  1. Open an app on your allowed apps list, like Microsoft Photos, and try to share content with an app that doesn't appear on your allowed apps list, like Facebook.

      You should see a WIP-related warning box, asking you to click either **Keep at work** or **Change to personal**.

  2. Click **Keep at work**. The content isn't shared into Facebook.
  3. Repeat Step 1, but this time select **Change to personal** and try to share the content again.

      The content is shared into Facebook.

  4. Try sharing content between apps on your allowed apps list. The content should share between the apps without any warning messages.

- **Verify that Windows system components can use WIP**:

  1. Start Windows Journal and Internet Explorer 11, creating, editing, and saving files in both apps.

      Make sure that all of the files you worked with are encrypted to your configured Enterprise Identity. In some cases, you might need to close the file and wait a few moments for it to be automatically encrypted.

  2. Open File Explorer and make sure your modified files are appearing with a **Lock** icon.
  3. Try copying and pasting, dragging and dropping, and sharing using these apps with other apps that appear both on and off the allowed apps list.

      > [!NOTE]
      > Most Windows-signed components like File Explorer (when running in the user's context), should have access to enterprise data.
      > 
      > A few notable exceptions include some of the user-facing in-box apps, like Wordpad, Notepad, and Microsoft Paint. These apps don't have access by default, but can be added to your allowed apps list.

- **Use WIP on NTFS, FAT, and exFAT systems**:

  1. Start an app that uses the FAT or exFAT file system (for example an SD card or USB flash drive), and appears on your allowed apps list.
  2. Create, edit, write, save, copy, and move files. Basic file and folder operations like copy, move, rename, delete, and so on, should work properly on encrypted files.

- **Verify your shared files can use WIP**:

  1. Download a file from a protected file share, making sure the file is encrypted by locating the **Briefcase** icon next to the file name.
  2. Open the same file, make a change, save it and then try to upload it back to the file share. Again, this should work without any warnings.
  3. Open an app that doesn't appear on your allowed apps list and attempt to access a file on the WIP-enabled file share.

      The app shouldn't be able to access the file share.

- **Verify your cloud resources can use WIP**:

  1. Add both Internet Explorer 11 and Microsoft Edge to your allowed apps list.
  2. Open SharePoint (or another cloud resource that's part of your policy) and access a WIP-enabled resource by using both IE11 and Microsoft Edge.

      Both browsers should respect the enterprise and personal boundary.

  3. Remove Internet Explorer 11 from your allowed app list and then try to access an intranet site or enterprise-related cloud resource.

      IE11 shouldn't be able to access the sites.

      > [!NOTE]
      > Any file downloaded from your work SharePoint site, or any other WIP-enabled cloud resource, is automatically marked as **Work**.

- **Verify your Virtual Private Network (VPN) can be auto-triggered**:

  1. Set up your VPN network to start based on the **WIPModeID** setting. For specific info, see [Create and deploy a VPN policy for Windows Information Protection (WIP) using Microsoft Intune](create-vpn-and-wip-policy-using-intune-azure.md).
  2. Start an app from your allowed apps list. The VPN network should automatically start.
  3. Disconnect from your network and then start an app that isn't on your allowed apps list.

      The VPN shouldn't start and the app shouldn't be able to access your enterprise network.

- **Unenroll client devices from WIP**: Unenroll a device from WIP by going to **Settings**, click **Accounts**, click **Work**, click the name of the device you want to unenroll, and then click **Remove**.

  The device should be removed and all of the enterprise content for that managed account should be gone.

  > [!IMPORTANT]
  > On client devices, the data isn't removed and can be recovered. So, you must make sure the content is marked as **Revoked** and that access is denied for the employee.


>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute, see [Editing Windows IT professional documentation](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).
