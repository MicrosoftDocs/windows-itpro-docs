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

-   Windows 10, version 1607 and later
-   Windows 10 Mobile

>Learn more about what features and functionality are supported in each Windows edition at [Compare Windows 10 Editions](https://www.microsoft.com/en-us/WindowsForBusiness/Compare).

Because Outlook Web Access (OWA) can be used both personally and as part of your organization, you have the following options to configure it with Windows Information Protection (WIP):

|Option |OWA behavior |
|-------|-------------|
|Disable OWA. Employees can only use Microsoft Outlook 2016 or the Office 365 Mail app. | Disabled. |
|Don't configure outlook.office.com in any of your networking settings. |All mailboxes are automatically marked as personal. This means employees attempting to copy work content into OWA receive prompts and that files downloaded from OWA aren't automatically protected as corporate data. |
|Add outlook.office.com to the Enterprise Cloud Resources network element in your WIP policy. |All mailboxes are automatically marked as corporate. This means any personal inboxes hosted on Office 365 are also automatically marked as corporate data. |

>[!NOTE]
>These limitations don’t apply to Outlook 2016 or to the Office 365 Mail and Calendar apps. These apps will work properly, marking an employee’s mailbox as corporate data, regardless of how you’ve configured outlook.office.com in your network settings. 





