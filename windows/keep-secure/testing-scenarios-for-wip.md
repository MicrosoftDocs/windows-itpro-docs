---
title: Testing scenarios for Windows Information Protection (WIP) (Windows 10)
description: We've come up with a list of suggested testing scenarios that you can use to test Windows Information Protection (WIP) in your company.
ms.assetid: 53db29d2-d99d-4db6-b494-90e2b3962ca2
keywords: WIP, Windows Information Protection, EDP, Enterprise Data Protection
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
author: eross-msft
localizationpriority: high
---

# Testing scenarios for Windows Information Protection (WIP)
**Applies to:**

-   Windows 10, version 1607
-   Windows 10 Mobile

We've come up with a list of suggested testing scenarios that you can use to test Windows Information Protection (WIP) in your company.

## Testing scenarios
You can try any of the processes included in these scenarios, but you should focus on the ones that you might encounter in your organization.

<table>
    <tr>
        <th>Scenario</th>
        <th>Processes</th>
    </tr>
    <tr>
        <td>Encrypt and decrypt files using File Explorer.</td>
        <td><strong>For desktop:</strong><p>
            <ol>
                <li>Open File Explorer, right-click a work document, and then click <strong>Work</strong> from the <strong>File Ownership</strong> menu.</li>
                <li>Make sure the file is encrypted by right-clicking the file again, clicking <strong>Advanced</strong> from the <strong>General</strong> tab, and then clicking <strong>Details</strong> from the <strong>Compress or Encrypt attributes</strong> area.<br>The file should show up under the heading, <strong>This enterprise domain can remove or revoke access:</strong> <em>&lt;your_enterprise_identity&gt;</em>. For example, contoso.com.</li>
                <li>In File Explorer, right-click the same document, and then click <strong>Personal</strong> from the <strong>File Ownership</strong> menu.</li>
                <li>Make sure the file is decrypted by right-clicking the file again, clicking <strong>Advanced</strong> from the <strong>General</strong> tab, and then verifying that the <strong>Details</strong> button is unavailable.</li>
            </ol>
            <strong>For mobile:</strong><p>
            <ol>
                <li>Open the File Explorer app, browse to a file location, click the elipsis (...), and then click <strong>Select</strong> to mark at least one file as work-related.</li>
                <li>Click the elipsis (...) again, click <strong>File ownership</strong> from the drop down menu, and then click <strong>Work</strong>.</li>
                <li>Make sure the file is encrypted, by locating the <strong>Briefcase</strong> icon next to the file name.</li>
                <li>Select the same file, click <strong>File ownership</strong> from the drop down menu, and then click <strong>Personal</strong>.</li>
                <li>Make sure the file is decrypted and that you're no longer seeing the <strong>Briefcase</strong> icon next to file name.</li>
            </ol>
        </td>
    </tr>
    <tr>
        <td>Create work documents in enterprise-allowed apps.</td>
        <td><strong>For desktop:</strong><p>
            <ol>
                <li>Start an unenlightened but allowed app, such as a line-of-business app, and then create a new document, saving your changes.</li>
                <li>Make sure the document is encrypted to your Enterprise Identity.<br>This might take a few minutes and require you to close and re-open the file.<p><strong>Important</strong><br>Certain file types like <code>.exe</code> and <code>.dll</code>, along with certain file paths, such as <code>%windir%</code> and <code>%programfiles%</code> are excluded from automatic encryption.<p>For more info about your Enterprise Identity and adding apps to your allowed apps list, see either [Create a Windows Information Protection (WIP) policy using Microsoft Intune](create-wip-policy-using-intune.md) or [Create a Windows Information Protection (WIP) policy using Microsoft System Center Configuration Manager](create-wip-policy-using-sccm.md), based on your deployment system.</li>
            </ol>
            <strong>For mobile:</strong><p>
            <ol>
                <li></li>
                <li></li>
            </ol>
        </td>        
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>                    




3.	
4.	Make sure the file is decrypted, by:
o	Right-clicking the file again, clicking Advanced from the General tab, and then clicking Details from the Compress or Encrypt attributes area.
The Details button should be unavailable.
For mobile:
1.	Open the File Explorer app, browse to a file location, click the elipsis (...), and then click Select to mark at least one file as work-related.
2.	Click the elipsis (...) again, click File ownership from the drop down menu, and then click Work.
Make sure the file is encrypted, by locating the Briefcase icon next to the file name.
3.	Select the same file, click File ownership from the drop down menu, and then click Personal.
Make sure the file is decrypted and that you're no longer seeing the Briefcase icon next to file name.



















