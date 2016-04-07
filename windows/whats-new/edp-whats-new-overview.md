---
title: Enterprise data protection (EDP) overview (Windows 10)
description: With the increase of employee-owned devices in the enterprise, there’s also an increasing risk of accidental data disclosure through apps and services that are outside of the enterprise’s control like email, social media, and the public cloud.
ms.assetid: 428A3135-CB5E-478B-B1FF-B6EB76F0DF14
keywords: ["EDP Overview", "EDP"]
ms.prod: W10
ms.mktglfcycl: explore
ms.sitesec: library
author: eross-msft
---

# Enterprise data protection (EDP) overview
**Applies to:**

-   Windows 10 Insider Preview
-   Windows 10 Mobile Preview

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here. An app that calls an API introduced in Windows 10 Anniversary SDK Preview Build 14295 cannot be ingested into the Windows Store during the Preview period.]</span>

With the increase of employee-owned devices in the enterprise, there’s also an increasing risk of accidental data disclosure through apps and services that are outside of the enterprise’s control like email, social media, and the public cloud.

Many of the existing solutions try to address this issue by requiring employees to switch between personal and work containers and apps, which can lead to a less than optimal user experience. The feature code-named enterprise data protection (EDP) offers a better user experience, while helping to better separate and protect enterprise apps and data against disclosure risks across both company and personal devices, without requiring changes in environments or apps. Additionally, EDP when used with Rights Management Services (RMS), can help to protect your enterprise data locally, persisting the protection even when your data roams or is shared.

## Benefits of EDP
EDP provides:
-   Additional protection against enterprise data leakage, with minimal impact on employees’ regular work practices.

-   Obvious separation between personal and corporate data, without requiring employees to switch environments or apps.

-   Additional data protection for existing line-of-business apps without a need to update the apps.

-   Ability to wipe corporate data from devices while leaving personal data alone.

-   Use of audit reports for tracking issues and remedial actions.

-   Integration with your existing management system (Microsoft Intune, System Center Configuration Manager (version 1511 or later)’, or your current mobile device management (MDM) system) to configure, deploy, and manage EDP for your company.

-   Additional protection for your data (through RMS integration) while roaming and sharing, like when you share encrypted content through Outlook or move encrypted files to USB keys.

-   Ability to manage Office universal apps on Windows 10 devices using an MDM solution to help protect corporate data. To manage Office mobile apps for Android and iOS devices, see technical resources [here]( http://go.microsoft.com/fwlink/p/?LinkId=526490).

## Enterprise scenarios

EDP currently addresses these enterprise scenarios:

-   You can encrypt enterprise data on employee-owned and corporate-owned devices.

-   You can remotely wipe enterprise data off managed computers, including employee-owned computers, without affecting the personal data.

-   You can select specific apps that can access enterprise data, called "protected apps" that are clearly recognizable to employees. You can also block non-protected apps from accessing enterprise data.

-   Your employees won't have their work otherwise interrupted while switching between personal and enterprise apps while the enterprise policies are in place. Switching environments or signing in multiple times isn’t required.

### Enterprise data security
As an enterprise admin, you need to maintain the security and confidentiality of your corporate data. Using EDP you can help ensure that your corporate data is protected on your employee-owned computers, even when the employee isn’t actively using it. In this case, when the employee initially creates the content on a managed device he’s asked whether it’s a work document. If it's a work document, it becomes locally-protected as enterprise data.

### Persistent data encryption
EDP helps keep your enterprise data protected, even when it roams. Apps like Office and OneNote work with EDP to persist your data encryption across locations and services. For example, if an employee opens EDP-encrypted content from Outlook, edits it, and then tries to save the edited version with a different name to remove the encryption, it won’t work. Outlook automatically applies EDP to the new document, keeping the data encryption in place.

### Remotely wiping devices of enterprise data
EDP also offers the ability to remotely wipe your corporate data from all devices managed by you and used by an employee, while leaving personal data alone. This is a benefit when an employee leaves your company, or in the case of a stolen computer.

In this case, documents are stored locally, and encrypted with an enterprise identity. When you verify that you have to wipe the device, you can send a remote wipe command through your mobile device management system so when the device connects to the network, the encryption keys are revoked and the enterprise data is removed. This action only affects devices that have been targeted by the command. All other devices will continue to work normally.

### Protected apps and restrictions
Using EDP you can control the set of apps that are made "protected apps", or apps that can access and use your enterprise data. After you add an app to your **Protected App** list, it’s trusted to use enterprise data. All apps not on this list are treated as personal and are potentially blocked from accessing your corporate data, depending on your EDP protection-mode.

As a note, your existing line-of-business apps don’t have to change to be included as protected apps. You simply have to include them in your list.

### Great employee experiences
EDP can offer a great user experience by not requiring employees to switch between apps to protect corporate data. For example, while checking work emails in Microsoft Outlook, an employee gets a personal message. Instead of having to leave Outlook, both the work and personal messages appear on the screen, side-by-side.

#### Using protected apps
Protected apps are allowed to access your enterprise data and will react differently with other non-protected or personal apps. For example, if your EDP-protection mode is set to block, your protected apps will let the employee copy and paste information between other protected apps, but not with personal apps. Imagine an HR person wants to copy a job description from a protected app to an internal career website, an enterprise-protected location, but goofs and tries to paste into a personal app instead. The paste action fails and a notification pops up, saying that it couldn’t paste because of a policy restriction. The HR person then correctly pastes to the career website and it works without a problem.

#### Copying or downloading enterprise data
Downloading content from a location like SharePoint or a network file share, or an enterprise web location, such as Office365.com automatically determines that the content is enterprise data and is encrypted as such, while it’s stored locally. The same applies to copying enterprise data to something like a USB drive. Because the content is already marked as enterprise data locally, the encryption is persisted on the new device.

#### Changing the EDP protection
Employees can change enterprise data protected documents back to personal if the document is wrongly marked as enterprise. However, this requires the employee to take an action and is audited and logged for you to review

### Deciding your level of data access
EDP lets you decide to block, allow overrides, or silently audit your employee's data sharing actions. Blocking the action stops it immediately, while allowing overrides let the employee know there's a problem, but lets the employee continue to share the info, and silent just logs the action without stopping it, letting you start to see patterns of inappropriate sharing so you can take educative action.

### Helping prevent accidental data disclosure to public spaces
EDP helps protect your enterprise data from being shared to public spaces, like the public cloud, accidentally. For example, if an employee stores content in the **Documents** folder, which is automatically synched with OneDrive (an app on your Protected Apps list), then the document is encrypted locally and not synched it to the user’s personal cloud. Likewise, if other synching apps, like Dropbox™, aren’t on the Protected Apps list, they also won’t be able to sync encrypted files to the user’s personal cloud.

### Helping prevent accidental data disclosure to other devices
EDP helps protect your enterprise data from leaking to other devices while transferring or moving between them. For example, if an employee puts corporate data on a USB key that also includes personal data, the corporate data remains encrypted even though the personal information remains open. Additionally, the encryption continues when the employee copies the encrypted content back to another corporate-managed device.

## Turn off EDP
You can turn off all enterprise data protection and restrictions, reverting to where you were pre-EDP, with no data loss. However, turning off EDP isn't recommended. If you choose to turn it off, you can always turn it back on, but EDP won't retain your decryption and policies info.

## Related topics
- [Protect your enterprise data using enterprise data protection (EDP)](../keep-secure/protect-enterprise-data-using-edp.md)

 

 





