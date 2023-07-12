---
title: Recommended URLs for Windows Information Protection 
description: Recommended URLs to add to your Enterprise Cloud Resources and Neutral Resources network settings, when used with Windows Information Protection (WIP).
ms.prod: windows-client
ms.localizationpriority: medium
author: aczechowski
ms.author: aaroncz
manager: dougeby
ms.topic: conceptual
ms.date: 03/25/2019
ms.technology: itpro-security
---

# Recommended Enterprise Cloud Resources and Neutral Resources network settings with Windows Information Protection (WIP)

**Applies to:**

- Windows 10, version 1607 and later

>Learn more about what features and functionality are supported in each Windows edition at [Compare Windows 10 Editions](https://www.microsoft.com/WindowsForBusiness/Compare).

We recommend that you add the following URLs to the Enterprise Cloud Resources and Neutral Resources network settings when you create a Windows Information Protection policy. If you are using Intune, the SharePoint entries may be added automatically. 

## Recommended Enterprise Cloud Resources

This table includes the recommended URLs to add to your Enterprise Cloud Resources network setting, based on the apps you use in your organization.

|If your organization uses... |Add these entries to your Enterprise Cloud Resources network setting<br>(Replace "contoso" with your domain name(s)|
|-----------------------------|---------------------------------------------------------------------|
|Sharepoint Online |- `contoso.sharepoint.com`<br/>- `contoso-my.sharepoint.com`<br/>- `contoso-files.sharepoint.com` |
|Viva Engage |- `www.yammer.com`<br/>- `yammer.com`<br/>- `persona.yammer.com` |
|Outlook Web Access (OWA) |- `outlook.office.com`<br/>- `outlook.office365.com`<br/>- `attachments.office.net` |
|Microsoft Dynamics |`contoso.crm.dynamics.com` |
|Visual Studio Online |`contoso.visualstudio.com` |
|Power BI |`contoso.powerbi.com` |
|Microsoft Teams |`teams.microsoft.com` |
|Other Office 365 services |- `tasks.office.com`<br/>- `protection.office.com`<br/>- `meet.lync.com`<br/>- `project.microsoft.com` |

You can add other work-only apps to the Cloud Resource list, or you can create a packaged app rule for the .exe file to protect every file the app creates or modifies. Depending on how the app is accessed, you might want to add both.

For Office 365 endpoints, see [Office 365 URLs and IP address ranges](/office365/enterprise/urls-and-ip-address-ranges). 
Office 365 endpoints are updated monthly. 
Allow the domains listed in section number 46 "Allow Required" and add also add the apps. 
Note that apps from officeapps.live.com can also store personal data. 

When multiple files are selected from SharePoint Online or OneDrive, the files are aggregated and the URL can change. In this case, add an entry for a second-level domain and use a wildcard such as .svc.ms. 


## Recommended Neutral Resources
We recommended adding these URLs if you use the Neutral Resources network setting with Windows Information Protection (WIP).

- `login.microsoftonline.com`
- `login.windows.net`
