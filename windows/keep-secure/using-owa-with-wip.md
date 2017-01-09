---
title: Using Outlook Web Access with Windows Information Protection (WIP) (Windows 10)
description: Options for using Outlook Web Access (OWA) with Windows Information Protection (WIP).
keywords: WIP, Windows Information Protection, EDP, Enterprise Data Protection, WIP and OWA configuration
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
localizationpriority: high
---

# Using Outlook Web Access with Windows Information Protection (WIP)
**Applies to:**

-   Windows 10, version 1607
-   Windows 10 Mobile

>Learn more about what features and functionality are supported in each Windows edition at [Compare Windows 10 Editions](https://www.microsoft.com/en-us/WindowsForBusiness/Compare).

Because Outlook Web Access (OWA) can be used both personally and as part of your organization, you have the following options to configure it with Windows Information Protection (WIP):

|Option |OWA behavior |
|-------|-------------|
|Disable OWA. Employees can only use Microsoft Outlook 2016 or the Office 365 Mail app. | Disabled. |
|Don't configure outlook.office.com in any of your networking settings. |All mailboxes are automatically marked as personal. This means employees attempting to copy work content into OWA receive prompts and that files downloaded from OWA aren't automatically protected as corporate data. |
|Do all of the following:<ul><li>Create a domain (such as mail.contoso.com, redirecting to outlook.office.com) that can be used by your employees to access work email.</li><li>Add the new domain to the Enterprise Cloud Resources network element in your WIP policy.</li><li>Add the following URLs to the Neutral Resources network element in your WIP policy:<ul><li>outlook.office365.com</li><li>outlook.office.com</li><li>outlook-sdf.office.com</li><li>attachment.outlook.office.net</li></ul></li></ul> |Inbox content accessed through the new domain is automatically marked as corporate data, while content accessed through personal email is automatically marked as personal. |
|Add outlook.office.com to the Enterprise Cloud Resources network element in your WIP policy. |All mailboxes are automatically marked as corporate. This means any personal inboxes hosted on Office 365 are also automatically marked as corporate data. |

>[!NOTE]
>These limitations don’t apply to Outlook 2016 or to the Office365 Mail and Calendar apps. These apps will work properly, marking an employee’s mailbox as corporate data, regardless of how you’ve configured outlook.office.com in your network settings. 





