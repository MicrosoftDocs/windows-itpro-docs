---
title: Recommended Enterprise Cloud Resources and Neutral Resources network settings with Windows Information Protection (WIP) (Windows 10)
description: Recommended URLs to add to your Enterprise Cloud Resources and Neutral Resources network settings, when used with Windows Information Protection (WIP).
keywords: WIP, Windows Information Protection, EDP, Enterprise Data Protection, WIP and Neutral Resources, WIP and Enterprise Cloud Resources
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.author: justinha
ms.date: 02/1/2019
ms.localizationpriority: medium
---

# Recommended Enterprise Cloud Resources and Neutral Resources network settings with Windows Information Protection (WIP)

**Applies to:**

- Windows 10, version 1607 and later
- Windows 10 Mobile, version 1607 and later

>Learn more about what features and functionality are supported in each Windows edition at [Compare Windows 10 Editions](https://www.microsoft.com/WindowsForBusiness/Compare).

We recommend that you add the following URLs to the Enterprise Cloud Resources and Neutral Resources network settings when you create a WIP policy. If you are using Intune, the SharePoint entries may be added automatically. 

## Recommended Enterprise Cloud Resources
This table includes the recommended URLs to add to your Enterprise Cloud Resources network setting, based on the apps you use in your organization.

|If your organization uses... |Add these entries to your Enterprise Cloud Resources network setting<br>(Replace "contoso" with your domain name(s)|
|-----------------------------|---------------------------------------------------------------------|
|Office 365 for Business |<ul><li>contoso.sharepoint.com</li><li>contoso-my.sharepoint.com</li><li>contoso-files.sharepoint.com</li><li>tasks.office.com</li><li>protection.office.com</li><li>meet.lync.com</li><li>teams.microsoft.com</li></ul> |
|Yammer |<ul><li>www.yammer.com</li><li>yammer.com</li><li>persona.yammer.com</li></ul> |
|Microsoft Dynamics |contoso.crm.dynamics.com |
|Visual Studio Online |contoso.visualstudio.com |
|Power BI |contoso.powerbi.com |

>[!NOTE]
>You can add other work-only apps to the Cloud Resource list, or you can create a packaged app rule for the .exe file to protect every file the app creates or modifies. Depending on how the app is accessed, you might want to add both.

## Recommended Neutral Resources
We recommended adding these URLs if you use the Neutral Resources network setting with Windows Information Protection (WIP).
<ul>
    <li>login.microsoftonline.com</li>
    <li>login.windows.net</li>
</ul>