|Scenario |Processes |
|---------|----------|
|Automatically encrypt files from enterprise apps |<ol><li>Start an unmodified (for example, WIP-unaware) line-of-business app that's on your allowed apps list and then create, edit, write, and save files.</li><li>Make sure that all of the files you worked with from the WIP-unaware app are encrypted to your configured Enterprise Identity. In some cases, you might need to close the file and wait a few moments for it to be automatically encrypted.</li><li>Open File Explorer and make sure your modified files are appearing with a **Lock** icon.<p>**Note**<br>Some file types, like .exe and .dll, along with some file paths, like `%windir%` and `%programfiles%`, are excluded from automatic encryption.</li></ol> |
|Block enterprise data from non-enterprise apps |<ol><li>Start an app that doesn't appear on your allowed apps list, and then try to open an enterprise-encrypted file.<p>The app shouldn't be able to access the file.</li><li>Try double-clicking or tapping on the enterprise-encrypted file.<p>If your default app association is an app not on your allowed apps list, you should get an **Access Denied** error message.</li></ol> |
|Copy and paste from enterprise apps to non-enterprise apps |<ol><li>Copy (CTRL+C) content from an app on your allowed apps list, and then try to paste (CTRL+V) the content into an app that doesn't appear on your allowed apps list.<p>You should see a WIP-related warning box, asking you to click either **Got it** or **Cancel**.</li><li>Click **Cancel**.<p>The content isn't pasted into the non-enterprise app.</li><li>Repeat Step 1, but this time click **Got it**, and try to paste the content again.<p>The content is pasted into the non-enterprise app.</li><li>Try copying and pasting content between apps on your allowed apps list.<p>The content should copy and paste between apps without any warning messages.</li></ol> |
|Drag and drop from enterprise apps to non-enterprise apps |<ol><li>Drag content from an app on your allowed apps list, and then try to drop the content into an app that doesn't appear on your allowed apps list.<p>You should see a WIP-related warning box, asking you to click either **Drag Anyway** or **Cancel**.</li><li>Click **Cancel**.<p>The content isn't dropped into the non-enterprise app.</li><li>Repeat Step 1, but this time click **Drag Anyway**, and try to drop the content again.<p>The content is dropped into the non-enterprise app.</li><li>Try dragging and dropping content between apps on your allowed apps list.<p>The content should move between the apps without any warning messages.</li></ol> |
|Share between enterprise apps and non-enterprise apps |<ol><li>Open an app on your allowed apps list, like Microsoft Photos, and try to share content with an app that doesn't appear on your allowed apps list, like Facebook.<p>You should see a WIP-related warning box, asking you to click either **Share Anyway** or **Cancel**.</li><li>Click **Cancel**.<p>The content isn't shared into Facebook.</li><li>Repeat Step 1, but this time click **Share Anyway**, and try to share the content again.<p>The content is shared into Facebook.</li><li>Try sharing content between apps on your allowed apps list.<p>The content should share between the apps without any warning messages.</li></ol> | 
|Use the **Encrypt to** functionality |<ol><li>Open File Explorer on the desktop, right-click a decrypted file, and then click **Encrypt to** from the **Encrypt to** menu.<p>WIP should encrypt the file to your Enterprise Identity.</li><li>Make sure that the newly encrypted file has a **Lock** icon.</li><li>In the **Encrypted to** column of File Explorer on the desktop, look for the enterprise ID value.</li><li>Right-click the encrypted file, and then click **Not encrypted** from the **Encrypt to** menu.<p>The file should be decrypted and the **Lock** icon should disappear.</li></ol> |
|Verify that Windows system components can use WIP |<ol><li>Start Windows Journal and Internet Explorer 11, creating, editing, and saving files in both apps.</li><li>Make sure that all of the files you worked with are encrypted to your configured Enterprise Identity. In some cases, you might need to close the file and wait a few moments for it to be automatically encrypted.</li><li>Open File Explorer and make sure your modified files are appearing with a **Lock** icon</li><li>Try copying and pasting, dragging and dropping, and sharing using these apps with other apps that appear both on and off the allowed apps list.<p>**Note**<br>Most Windows-signed components like Windows Explorer (when running in the user’s context), should have access to enterprise data.<p>A few notable exceptions include some of the user-facing in-box apps, like Wordpad, Notepad, and Microsoft Paint. These apps don't have access by default, but can be added to your allowed apps list.</li></ol> |
|Use WIP on FAT/exFAT systems |<ol><li>Start an app that uses the FAT or exFAT file system and appears on your allowed apps list.</li><li>Create, edit, write, save, and move files.<p>Basic file and folder operations like copy, move, rename, delete, and so on, should work properly on encrypted files.</li><li>Try copying and moving files or folders between apps that use NTFS, FAT and exFAT file systems.</li></ol> |
|Use WIP on NTFS systems |<ol><li>Start an app that uses the NTFS file system and appears on your allowed apps list.</li><li>Create, edit, write, save, and move files.<p>Basic file and folder operations like copy, move, rename, delete, and so on, should work properly on encrypted files.</li><li>Try copying and moving files or folders between apps that use NTFS, FAT and exFAT file systems.</li></ol> |
|Unenroll client devices from WIP |<ul><li>Unenroll a device from WIP by going to **Settings**, click **Accounts**, click **Work**, click the name of the device you want to unenroll, and then click **Remove**.<p>The device should be removed and all of the enterprise content for that managed account should be gone.<p>**Important**<br>Unenrolling a device revokes and erases all of the enterprise data for the managed account.</li></ul> |
|Verify that app content is protected when a Windows 10 Mobile phone is locked |<ul><li>Check that protected app data doesn't appear on the **Lock** screen of a Windows 10 Mobile phone</li></ul> |