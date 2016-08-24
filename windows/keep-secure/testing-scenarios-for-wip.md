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
                <li>Open File Explorer, right-click a work document, and then click <strong>Work</strong> from the <strong>File Ownership</strong> menu.<br>Make sure the file is encrypted by right-clicking the file again, clicking <strong>Advanced</strong> from the <strong>General</strong> tab, and then clicking <strong>Details</strong> from the <strong>Compress or Encrypt attributes</strong> area. The file should show up under the heading, <strong>This enterprise domain can remove or revoke access:</strong> <em>&lt;your_enterprise_identity&gt;</em>. For example, contoso.com.</li>
                <li>In File Explorer, right-click the same document, and then click <strong>Personal</strong> from the <strong>File Ownership</strong> menu.<br>Make sure the file is decrypted by right-clicking the file again, clicking <strong>Advanced</strong> from the <strong>General</strong> tab, and then verifying that the <strong>Details</strong> button is unavailable.</li>
            </ol>
            <strong>For mobile:</strong><p>
            <ol>
                <li>Open the File Explorer app, browse to a file location, click the elipsis (...), and then click <strong>Select</strong> to mark at least one file as work-related.</li>
                <li>Click the elipsis (...) again, click <strong>File ownership</strong> from the drop down menu, and then click <strong>Work</strong>.<br>Make sure the file is encrypted, by locating the <strong>Briefcase</strong> icon next to the file name.</li>
                <li>Select the same file, click <strong>File ownership</strong> from the drop down menu, and then click <strong>Personal</strong>.<br>Make sure the file is decrypted and that you're no longer seeing the <strong>Briefcase</strong> icon next to file name.</li>
            </ol>
        </td>
    </tr>
    <tr>
        <td>Create work documents in enterprise-allowed apps.</td>
        <td><strong>For desktop:</strong><p>
            <ul>
                <li>Start an unenlightened but allowed app, such as a line-of-business app, and then create a new document, saving your changes.<br>Make sure the document is encrypted to your Enterprise Identity. This might take a few minutes and require you to close and re-open the file.<p><strong>Important</strong><br>Certain file types like <code>.exe</code> and <code>.dll</code>, along with certain file paths, such as <code>%windir%</code> and <code>%programfiles%</code> are excluded from automatic encryption.<p>For more info about your Enterprise Identity and adding apps to your allowed apps list, see either [Create a Windows Information Protection (WIP) policy using Microsoft Intune](create-wip-policy-using-intune.md) or [Create a Windows Information Protection (WIP) policy using Microsoft System Center Configuration Manager](create-wip-policy-using-sccm.md), based on your deployment system.</li>
            </ul>
            <strong>For mobile:</strong><p>
            <ol>
                <li>Start an allowed mobile app, such as Word Mobile, create a new document, and then save your changes as <strong>Work</strong> to a local, work-related location.<br>Make sure the document is encrypted, by locating the <strong>Briefcase</strong> icon next to the file name.</li>
                <li>Open the same document and attempt to save it to a non-work-related location.<br>WIP should stop you from saving the file to this location.</li>
                <li>Open the same document one last time, make a change to the contents, and then save it again using the <strong>Personal</strong> option.<br>Make sure the file is decrypted and that you're no longer seeing the <strong>Briefcase</strong> icon next to file name.</li>
            </ol>
        </td>        
    </tr>
    <tr>
        <td>Block enterprise data from non-enterprise apps.</td>
        <td>
            <ol>
                <li>Start an app that doesn't appear on your allowed apps list, and then try to open a work-encrypted file.<br>The app shouldn't be able to access the file.</li>
                <li>Try double-clicking or tapping on the work-encrypted file.<br>If your default app association is an app not on your allowed apps list, you should get an <strong>Access Denied</strong> error message.</li>
            </ol>
        </td>
    </tr>
    <tr>
        <td>Copy and paste from enterprise apps to non-enterprise apps.</td>
        <td>
            <ol>
                <li>Copy (CTRL+C) content from an app on your allowed apps list, and then try to paste (CTRL+V) the content into an app that doesn't appear on your allowed apps list.<br>You should see a WIP-related warning box, asking you to click either <strong>Change to personal</strong> or <strong>Keep at work</strong>.</li>
                <li>Click <strong>Keep at work</strong>.<br>The content isn't pasted into the non-enterprise app.</li>
                <li>Repeat Step 1, but this time click <strong>Change to personal</strong>, and try to paste the content again.<br>The content is pasted into the non-enterprise app.</li>
                <li>Try copying and pasting content between apps on your allowed apps list.<br>The content should copy and paste between apps without any warning messages.</li>
            </ol>
        </td>
    </tr>
    <tr>
        <td>Drag and drop from enterprise apps to non-enterprise apps.</td>
        <td>
            <ol>
                <li>Drag content from an app on your allowed apps list, and then try to drop the content into an app that doesn't appear on your allowed apps list.<br>You should see a WIP-related warning box, asking you to click either <strong>Keep at work</strong> or <strong>Change to personal</strong>.</li>
                <li>Click <strong>Keep at work</strong>.<br>The content isn't dropped into the non-enterprise app.</li>
                <li>Repeat Step 1, but this time click <strong>Change to personal</strong>, and try to drop the content again.<br>The content is dropped into the non-enterprise app.</li>
                <li>Try dragging and dropping content between apps on your allowed apps list.<br>The content should move between the apps without any warning messages.</li>
            </ol>
        </td>
    </tr>
    <tr>
        <td>Share between enterprise apps and non-enterprise apps.</td>
        <td>
            <ol>
                <li>Open an app on your allowed apps list, like Microsoft Photos, and try to share content with an app that doesn't appear on your allowed apps list, like Facebook.<br>You should see a WIP-related warning box, asking you to click either <strong>Keep at work</strong> or <strong>Change to personal</strong>.</li>
                <li>Click <strong>Keep at work</strong>.<br>The content isn't shared into Facebook.</li>
                <li>Repeat Step 1, but this time click <strong>Change to personal</strong>, and try to share the content again.<br>The content is shared into Facebook.</li>
                <li>Try sharing content between apps on your allowed apps list.<br>The content should share between the apps without any warning messages.</li>
            </ol>
        </td>
    </tr>
    <tr>
        <td>Verify that Windows system components can use WIP.</td>
        <td>
            <ol>
                <li></li>
            </ol>
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <ol>
                <li></li>
            </ol>
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <ol>
                <li></li>
            </ol>
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <ol>
                <li></li>
            </ol>
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <ol>
                <li></li>
            </ol>
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <ol>
                <li></li>
            </ol>
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <ol>
                <li></li>
            </ol>
        </td>
    </tr>
    <tr>
        <td></td>    
        <td>
            <ol>
                <li></li>
            </ol>
        </td>
    </tr>
</table>    