---
title: Testing scenarios for enterprise data protection (EDP) (Windows 10)
description: We've come up with a list of suggested testing scenarios that you can use to test enterprise data protection (EDP) in your company.
ms.assetid: 53DB29D2-D99D-4DB6-B494-90E2B3962CA2
author: brianlic-msft
---

# Testing scenarios for enterprise data protection (EDP)


**Applies to:**

-   Windows 10 Insider Preview
-   Windows 10 Mobile Preview

\[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here. An app that calls an API introduced in Windows SDK Insider Preview Build 14295 cannot be ingested into the Windows Store during the Preview period.\]

We've come up with a list of suggested testing scenarios that you can use to test enterprise data protection (EDP) in your company.

## Testing scenarios


You can try any of the processes included in these scenarios, but you should focus on the ones that you might encounter in your organization.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Scenario</th>
<th align="left">Processes</th>
<th align="left">Notes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Automatically encrypt files from enterprise apps</p></td>
<td align="left"><ol>
<li><p>Start an unmodified (for example, EDP-unaware) line-of-business app that's on your <strong>Protected Apps</strong> list and then create, edit, write, and save files.</p></li>
<li><p>Make sure that all of the files you worked with from the EDP-unaware app are encrypted to your configured Enterprise Identity. In some cases, you might need to close the file and wait a few moments for it to be automatically encrypted.</p></li>
<li><p>Open File Explorer and make sure your modified files are appearing with a <strong>Lock</strong> icon.</p></li>
</ol></td>
<td align="left"><p>Be aware that some file types, like .exe and .dll, along with some file paths, like <code>%windir%</code> and <code>%programfiles%</code>, are excluded from automatic encryption.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Block enterprise data from non-enterprise apps</p></td>
<td align="left"><ol>
<li><p>Start an app that doesn't appear on your <strong>Protected Apps</strong> list, and then try to open an enterprise-encrypted file.</p>
<p>The app shouldn't be able to access the file.</p></li>
<li><p>Try double-clicking or tapping on the enterprise-encrypted file.</p>
<p>If your default app association is an app not your <strong>Protected Apps</strong> list, you should get an <strong>Access Denied</strong> error message.</p></li>
</ol></td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"><p>Copy and paste from enterprise apps to non-enterprise apps</p></td>
<td align="left"><ol>
<li><p>Copy (CTRL+C) content from an app on your <strong>Protected Apps</strong> list, and then try to paste (CTRL+V) the content into an app that doesn't appear on your <strong>Protected Apps</strong> list.</p>
<p>You should see an EDP-related warning box, asking you to click either <strong>Got it</strong> or <strong>Cancel</strong>.</p></li>
<li><p>Click <strong>Cancel</strong>.</p>
<p>The content isn't pasted into the non-enterprise app.</p></li>
<li><p>Repeat Step 1, but this time click <strong>Got it</strong>, and try to paste the content again.</p>
<p>The content is pasted into the non-enterprise app.</p></li>
<li><p>Try copying and pasting content between apps on your <strong>Protected Apps</strong> list.</p>
<p>The content should copy and paste between apps without any warning messages.</p></li>
</ol></td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"><p>Drag and drop from enterprise apps to non-enterprise apps</p></td>
<td align="left"><ol>
<li><p>Drag content from an app on your <strong>Protected Apps</strong> list, and then try to drop the content into an app that doesn't appear on your <strong>Protected Apps</strong> list.</p>
<p>You should see an EDP-related warning box, asking you to click either <strong>Drag Anyway</strong> or <strong>Cancel</strong>.</p></li>
<li><p>Click <strong>Cancel</strong>.</p>
<p>The content isn't dropped into the non-enterprise app.</p></li>
<li><p>Repeat Step 1, but this time click <strong>Drag Anyway</strong>, and try to drop the content again.</p>
<p>The content is dropped into the non-enterprise app.</p></li>
<li><p>Try dragging and dropping content between apps on your <strong>Protected Apps</strong> list.</p>
<p>The content should move between the apps without any warning messages.</p></li>
</ol></td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"><p>Share between enterprise apps and non-enterprise apps</p></td>
<td align="left"><ol>
<li><p>Open an app on your <strong>Protected Apps</strong> list, like Microsoft Photos, and try to share content with an app that doesn't appear on your <strong>Protected Apps</strong> list, like Facebook.</p>
<p>You should see an EDP-related warning box, asking you to click either <strong>Share Anyway</strong> or <strong>Cancel</strong>.</p></li>
<li><p>Click <strong>Cancel</strong>.</p>
<p>The content isn't shared into Facebook.</p></li>
<li><p>Repeat Step 1, but this time click <strong>Share Anyway</strong>, and try to share the content again.</p>
<p>The content is shared into Facebook.</p></li>
<li><p>Try sharing content between apps on your <strong>Protected Apps</strong> list.</p>
<p>The content should share between the apps without any warning messages.</p></li>
</ol></td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"><p>Use the <strong>Encrypt to</strong> functionality</p></td>
<td align="left"><ol>
<li><p>Open File Explorer on the desktop, right-click a decrypted file, and then click <strong>Encrypt to</strong> from the <strong>Encrypt to</strong> menu.</p>
<p>EDP should encrypt the file to your Enterprise Identity.</p></li>
<li><p>Make sure that the newly encrypted file has a <strong>Lock</strong> icon.</p></li>
<li><p>In the <strong>Encrypted to</strong> column of File Explorer on the desktop, look for the enterprise ID value.</p></li>
<li><p>Right-click the encrypted file, and then click <strong>Not encrypted</strong> from the <strong>Encrypt to</strong> menu.</p>
<p>The file should be decrypted and the <strong>Lock</strong> icon should disappear.</p></li>
</ol></td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"><p>Verify that Windows system components can use EDP</p></td>
<td align="left"><ol>
<li><p>Start Windows Journal and Internet Explorer 11, creating, editing, and saving files in both apps.</p></li>
<li><p>Make sure that all of the files you worked with are encrypted to your configured Enterprise Identity. In some cases, you might need to close the file and wait a few moments for it to be automatically encrypted.</p></li>
<li><p>Open File Explorer and make sure your modified files are appearing with a <strong>Lock</strong> icon</p></li>
<li><p>Try copying and pasting, dragging and dropping, and sharing using these apps with other apps that appear both on and off the <strong>Protected Apps</strong> list.</p></li>
</ol></td>
<td align="left"><p>Most Windows-signed components like Windows Explorer (when running in the user’s context), should have access to enterprise data.</p>
<p>A few notable exceptions include some of the user-facing in-box apps, like Wordpad, Notepad, and Microsoft Paint. These apps don't have access by default, but can be added to your <strong>Protected Apps</strong> list.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Use EDP on FAT/exFAT systems</p></td>
<td align="left"><ol>
<li><p>Start an app that uses the FAT or exFAT file system and appears on your <strong>Protected Apps</strong> list.</p></li>
<li><p>Create, edit, write, save, and move files.</p>
<p>Basic file and folder operations like copy, move, rename, delete, and so on, should work properly on encrypted files.</p></li>
<li><p>Try copying and moving files or folders between apps that use NTFS, FAT and exFAT file systems.</p></li>
</ol></td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"><p>Use EDP on NTFS systems</p></td>
<td align="left"><ol>
<li><p>Start an app that uses the NTFS file system and appears on your <strong>Protected Apps</strong> list.</p></li>
<li><p>Create, edit, write, save, and move files.</p>
<p>Basic file and folder operations like copy, move, rename, delete, and so on, should work properly on encrypted files.</p></li>
<li><p>Try copying and moving files or folders between apps that use NTFS, FAT and exFAT file systems.</p></li>
</ol></td>
<td align="left"><p>Please pay attention and report any performance issues or slow-downs on the NTFS file system.</p>
<p>Currently, EFS Performance Optimizations are only enabled on NTFS.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Unenroll client devices from EDP</p></td>
<td align="left"><ul>
<li><p>Unenroll a device from EDP by going to <strong>Settings</strong> (which settings menu?), click <strong>Accounts</strong>, click <strong>Work</strong>, click the name of the device (or name of the person?) you want to unenroll, and then click <strong>Remove</strong> .</p>
<p>The device should be removed and all of the enterprise content for that managed account should be gone.</p></li>
</ul></td>
<td align="left"><p><strong>WARNING</strong></p>
<p>Unenrolling a device revokes and erases all of the enterprise data for the managed account.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Verify that app content is protected when a Windows 10 Mobile phone is locked (also known as, Data Protection under Lock (DPL))</p></td>
<td align="left"><p>Check that protected app data doesn't appear on the <strong>Lock</strong> screen of a Windows 10 Mobile phone.</p></td>
<td align="left"><p><strong>Additional requirements to run DPL:</strong></p>
<ul>
<li><p>Device needs to be running TPM 2.0.</p></li>
<li><p>Employee setup PIN for the device. You'll need to also setup a policy to require the PIN when you turn on DPL.</p></li>
<li><p>At least one piece of encrypted enterprise content. This is because DPL keys are created during the first attempt to protect a file. Before that, nothing will happen, since there's no enterprise content to protect.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

 

 





