---
title: List of enlightened Microsoft apps for use with Windows Information Protection (WIP) (Windows 10)
description: Learn the difference between enlightened and unenlightened apps. Find out which enlightened apps are provided by Microsoft. Learn how to allow-list them.
ms.reviewer: 
ms.prod: windows-client
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
manager: aaroncz
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 05/02/2019
ms.technology: itpro-security
---

# List of enlightened Microsoft apps for use with Windows Information Protection (WIP)

**Applies to:**

- Windows 10, version 1607 and later

Learn the difference between enlightened and unenlightened apps, and then review the list of enlightened apps provided by Microsoft along with the text you will need to use to add them to your allowed apps list.

## Enlightened versus unenlightened apps
Apps can be enlightened or unenlightened:

-   **Enlightened apps** can differentiate between corporate and personal data, correctly determining which to protect, based on your policies.

-   **Unenlightened apps** consider all data corporate and encrypt everything. Typically, you can tell an unenlightened app because:

    -   Windows Desktop shows it as always running in enterprise mode.

    -   Windows **Save As** experiences only allow you to save your files as enterprise.

- **Windows Information Protection-work only apps** are unenlightened line-of-business apps that have been tested and deemed safe for use in an enterprise with WIP and Mobile App Management (MAM) solutions without device enrollment. Unenlightened apps that are targeted by WIP without enrollment run under personal mode. 

## List of enlightened Microsoft apps
Microsoft has made a concerted effort to enlighten several of our more popular apps, including the following:

- Microsoft 3D Viewer

- Microsoft Edge

- Internet Explorer 11

- Microsoft People

- Mobile Office apps, including Word, Excel, PowerPoint, OneNote, and Outlook Mail and Calendar

- Microsoft 365 Apps for enterprise apps, including Word, Excel, PowerPoint, OneNote, and Outlook

- OneDrive app

- OneDrive sync client (OneDrive.exe, the next generation sync client)

- Microsoft Photos

- Groove Music

- Notepad

- Microsoft Paint

- Microsoft Movies & TV

- Microsoft Messaging

- Microsoft Remote Desktop 

- Microsoft To Do

> [!NOTE]
> Microsoft Visio, Microsoft Office Access, Microsoft Project, and Microsoft Publisher are not enlightened apps and need to be exempted from Windows Information Protection policy. If they are allowed, there is a risk of data loss. For example, if a device is workplace-joined and managed and the user leaves the company, metadata files that the apps rely on remain encrypted and the apps stop functioning.

## List of WIP-work only apps from Microsoft
Microsoft still has apps that are unenlightened, but which have been tested and deemed safe for use in an enterprise with Windows Information Protection and MAM solutions.

- Skype for Business

- Microsoft Teams (build 1.3.00.12058 and later)

## Adding enlightened Microsoft apps to the allowed apps list

> [!NOTE]
> As of January 2019 it is no longer necessary to add Intune Company Portal as an exempt app since it is now included in the default list of protected apps.

You can add any or all of the enlightened Microsoft apps to your allowed apps list. Included here is the **Publisher name**, **Product or File name**, and **App Type** info for both Microsoft Intune and Microsoft Configuration Manager.


|                     Product name                     |                                                                                                                                                                                                                        App info                                                                                                                                                                                                                        |
|------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                    Microsoft 3D Viewer                    |                                                                                                                                     **Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.Microsoft3DViewer<br>**App Type:** Universal app                                                                                                                                      |
|                    Microsoft Edge                    |                                                                                                                                     **Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.MicrosoftEdge<br>**App Type:** Universal app                                                                                                                                      |
|                   Microsoft People                   |                                                                                                                                         **Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.People<br>**App Type:** Universal app                                                                                                                                         |
|                     Word Mobile                      |                                                                                                                                      **Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.Office.Word<br>**App Type:** Universal app                                                                                                                                       |
|                     Excel Mobile                     |                                                                                                                                      **Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.Office.Excel<br>**App Type:** Universal app                                                                                                                                      |
|                  PowerPoint Mobile                   |                                                                                                                                   **Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.Office.PowerPoint<br>**App Type:** Universal app                                                                                                                                    |
|                       OneNote                        |                                                                                                                                     **Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.Office.OneNote<br>**App Type:** Universal app                                                                                                                                     |
|              Outlook Mail and Calendar               |                                                                                                                               **Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** microsoft.windowscommunicationsapps<br>**App Type:** Universal app                                                                                                                                |
| Microsoft 365 Apps for enterprise and Office 2019 Professional Plus | Microsoft 365 Apps for enterprise and Office 2019 Professional Plus apps are set up as a suite. You must use the [O365 ProPlus - Allow and Exempt AppLocker policy files (.zip files)](https://download.microsoft.com/download/7/0/D/70D72459-D72D-4673-B309-F480E3BEBCC9/O365%20ProPlus%20-%20WIP%20Enterprise%20AppLocker%20Policy%20Files.zip) to turn the suite on for Windows Information Protection.<br>We don't recommend setting up Office by using individual paths or publisher rules. |
|                   Microsoft Photos                   |                                                                                                                                     **Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.Windows.Photos<br>**App Type:** Universal app                                                                                                                                     |
|                     Groove Music                     |                                                                                                                                       **Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.ZuneMusic<br>**App Type:** Universal app                                                                                                                                        |
|                Microsoft Movies & TV                 |                                                                                                                                       **Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.ZuneVideo<br>**App Type:** Universal app                                                                                                                                        |
|                 Microsoft Messaging                  |                                                                                                                                       **Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.Messaging<br>**App Type:** Universal app                                                                                                                                        |
|                         IE11                         |                                                                                                                                                         **Publisher:** `O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Binary Name:** iexplore.exe<br>**App Type:** Desktop app                                                                                                                                                          |
|                 OneDrive Sync Client                 |                                                                                                                                                         **Publisher:** `O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Binary Name:** onedrive.exe<br>**App Type:** Desktop app                                                                                                                                                          |
|                     OneDrive app                     |                                                                                              **Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.Microsoftskydrive<br><b>Product Version:</b>Product version: 17.21.0.0 (and later)<br>**App Type:** Universal app                                                                                              |
|                       Notepad                        |                                                                                                                                                          **Publisher:** `O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Binary Name:** notepad.exe<br>**App Type:** Desktop app                                                                                                                                                          |
|                   Microsoft Paint                    |                                                                                                                                                          **Publisher:** `O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Binary Name:** mspaint.exe<br>**App Type:** Desktop app                                                                                                                                                          |
|               Microsoft Remote Desktop               |                                                                                                                                                           **Publisher:** `O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Binary Name:** mstsc.exe<br>**App Type:** Desktop app                                                                                                                                                           |
|              Microsoft MAPI Repair Tool              |                                                                                                                                                          **Publisher:** `O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Binary Name:** fixmapi.exe<br>**App Type:** Desktop app                                                                                                                                                          |
|              Microsoft To Do                         |                                                                                                                                                          **Publisher:** `O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.Todos<br>**App Type:** Store app                                                                                                                                                          |

>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Editing Windows IT professional documentation](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).
