---
title: Protect your enterprise data using enterprise data protection (EDP) (Windows 10)
description: With the increase of employee-owned devices in the enterprise, there’s also an increasing risk of accidental data leak through apps and services, like email, social media, and the public cloud, which are outside of the enterprise’s control.
ms.assetid: 6CCA0119-5954-4757-B2BC-E0EA4D2C7032
keywords: ["EDP", "Enterprise Data Protection"]
ms.prod: W10
ms.mktglfcycl: explore
ms.sitesec: library
author: brianlic-msft
---

# Protect your enterprise data using enterprise data protection (EDP)


**Applies to:**

-   Windows 10 Insider Preview
-   Windows 10 Mobile Preview

\[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here. An app that calls an API introduced in Windows SDK Insider Preview Build 14295 cannot be ingested into the Windows Store during the Preview period.\]

With the increase of employee-owned devices in the enterprise, there’s also an increasing risk of accidental data leak through apps and services, like email, social media, and the public cloud, which are outside of the enterprise’s control. For example, when an employee sends the latest engineering pictures to their personal email account, copies and pastes product info to a public Yammer group or tweet, or saves an in-progress sales report to their public cloud storage.

Enterprise data protection (EDP) helps to protect against this potential data leakage without otherwise interfering with the employee experience. EDP also helps to protect enterprise apps and data against accidental data leak on enterprise-owned devices and personal devices that employees bring to work without requiring changes to your environment or other apps. Finally, another data protection technology, Azure Rights Management also works alongside EDP to extend data protection for data that leaves the device, such as when email attachments are sent from an enterprise aware version of a rights management mail client.

## <a href="" id="prereqs"></a>Prerequisites


You’ll need this software to run EDP in your enterprise:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating System</th>
<th align="left">Management solution</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows 10 Insider Preview</p></td>
<td align="left"><p>Microsoft Intune</p>
<p>-OR-</p>
<p>System Center Configuration Manager (version 1511 or later)</p>
<p>-OR-</p>
<p>Your current company-wide 3rd party mobile device management (MDM) solution. For info about 3rd party MDM solutions, see the documentation that came with your product. If your 3rd party MDM does not have UI support for the policies, refer to the [Custom URI - Policy CSP](http://go.microsoft.com/fwlink/?LinkID=733963) documentation.</p></td>
</tr>
</tbody>
</table>

 

## How EDP works


EDP helps address your everyday challenges in the enterprise. Including:

-   Helping to prevent enterprise data leaks, even on employee-owned devices that can't be locked down.

-   Reducing employee frustrations because of restrictive data management policies on enterprise-owned devices.

-   Helping to maintain the ownership and control of your enterprise data.

-   Managing apps that aren’t enterprise aware, especially on mobile devices.

### EDP-protection modes

You can set EDP to 1 of 4 protection and management modes:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Mode</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Block</p></td>
<td align="left"><p>EDP looks for inappropriate data sharing practices and stops the employee from completing the action. This can include sharing info across non-enterprise-protected apps in addition to sharing enterprise data between other people and devices outside of your enterprise.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Override</p></td>
<td align="left"><p>EDP looks for inappropriate data sharing, warning employees if they do something deemed potentially unsafe. However, this management mode lets the employee override the policy and share the data, logging the action to your audit log, accessible through the [Reporting CSP](http://go.microsoft.com/fwlink/p/?LinkID=746459).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Silent</p></td>
<td align="left"><p>EDP runs silently, logging inappropriate data sharing, without blocking anything.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Off</p></td>
<td align="left"><p>EDP is turned off and doesn't help to protect or audit your data.</p>
<p>After you turn off EDP, an attempt is made to decrypt any closed EDP-tagged files on the locally attached drives.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For more info about setting your EDP-protection modes, see either [Create an enterprise data protection (EDP) policy using Intune](create-edp-policy-using-intune.md)) or [Create and deploy an enterprise data protection (EDP) policy using Configuration Manager](create-edp-policy-using-sccm.md)), depending on your management solution.

 

## Why use EDP?


EDP gives you a new way to manage data security for apps and documents, along with the ability to remove access to enterprise data from both enterprise and personal devices (after enrollment in an enterprise management solution, like Intune).

-   **Change the way you think about data security.** As an enterprise admin, you need to maintain the security and confidentiality of your enterprise data. EDP helps make sure that your enterprise data is protected on employee-owned devices, even when the employee isn’t using the device. When employees create content on an enterprise-protected device, they can choose to save it as a work document. If it's a work document, it becomes locally-maintained as enterprise data.

