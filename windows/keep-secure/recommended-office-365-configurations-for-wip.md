---
title: Recommended Office 365 Mail and Calendar apps configuration with Windows Information Protection (WIP) (Windows 10)
description: Recommendations about how to configure Office 365 Mail and Calendar apps, including Outlook Web Access (OWA) and the various client apps, with Windows Information Protection (WIP).
ms.assetid: 6cca0119-5954-4757-b2bc-e0ea4d2c7032
keywords: WIP, Windows Information Protection, EDP, Enterprise Data Protection, configure Office 365 with WIP, WIP and Office 365 Mail
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
localizationpriority: high
---

# Recommended Office 365 Mail and Calendar apps configuration with Windows Information Protection (WIP)
**Applies to:**

-   Windows 10, version 1607
-   Windows 10 Mobile

>Learn more about what features and functionality are supported in each Windows edition at [Compare Windows 10 Editions](https://www.microsoft.com/en-us/WindowsForBusiness/Compare).

Because the Office 365 Mail and Calendar apps, including Outlook Web Access (OWA) and the various client apps, can be used both personally and as part of your organization, we recommend the following configurations:

<table border="2px">
    <tr>
        <th>Option</th>
        <th>OWA behavior</th>
        <th>Office 365 behavior</th>
    </tr>
    <tr>
        <td>Disable OWA. Employees can only use Microsoft Outlook 2016 or the Office 365 Mail app.</td>
        <td>Disabled.</td>
        <td rowspan="4">Both Outlook 2016 and the Office 365 Mail app behave properly, regardless of how you've configured outlook.office.com in your network settings.<br>An employee's mailbox is automatically marked as corporate data.</td>
    </tr>
    <tr>
        <td>Don't configure outlook.office.com in any of your networking settings.</td>
        <td>All mailboxes are automatically marked as personal. This means employees attempting to copy work content into OWA receive prompts and that files downloaded from OWA aren't automatically protected as corporate data.</td>
    </tr>
    <tr>
        <td>Do any of the following:
            <ul>
                <li>Create a domain (such as mail.contoso.com, redirecting to outlook.office.com) that can be used by your employees to access work email.</li>
                <li>Add the new domain to the Enterprise Cloud Resources network element in your WIP policy.</li>
                <li>Add the following URLs to the Neutral Resources network element in your WIP policy:
                    <ul>
                        <li>outlook.office365.com</li>
                        <li>outlook.office.com</li>
                        <li>outlook-sdf.office.com</li>
                        <li>attachment.outlook.office.net</li>
                    </ul>
                </li>
            </ul>
        </td>
        <td>Inbox content accessed through the new domain is automatically marked as corporate data, while content accessed through personal email is automatically marked as personal.</td>
    </tr>
    <tr>
        <td>Add outlook.office.com to the Enterprise Cloud Resources network element in your WIP policy.</td>
        <td>All mailboxes are automatically marked as work. This means any personal inboxes hosted on Office 365 are also automatically marked as corporate data.</td>
    </tr>    
</table>






