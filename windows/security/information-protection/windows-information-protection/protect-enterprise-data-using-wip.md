---
title: Protect your enterprise data using Windows Information Protection (WIP) (Windows 10)
description: With the increase of employee-owned devices in the enterprise, there’s also an increasing risk of accidental data leak through apps and services, like email, social media, and the public cloud, which are outside of the enterprise’s control.
ms.assetid: 6cca0119-5954-4757-b2bc-e0ea4d2c7032
ms.reviewer: 
keywords: WIP, Windows Information Protection, EDP, Enterprise Data Protection, DLP, data loss prevention, data leakage protection
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 03/05/2019
---

# Protect your enterprise data using Windows Information Protection (WIP)
**Applies to:**

- Windows 10, version 1607 and later
- Windows 10 Mobile, version 1607 and later

>Learn more about what features and functionality are supported in each Windows edition at [Compare Windows 10 Editions](https://www.microsoft.com/WindowsForBusiness/Compare).

With the increase of employee-owned devices in the enterprise, there’s also an increasing risk of accidental data leak through apps and services, like email, social media, and the public cloud, which are outside of the enterprise’s control. For example, when an employee sends the latest engineering pictures from their personal email account, copies and pastes product info into a tweet, or saves an in-progress sales report to their public cloud storage.

Windows Information Protection (WIP), previously known as enterprise data protection (EDP), helps to protect against this potential data leakage without otherwise interfering with the employee experience. WIP also helps to protect enterprise apps and data against accidental data leak on enterprise-owned devices and personal devices that employees bring to work without requiring changes to your environment or other apps. Finally, another data protection technology, Azure Rights Management also works alongside WIP to extend data protection for data that leaves the device, such as when email attachments are sent from an enterprise aware version of a rights management mail client.

>[!IMPORTANT]
>While WIP can stop accidental data leaks from honest employees, it is not intended to stop malicious insiders from removing enterprise data. For more details about the benefits WIP provides, see [Why use WIP?](#why-use-wip) later in this topic.

## Video: Protect enterprise data from being accidentally copied to the wrong place

> [!Video https://www.microsoft.com/videoplayer/embed/RE2IGhh]

## Prerequisites
You’ll need this software to run WIP in your enterprise:

|Operating system | Management solution |
|-----------------|---------------------|
|Windows 10, version 1607 or later | Microsoft Intune<br><br>-OR-<br><br>System Center Configuration Manager<br><br>-OR-<br><br>Your current company-wide 3rd party mobile device management (MDM) solution. For info about 3rd party MDM solutions, see the documentation that came with your product. If your 3rd party MDM does not have UI support for the policies, refer to the [EnterpriseDataProtection CSP](https://msdn.microsoft.com/library/windows/hardware/mt697634.aspx) documentation.|

## What is enterprise data control?
Effective collaboration means that you need to share data with others in your enterprise. This sharing can be from one extreme where everyone has access to everything without any security, all the way to the other extreme where people can’t share anything and it’s all highly secured. Most enterprises fall somewhere in between the two extremes, where success is balanced between providing the necessary access with the potential for improper data disclosure.

As an admin, you can address the question of who gets access to your data by using access controls, such as employee credentials. However, just because someone has the right to access your data doesn’t guarantee that the data will remain within the secured locations of the enterprise. This means that while access controls are a great start, they’re not enough.

In the end, all of these security measures have one thing in common: employees will tolerate only so much inconvenience before looking for ways around the security restrictions. For example, if you don’t allow employees to share files through a protected system, employees will turn to an outside app that more than likely lacks security controls.

### Using data loss prevention systems
To help address this security insufficiency, companies developed data loss prevention (also known as DLP) systems. Data loss prevention systems require:
- **A set of rules about how the system can identify and categorize the data that needs to be protected.** For example, a rule set might contain a rule that identifies credit card numbers and another rule that identifies Social Security numbers.

- **A way to scan company data to see whether it matches any of your defined rules.** Currently, Microsoft Exchange Server and Exchange Online provide this service for email in transit, while Microsoft SharePoint and SharePoint Online provide this service for content stored in document libraries.

- **The ability to specify what happens when data matches a rule, including whether employees can bypass enforcement.** For example, in Microsoft SharePoint and SharePoint Online, the Microsoft data loss prevention system lets you warn your employees that shared data includes sensitive info, and to share it anyway (with an optional audit log entry).

Unfortunately, data loss prevention systems have their own problems. For example, the more detailed the rule set, the more false positives are created, leading employees to believe that the rules slow down their work and need to be bypassed in order to remain productive, potentially leading to data being incorrectly blocked or improperly released. Another major problem is that data loss prevention systems must be widely implemented to be effective. For example, if your company uses a data loss prevention system for email, but not for file shares or document storage, you might find that your data leaks through the unprotected channels. But perhaps the biggest problem with data loss preventions systems is that it provides a jarring experience that interrupts the employees’ natural workflow by stopping some operations (such as sending a message with an attachment that the system tags as sensitive) while allowing others, often according to subtle rules that the employee doesn’t see and can’t understand.

### Using information rights management systems
To help address the potential data loss prevention system problems, companies developed information rights management (also known as IRM) systems. Information rights management systems embed protection directly into documents, so that when an employee creates a document, he or she determines what kind of protection to apply. For example, an employee can choose to stop the document from being forwarded, printed, shared outside of the organization, and so on. 

After the type of protection is set, the creating app encrypts the document so that only authorized people can open it, and even then, only in compatible apps. After an employee opens the document, the app becomes responsible for enforcing the specified protections. Because protection travels with the document, if an authorized person sends it to an unauthorized person, the unauthorized person won’t be able to read or change it. However, for this to work effectively information rights management systems require you to deploy and set up both a server and client environment. And, because only compatible clients can work with protected documents, an employees’ work might be unexpectedly interrupted if he or she attempts to use a non-compatible app.

### And what about when an employee leaves the company or unenrolls a device?
Finally, there’s the risk of data leaking from your company when an employee leaves or unenrolls a device. Previously, you would simply erase all of the corporate data from the device, along with any other personal data on the device.

## Benefits of WIP
WIP provides:
- Obvious separation between personal and corporate data, without requiring employees to switch environments or apps.

- Additional data protection for existing line-of-business apps without a need to update the apps.

- Ability to wipe corporate data from Intune MDM enrolled devices while leaving personal data alone.

- Use of audit reports for tracking issues and remedial actions.

- Integration with your existing management system (Microsoft Intune, System Center Configuration Manager, or your current mobile device management (MDM) system) to configure, deploy, and manage WIP for your company.

## Why use WIP?
WIP is the mobile application management (MAM) mechanism on Windows 10. WIP gives you a new way to manage data policy enforcement for apps and documents on Windows 10 desktop operating systems, along with the ability to remove access to enterprise data from both enterprise and personal devices (after enrollment in an enterprise management solution, like Intune).

-   **Change the way you think about data policy enforcement.** As an enterprise admin, you need to maintain compliance in your data policy and data access. WIP helps protect enterprise on both corporate and employee-owned devices, even when the employee isn’t using the device. When employees create content on an enterprise-protected device, they can choose to save it as a work document. If it's a work document, it becomes locally-maintained as enterprise data.

-   **Manage your enterprise documents, apps, and encryption modes.**

    -   **Copying or downloading enterprise data.** When an employee or an app downloads content from a location like SharePoint, a network share, or an enterprise web location, while using a WIP-protected device, WIP encrypts the data on the device.

    - **Using protected apps.** Managed apps (apps that you've included on the **Protected apps** list in your WIP policy) are allowed to access your enterprise data and will interact differently when used with unallowed, non-enterprise aware, or personal-only apps. For example, if WIP management is set to **Block**, your employees can copy and paste from one protected app to another protected app, but not to personal apps. Imagine an HR person wants to copy a job description from a protected app to the internal career website, an enterprise-protected location, but goofs and tries to paste into a personal app instead. The paste action fails and a notification pops up, saying that the app couldn’t paste because of a policy restriction. The HR person then correctly pastes to the career website without a problem.

    -   **Managed apps and restrictions.** With WIP you can control which apps can access and use your enterprise data. After adding an app to your protected apps list, the app is trusted with enterprise data. All apps not on this list are stopped from accessing your enterprise data, depending on your WIP management-mode.
    
        You don’t have to modify line-of-business apps that never touch personal data to list them as protected apps; just include them in the protected apps list.

    -   **Deciding your level of data access.** WIP lets you block, allow overrides, or audit employees' data sharing actions. Hiding overrides stops the action immediately. Allowing overrides lets the employee know there's a risk, but lets him or her continue to share the data while recording and auditing the action. Silent just logs the action without stopping anything that the employee could've overridden while using that setting; collecting info that can help you to see patterns of inappropriate sharing so you can take educative action or find apps that should be added to your protected apps list. For info about how to collect your audit log files, see [How to collect Windows Information Protection (WIP) audit event logs](collect-wip-audit-event-logs.md).


    -   **Data encryption at rest.** WIP helps protect enterprise data on local files and on removable media.
    
        Apps such as Microsoft Word work with WIP to help continue your data protection across local files and removable media. These apps are being referred to as, enterprise aware. For example, if an employee opens WIP-encrypted content from Word, edits the content, and then tries to save the edited version with a different name, Word automatically applies WIP to the new document.

    -   **Helping prevent accidental data disclosure to public spaces.** WIP helps protect your enterprise data from being accidentally shared to public spaces, such as public cloud storage. For example, if Dropbox™ isn’t on your protected apps list, employees won’t be able to sync encrypted files to their personal cloud storage. Instead, if the employee stores the content to an app on your protected apps list, like Microsoft OneDrive for Business, the encrypted files can sync freely to the business cloud, while maintaining the encryption locally.

    -   **Helping prevent accidental data disclosure to removable media.** WIP helps prevent enterprise data from leaking when it's copied or transferred to removable media. For example, if an employee puts enterprise data on a Universal Serial Bus (USB) drive that also has personal data, the enterprise data remains encrypted while the personal data doesn’t.

-   **Remove access to enterprise data from enterprise-protected devices.** WIP gives admins the ability to revoke enterprise data from one or many MDM-enrolled devices, while leaving personal data alone. This is a benefit when an employee leaves your company, or in the case of a stolen device. After determining that the data access needs to be removed, you can use Microsoft Intune to unenroll the device so when it connects to the network, the user's encryption key for the device is revoked and the enterprise data becomes unreadable.

    >[!NOTE]
    >For management of Surface devices it is recommended that you use the Current Branch of System Center Configuration Manager.<br>System Center Configuration Manager also allows you to revoke enterprise data. However, it does it by performing a factory reset of the device.

## How WIP works
WIP helps address your everyday challenges in the enterprise. Including:

- Helping to prevent enterprise data leaks, even on employee-owned devices that can't be locked down.

- Reducing employee frustrations because of restrictive data management policies on enterprise-owned devices.

- Helping to maintain the ownership and control of your enterprise data.

- Helping control the network and data access and data sharing for apps that aren’t enterprise aware

### Enterprise scenarios
WIP currently addresses these enterprise scenarios:
- You can encrypt enterprise data on employee-owned and corporate-owned devices.

- You can remotely wipe enterprise data off managed computers, including employee-owned computers, without affecting the personal data.

- You can protect specific apps that can access enterprise data that are clearly recognizable to employees. You can also stop non-protected apps from accessing enterprise data.

- Your employees won't have their work otherwise interrupted while switching between personal and enterprise apps while the enterprise policies are in place. Switching environments or signing in multiple times isn’t required.

### <a href="" id="bkmk-modes"></a>WIP-protection modes
Enterprise data is automatically encrypted after it’s loaded on a device from an enterprise source or if an employee marks the data as corporate. Then, when the enterprise data is written to disk, WIP uses the Windows-provided Encrypting File System (EFS) to protect it and associate it with your enterprise identity.

Your WIP policy includes a list of trusted apps that are protected to access and process corporate data. This list of apps is implemented through the [AppLocker](/windows/device-security/applocker/applocker-overview) functionality, controlling what apps are allowed to run and letting the Windows operating system know that the apps can edit corporate data. Apps included on this list don’t have to be modified to open corporate data because their presence on the list allows Windows to determine whether to grant them access. However, new for Windows 10, app developers can use a new set of application programming interfaces (APIs) to create *enlightened* apps that can use and edit both enterprise and personal data. A huge benefit to working with enlightened apps is that dual-use apps, like Microsoft Word, can be used with less concern about encrypting personal data by mistake because the APIs allow the app to determine whether data is owned by the enterprise or if it’s personally owned.

>[!NOTE]
>For info about how to collect your audit log files, see [How to collect Windows Information Protection (WIP) audit event logs](collect-wip-audit-event-logs.md).

You can set your WIP policy to use 1 of 4 protection and management modes:

|Mode|Description|
|----|-----------|
|Block |WIP looks for inappropriate data sharing practices and stops the employee from completing the action. This can include sharing enterprise data to non-enterprise-protected apps in addition to sharing enterprise data between apps or attempting to share outside of your organization’s network.|
|Allow overrides |WIP looks for inappropriate data sharing, warning employees if they do something deemed potentially unsafe. However, this management mode lets the employee override the policy and share the data, logging the action to your audit log.|
|Silent |WIP runs silently, logging inappropriate data sharing, without stopping anything that would’ve been prompted for employee interaction while in Allow overrides mode. Unallowed actions, like apps inappropriately trying to access a network resource or WIP-protected data, are still stopped.|
|Off |WIP is turned off and doesn't help to protect or audit your data.<p>After you turn off WIP, an attempt is made to decrypt any WIP-tagged files on the locally attached drives. Be aware that your previous decryption and policy info isn’t automatically reapplied if you turn WIP protection back on. |

## Turn off WIP
You can turn off all Windows Information Protection and restrictions, decrypting all devices managed by WIP and reverting to where you were pre-WIP, with no data loss. However, this isn’t recommended. If you choose to turn WIP off, you can always turn it back on, but your decryption and policy info won’t be automatically reapplied.

## Next steps
After deciding to use WIP in your enterprise, you need to:

-   [Create a Windows Information Protection (WIP) policy](overview-create-wip-policy.md)


>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Editing Windows IT professional documentation](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).
