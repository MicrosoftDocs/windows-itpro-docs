---
title: Testing scenarios for Windows Information Protection (WIP) (Windows 10)
description: A list of suggested testing scenarios that you can use to test Windows Information Protection (WIP) in your company.
ms.assetid: 53db29d2-d99d-4db6-b494-90e2b3962ca2
ms.reviewer: 
keywords: WIP, Windows Information Protection, EDP, Enterprise Data Protection
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dulcemontemayor
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 03/05/2019
---

# Testing scenarios for Windows Information Protection (WIP)
**Applies to:**

- Windows 10, version 1607 and later
- Windows 10 Mobile, version 1607 and later

We've come up with a list of suggested testing scenarios that you can use to test Windows Information Protection (WIP) in your company.

## Testing scenarios
You can try any of the processes included in these scenarios, but you should focus on the ones that you might encounter in your organization.

>[!IMPORTANT]
>If any of these scenarios does not work, first take note of whether WIP has been revoked. If it has, unenlightened apps will have to be uninstalled and re-installed since their settings files will remain encrypted.

<table>
    <tr>
        <th>Scenario</th>
        <th>Processes</th>
    </tr>
    <tr>
        <td>Encrypt and decrypt files using File Explorer.</td>
        <td><strong>For desktop:</strong><br><br>
            <ol>
                <li>Open File Explorer, right-click a work document, and then click <strong>Work</strong> from the <strong>File Ownership</strong> menu.<br>Make sure the file is encrypted by right-clicking the file again, clicking <strong>Advanced</strong> from the <strong>General</strong> tab, and then clicking <strong>Details</strong> from the <strong>Compress or Encrypt attributes</strong> area. The file should show up under the heading, <strong>This enterprise domain can remove or revoke access:</strong> <em>&lt;your_enterprise_identity&gt;</em>. For example, contoso.com.</li>
                <li>In File Explorer, right-click the same document, and then click <strong>Personal</strong> from the <strong>File Ownership</strong> menu.<br>Make sure the file is decrypted by right-clicking the file again, clicking <strong>Advanced</strong> from the <strong>General</strong> tab, and then verifying that the <strong>Details</strong> button is unavailable.</li>
            </ol>
            <strong>For mobile:</strong><br><br>
            <ol>
                <li>Open the File Explorer app, browse to a file location, click the elipsis (...), and then click <strong>Select</strong> to mark at least one file as work-related.</li>
                <li>Click the elipsis (...) again, click <strong>File ownership</strong> from the drop down menu, and then click <strong>Work</strong>.<br>Make sure the file is encrypted, by locating the <strong>Briefcase</strong> icon next to the file name.</li>
                <li>Select the same file, click <strong>File ownership</strong> from the drop down menu, and then click <strong>Personal</strong>.<br>Make sure the file is decrypted and that you&#39;re no longer seeing the <strong>Briefcase</strong> icon next to file name.</li>
            </ol>
        </td>
    </tr>
    <tr>
        <td>Create work documents in enterprise-allowed apps.</td>
        <td><strong>For desktop:</strong><br><br>
            <ul>
                <li>Start an unenlightened but allowed app, such as a line-of-business app, and then create a new document, saving your changes.<br>Make sure the document is encrypted to your Enterprise Identity. This might take a few minutes and require you to close and re-open the file.<br><br><strong>Important</strong><br>Certain file types like <code>.exe</code> and <code>.dll</code>, along with certain file paths, such as <code>%windir%</code> and <code>%programfiles%</code> are excluded from automatic encryption.<br><br>For more info about your Enterprise Identity and adding apps to your allowed apps list, see either <a href="create-wip-policy-using-intune-azure.md" data-raw-source="[Create a Windows Information Protection (WIP) policy using Microsoft Intune](create-wip-policy-using-intune-azure.md)">Create a Windows Information Protection (WIP) policy using Microsoft Intune</a> or <a href="create-wip-policy-using-sccm.md" data-raw-source="[Create a Windows Information Protection (WIP) policy using Microsoft System Center Configuration Manager](create-wip-policy-using-sccm.md)">Create a Windows Information Protection (WIP) policy using Microsoft System Center Configuration Manager</a>, based on your deployment system.</li>
            </ul>
            <strong>For mobile:</strong><br><br>
            <ol>
                <li>Start an allowed mobile app, such as Word Mobile, create a new document, and then save your changes as <strong>Work</strong> to a local, work-related location.<br>Make sure the document is encrypted, by locating the <strong>Briefcase</strong> icon next to the file name.</li>
                <li>Open the same document and attempt to save it to a non-work-related location.<br>WIP should stop you from saving the file to this location.</li>
                <li>Open the same document one last time, make a change to the contents, and then save it again using the <strong>Personal</strong> option.<br>Make sure the file is decrypted and that you&#39;re no longer seeing the <strong>Briefcase</strong> icon next to file name.</li>
            </ol>
        </td><br/>    </tr>
    <tr>
        <td>Block enterprise data from non-enterprise apps.</td>
        <td>
            <ol>
                <li>Start an app that doesn&#39;t appear on your allowed apps list, and then try to open a work-encrypted file.<br>The app shouldn&#39;t be able to access the file.</li>
                <li>Try double-clicking or tapping on the work-encrypted file.<br>If your default app association is an app not on your allowed apps list, you should get an <strong>Access Denied</strong> error message.</li>
            </ol>
        </td>
    </tr>
    <tr>
        <td>Copy and paste from enterprise apps to non-enterprise apps.</td>
        <td>
            <ol>
                <li>Copy (CTRL+C) content from an app on your allowed apps list, and then try to paste (CTRL+V) the content into an app that doesn&#39;t appear on your allowed apps list.<br>You should see a WIP-related warning box, asking you to click either <strong>Change to personal</strong> or <strong>Keep at work</strong>.</li>
                <li>Click <strong>Keep at work</strong>.<br>The content isn&#39;t pasted into the non-enterprise app.</li>
                <li>Repeat Step 1, but this time click <strong>Change to personal</strong>, and try to paste the content again.<br>The content is pasted into the non-enterprise app.</li>
                <li>Try copying and pasting content between apps on your allowed apps list.<br>The content should copy and paste between apps without any warning messages.</li>
            </ol>
        </td>
    </tr>
    <tr>
        <td>Drag and drop from enterprise apps to non-enterprise apps.</td>
        <td>
            <ol>
                <li>Drag content from an app on your allowed apps list, and then try to drop the content into an app that doesn&#39;t appear on your allowed apps list.<br>You should see a WIP-related warning box, asking you to click either <strong>Keep at work</strong> or <strong>Change to personal</strong>.</li>
                <li>Click <strong>Keep at work</strong>.<br>The content isn&#39;t dropped into the non-enterprise app.</li>
                <li>Repeat Step 1, but this time click <strong>Change to personal</strong>, and try to drop the content again.<br>The content is dropped into the non-enterprise app.</li>
                <li>Try dragging and dropping content between apps on your allowed apps list.<br>The content should move between the apps without any warning messages.</li>
            </ol>
        </td>
    </tr>
    <tr>
        <td>Share between enterprise apps and non-enterprise apps.</td>
        <td>
            <ol>
                <li>Open an app on your allowed apps list, like Microsoft Photos, and try to share content with an app that doesn&#39;t appear on your allowed apps list, like Facebook.<br>You should see a WIP-related warning box, asking you to click either <strong>Keep at work</strong> or <strong>Change to personal</strong>.</li>
                <li>Click <strong>Keep at work</strong>.<br>The content isn&#39;t shared into Facebook.</li>
                <li>Repeat Step 1, but this time click <strong>Change to personal</strong>, and try to share the content again.<br>The content is shared into Facebook.</li>
                <li>Try sharing content between apps on your allowed apps list.<br>The content should share between the apps without any warning messages.</li>
            </ol>
        </td>
    </tr>
    <tr>
        <td>Verify that Windows system components can use WIP.</td>
        <td>
            <ol>
                <li>Start Windows Journal and Internet Explorer 11, creating, editing, and saving files in both apps.<br>Make sure that all of the files you worked with are encrypted to your configured Enterprise Identity. In some cases, you might need to close the file and wait a few moments for it to be automatically encrypted.</li>
                <li>Open File Explorer and make sure your modified files are appearing with a <strong>Lock</strong> icon.</li>
                <li>Try copying and pasting, dragging and dropping, and sharing using these apps with other apps that appear both on and off the allowed apps list.<br><br><strong>Note</strong><br>Most Windows-signed components like File Explorer (when running in the user’s context), should have access to enterprise data.<br><br>A few notable exceptions include some of the user-facing in-box apps, like Wordpad, Notepad, and Microsoft Paint. These apps don&#39;t have access by default, but can be added to your allowed apps list.</li>
            </ol>
        </td>
    </tr>
    <tr>
        <td>Use WIP on NTFS, FAT, and exFAT systems.</td>
        <td>
            <ol>
                <li>Start an app that uses the FAT or exFAT file system (for example a SD card or USB flash drive), and appears on your allowed apps list.</li>
                <li>Create, edit, write, save, copy, and move files.<br>Basic file and folder operations like copy, move, rename, delete, and so on, should work properly on encrypted files.</li>
            </ol>
        </td>
    </tr>
    <tr>
        <td>Verify your shared files can use WIP.</td>
        <td>
            <ol>
                <li>Download a file from a protected file share, making sure the file is encrypted by locating the <strong>Briefcase</strong> icon next to the file name.</li>
                <li>Open the same file, make a change, save it and then try to upload it back to the file share. Again, this should work without any warnings.</li>
                <li>Open an app that doesn&#39;t appear on your allowed apps list and attempt to access a file on the WIP-enabled file share.<br>The app shouldn&#39;t be able to access the file share.</li>
            </ol>
        </td>
    </tr>
    <tr>
        <td>Verify your cloud resources can use WIP.</td>
        <td>
            <ol>
                <li>Add both Internet Explorer 11 and Microsoft Edge to your allowed apps list.</li>
                <li>Open SharePoint (or another cloud resource that&#39;s part of your policy) and access a WIP-enabled resource by using both IE11 and Microsoft Edge.<br>Both browsers should respect the enterprise and personal boundary.</li>
                <li>Remove Internet Explorer 11 from your allowed app list and then try to access an intranet site or enterprise-related cloud resource.<br>IE11 shouldn&#39;t be able to access the sites.<br><br><strong>Note</strong><br>Any file downloaded from your work SharePoint site, or any other WIP-enabled cloud resource, is automatically marked as <strong>Work</strong>.</li>
            </ol>
        </td>
    </tr>
    <tr>
        <td>Verify your Virtual Private Network (VPN) can be auto-triggered.</td>
        <td>
            <ol>
                <li>Set up your VPN network to start based on the <strong>WIPModeID</strong> setting.<br>For specific info about how to do this, see the <a href="create-vpn-and-wip-policy-using-intune-azure.md" data-raw-source="[Create and deploy a VPN policy for Windows Information Protection (WIP) using Microsoft Intune](create-vpn-and-wip-policy-using-intune-azure.md)">Create and deploy a VPN policy for Windows Information Protection (WIP) using Microsoft Intune</a> topic.</li>
                <li>Start an app from your allowed apps list.<br>The VPN network should automatically start.</li>
                <li>Disconnect from your network and then start an app that isn&#39;t on your allowed apps list.<br>The VPN shouldn&#39;t start and the app shouldn&#39;t be able to access your enterprise network.</li>
            </ol>
        </td>
    </tr>
    <tr>
        <td>Unenroll client devices from WIP.</td>
        <td>
            <ul>
                <li>Unenroll a device from WIP by going to <strong>Settings</strong>, click <strong>Accounts</strong>, click <strong>Work</strong>, click the name of the device you want to unenroll, and then click <strong>Remove</strong>.<br>The device should be removed and all of the enterprise content for that managed account should be gone.<br><br><strong>Important</strong><br>On desktop devices, the data isn&#39;t removed and can be recovered, so you must make sure the content is marked as <strong>Revoked</strong> and that access is denied for the employee. On mobile devices, the data is removed.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>Verify that app content is protected when a Windows 10 Mobile phone is locked.</td>
        <td>
            <ul>
                <li>Check that protected app data doesn&#39;t appear on the Lock screen of a Windows 10 Mobile phone.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>Stop Google Drive from syncing WIP protected files and folders.</td>
        <td>
            <ul>
                <li>In silent configuration, add Google Drive to Protected Apps and set it to Deny. This way, Google Drive will not sync WIP protected files and folders.</li>
                <li>Google Drive details</li>
                Publisher=O=GOOGLE LLC, L=MOUNTAIN VIEW, S=CA, C=US
                File=GOOGLEDRIVESYNC.EXE
            </ul>
        </td>
    </tr>
</table>

>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Editing Windows IT professional documentation](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).