-   **Manage your enterprise documents, apps, and encryption modes.**

    -   **Copying or downloading enterprise data.** When an employee or an app downloads content from a location like SharePoint, a network share, or an enterprise web location, while using an EDP-protected device, EDP encrypts the data on the device.

    -   **Using protected apps.** Managed apps (apps that you've included on the **Protected Apps** list in your EDP policy) are allowed to access your enterprise data and will interact differently when used with unallowed, non-enterprise aware, or personal-only apps. For example, if EDP management is set to **Block**, your employees can copy and paste from one protected app to another protected app, but not to personal apps. Imagine an HR person wants to copy a job description from a protected app to the internal career website, an enterprise-protected location, but goofs and tries to paste into a personal app instead. The paste action fails and a notification pops up, saying that the app couldn’t paste because of a policy restriction. The HR person then correctly pastes to the career website without a problem.

    -   **Managed apps and restrictions.** With EDP you can control which apps can access and use your enterprise data. After adding an app to your **Protected App** list, the app is trusted with enterprise data. All apps not on this list are potentially blocked from accessing your enterprise data, depending on your EDP management-mode.

        You don’t have to modify line-of-business apps that never touch personal data to list them as protected apps; just include them in the **Protected App** list.

    -   **Deciding your level of data access.** EDP lets you block, allow overrides, or audit employees' data sharing actions. Blocking the action stops it immediately. Allowing overrides let the employee know there's a risk, but lets him or her continue to share the data while recording and auditing the action. Silent just logs the action without stopping it; collecting info that can help you to see patterns of inappropriate sharing so you can take educative action or find apps that should be added to your **Protected App** list.

    -   **Continuous data encryption.** EDP helps protect enterprise data when it leaves a device. For example, when an employee saves to public cloud storage, or synchronizes with another device.

        Apps such as Microsoft Word work with EDP to continue your data encryption across locations and services. These apps are being referred to as, *enterprise aware*. For example, if an employee opens EDP-encrypted content from Word, edits the content, and then tries to save the edited version with a different name, Word automatically applies EDP to the new document, maintaining the encryption.

    -   **Helping prevent accidental data disclosure to public spaces.** EDP helps protect your enterprise data from being accidentally shared to public spaces, such as public cloud storage. For example, file syncing apps not on your **Protected App** list, such as Dropbox™, won’t be able to sync encrypted files to the employee’s personal cloud storage. Instead, if an employee stores content in their Microsoft OneDrive for Business folder, which is automatically synced with OneDrive for Business (an app on your **Protected App** list), then the document maintains its encryption and can sync freely.

    -   **Helping prevent accidental data disclosure to other devices.** EDP helps prevent enterprise data from leaking when it's copied or transferred to other devices. For example, if an employee puts enterprise data on a Universal Serial Bus (USB) drive that also has personal data, the enterprise data remains encrypted while the personal data doesn’t.

-   **Remove access to enterprise data from enterprise-protected devices.** EDP gives admins the ability to revoke enterprise data from one or many MDM-enrolled devices, while leaving personal data alone. This is a benefit when an employee leaves your company, or in the case of a stolen device. After determining that the data access needs to be removed, you can unenroll the device so when it connects to the network, the user's encryption key for the device is revoked and the enterprise data becomes unreadable.

    **Note**  System Center Configuration Manager also allows you to revoke enterprise data. However, it does it by performing a factory reset of the device.

     

## Current limitations with EDP


EDP is still in development and is not yet integrated with Azure Rights Management. This means that while you can deploy an EDP-configured policy to a protected device, that protection is restricted to a single user on the device. Additionally, the EDP-protected data must be stored on NTFS, FAT, or ExFAT file systems.

Use the following table to identify the scenarios that require Azure Rights Management, the behavior when Azure Rights Management is not used with EDP, and the recommended workarounds.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">EDP scenario</th>
<th align="left">Without Azure Rights Management</th>
<th align="left">Workaround</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Saving enterprise data to USB drives</p></td>
<td align="left"><p>Data in the new location remains encrypted, but becomes inaccessible on other devices or for other users. For example, the file won't open or the file opens, but doesn't contain readable text.</p></td>
<td align="left"><p>Share files with fellow employees through enterprise file servers or enterprise cloud locations. If data must be shared via USB, employees can decrypt protected files, but it will be audited.</p>
<p>We strongly recommend educating employees about how to limit or eliminate the need for this decryption.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Sharing enterprise data through email attachments</p></td>
<td align="left"><p>The attachment is sent unprotected.</p></td>
<td align="left"><p>Store documents on enterprise cloud or network sites, and share links.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Synchronizing data to other services or public cloud storage</p></td>
<td align="left"><p>Synchronized files aren't protected on additional services or as part of public cloud storage.</p></td>
<td align="left"><p>Stop the app from synchronizing or don't add the app to your <strong>Protected App</strong> list.</p>
<p>For more info about adding apps to the <strong>Protected Apps</strong> list, see either the [Create an enterprise data protection (EDP) policy using Intune](create-edp-policy-using-intune.md)) or the [Create and deploy an enterprise data protection (EDP) policy using Configuration Manager](create-edp-policy-using-sccm.md)) topic, depending on your management solution.</p></td>
</tr>
</tbody>
</table>

 

## Next steps


After deciding to use EDP in your enterprise, you need to:

-   [Create an enterprise data protection (EDP) policy](overview-create-edp-policy.md))

 

 





