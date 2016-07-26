---
title: Windows Information Protection overview (Windows 10)
description: Conceptual info about Windows Information Protection (WIP), formerly known as Windows Information Protection (WIP).
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
---

# Windows Information Protection (WIP) overview

**Applies to:**

-   Windows 10 Insider Preview
-   Windows 10 Mobile Preview

With the increase of employee-owned devices in the enterprise, there’s also an increasing risk of accidental data leak through apps and services, like email, social media, and the public cloud, which are outside of the enterprise’s control. For example, when an employee sends the latest engineering pictures from their personal email account, copies and pastes product info into a tweet, or saves an in-progress sales report to their public cloud storage.

Windows Information Protection (WIP) helps to protect against this potential data leakage without otherwise interfering with the employee experience. WIP also helps to protect enterprise apps and data against accidental data leak on enterprise-owned devices and personal devices that employees bring to work without requiring changes to your environment or other apps.


## Benefits of WIP

WIP provides:
- Obvious separation between personal and corporate data, without requiring employees to switch environments or apps.

- Additional data protection for existing line-of-business apps without a need to update the apps.

- Ability to wipe corporate data from devices while leaving personal data alone.

- Use of audit reports for tracking issues and remedial actions.

- Integration with your existing management system (Microsoft Intune, System Center Configuration Manager 2016, or your current mobile device management (MDM) system) to configure, deploy, and manage WIP for your company.

## Enterprise scenarios
WIP currently addresses these enterprise scenarios:
- You can encrypt enterprise data on employee-owned and corporate-owned devices.

- You can remotely wipe enterprise data off managed computers, including employee-owned computers, without affecting the personal data.

- You can select specific apps that can access enterprise data, called "allowed apps" that are clearly recognizable to employees. You can also block non-protected apps from accessing enterprise data.

- Your employees won't have their work otherwise interrupted while switching between personal and enterprise apps while the enterprise policies are in place. Switching environments or signing in multiple times isn’t required.

## Why use WIP?
WIP gives you a new way to manage data policy enforcement for apps and documents, along with the ability to remove access to enterprise data from both enterprise and personal devices (after enrollment in an enterprise management solution, like Intune).

- **Change the way you think about data policy enforcement.** As an enterprise admin, you need to maintain compliance in your data policy and data access. WIP helps make sure that your enterprise data is protected on both corporate and employee-owned devices, even when the employee isn’t using the device. When employees create content on an enterprise-protected device, they can choose to save it as a work document. If it's a work document, it becomes locally-maintained as enterprise data.

- **Manage your enterprise documents, apps, and encryption modes.**

    - **Copying or downloading enterprise data.** When an employee or an app downloads content from a location like SharePoint, a network share, or an enterprise web location, while using an WIP-protected device, WIP encrypts the data on the device.

    - **Using allowed apps.** Managed apps (apps that you've included on the allowed apps list in your WIP policy) are allowed to access your enterprise data and will interact differently when used with unallowed, non-enterprise aware, or personal-only apps. For example, if WIP management is set to **Block**, your employees can copy and paste from one protected app to another protected app, but not to personal apps. Imagine an HR person wants to copy a job description from a protected app to the internal career website, an enterprise-protected location, but goofs and tries to paste into a personal app instead. The paste action fails and a notification pops up, saying that the app couldn’t paste because of a policy restriction. The HR person then correctly pastes to the career website without a problem.

    - **Managed apps and restrictions.** With WIP you can control which apps can access and use your enterprise data. After adding an app to your protected apps list, the app is trusted with enterprise data. All apps not on this list are blocked from accessing your enterprise data, depending on your WIP management-mode.
    
    You don’t have to modify line-of-business apps that never touch personal data to list them as protected apps; just include them in your protected apps list.

    - **Deciding your level of data access.** WIP lets you block, allow overrides, or audit employees' data sharing actions. Blocking the action stops it immediately. Allowing overrides let the employee know there's a risk, but lets him or her continue to share the data while recording and auditing the action. Silent just logs the action without blocking anything that the employee could've overridden while using that setting; collecting info that can help you to see patterns of inappropriate sharing so you can take educative action or find apps that should be added to your protected apps list.

    - **Data encryption at rest.** WIP helps protect enterprise data on local files and on removable media.
    
    Apps such as Microsoft Word work with WIP to help continue your data protection across local files and removable media. These apps are being referred to as, enterprise aware. For example, if an employee opens WIP-encrypted content from Word, edits the content, and then tries to save the edited version with a different name, Word automatically applies WIP to the new document.

    - **Helping prevent accidental data disclosure to public spaces.** WIP helps protect your enterprise data from being accidentally shared to public spaces, such as public cloud storage. For example, if Dropbox™ isn’t on your protected apps list, employees won’t be able to sync encrypted files to their personal cloud storage. Instead, if the employee stores the content to an app on your protected apps list, like Microsoft OneDrive for Business, the encrypted files can sync freely to the business cloud, while maintaining the encryption locally.

    - **Helping prevent accidental data disclosure to removable media.** WIP helps prevent enterprise data from leaking when it's copied or transferred to removable media. For example, if an employee puts enterprise data on a Universal Serial Bus (USB) drive that also has personal data, the enterprise data remains encrypted while the personal data doesn’t.

    - **Remove access to enterprise data from enterprise-protected devices.** WIP gives admins the ability to revoke enterprise data from one or many MDM-enrolled devices, while leaving personal data alone. This is a benefit when an employee leaves your company, or in the case of a stolen device. After determining that the data access needs to be removed, you can unenroll the device so when it connects to the network, the user's encryption key for the device is revoked and the enterprise data becomes unreadable.

## Turn off WIP

You can turn off all Windows Information Protection and restrictions, reverting to where you were pre-WIP, with no data loss. However, turning off WIP isn't recommended. If you choose to turn it off, you can always turn it back on, but WIP won't retain your decryption and policies info.

## Related topics
- [Protect your enterprise data using Windows Information Protection (WIP)](protect-enterprise-data-using-EDP.md)
