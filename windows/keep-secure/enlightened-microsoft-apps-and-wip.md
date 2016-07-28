---
title: List of enlightened Microsoft apps for use with Windows Information Protection (WIP) (Windows 10)
description: Learn the difference between enlightened and unenlightened apps, and then review the list of enlightened apps provided by Microsoft along with the text you will need to use to add them to your Protected Apps list.
ms.assetid: 17c85ea3-9b66-4b80-b511-8f277cb4345f
keywords: WIP, Windows Information Protection, EDP, Enterprise Data Protection
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
author: eross-msft
---

# List of enlightened Microsoft apps for use with Windows Information Protection(WIP)

**Applies to:**

-   Windows 10, version 6017
-   Windows 10 Mobile

Learn the difference between enlightened and unenlightened apps, and then review the list of enlightened apps provided by Microsoft along with the text you will need to use to add them to your allowed apps list.

## Enlightened versus unenlightened apps
Apps can be enlightened (policy-aware) or unenlightened (policy-unaware).

-   **Enlightened apps** can differentiate between corporate and personal data, correctly determining which to protect, based on your policies.

-   **Unenlightened apps** consider all data corporate and encrypt everything. Typically, you can tell an unenlightened app because:

    -   Windows Desktop shows it as always running in enterprise mode.

    -   Windows **Save As** experiences only allow you to save your files as enterprise.

## List of enlightened Microsoft apps
Microsoft has made a concerted effort to enlighten several of our more popular apps, including the following:

-   Microsoft Edge

-   Internet Explorer 11

-   Microsoft People

-   Mobile Office apps, including Word, Excel, PowerPoint, OneNote, and Outlook Mail and Calendar

-   Microsoft Photos

-   Microsoft OneDrive

-   Groove Music

-   Notepad

-   Microsoft Paint

-   Microsoft Movies & TV

-   Microsoft Messaging

## Adding enlightened Microsoft apps to the allowed apps list
You can add any or all of the enlightened Microsoft apps to your allowed apps list. Included here is the **Publisher name**, **Product or File name**, and **App Type** info for both Microsoft Intune and System Center Configuration Manager.

|Product name |App info |
|-------------|---------|
|Microsoft Edge |**Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.MicrosoftEdge<br>**App Type:** Universal app |
|IE11 |**Publisher:** `O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** iexplore.exe<br>**App Type:** Desktop app |
|Microsoft People |**Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.People<br>**App Type:** Universal app |
|Word Mobile |**Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.Office.Word<br>**App Type:** Universal app |
|Excel Mobile |**Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.Office.Excel<br>**App Type:** Universal app |
|PowerPoint Mobile |**Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.Office.PowerPoint<br>**App Type:** Universal app |
|OneNote |**Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.Office.OneNote<br>**App Type:** Universal app |
|Outlook Mail and Calendar |**Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** microsoft.windowscommunicationsapps<br>**App Type:** Universal app |
|Microsoft Photos |**Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.Windows.Photos<br>**App Type:** Universal app |
|Microsoft OneDrive |**Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** microsoft.microsoftskydrive<br>**App Type:** Universal app |
|Groove Music |**Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.ZuneMusic<br>**App Type:** Universal app |
|Notepad |**Publisher:** `O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** notepad.exe<br>**App Type:** Desktop app |
|Microsoft Paint |**Publisher:** `O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** mspaint.exe<br>**App Type:** Desktop app |
|Microsoft Movies & TV |**Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.ZuneVideo<br>**App Type:** Universal app |
|Microsoft Messaging |**Publisher:** `CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US`<br>**Product Name:** Microsoft.Messaging<br>**App Type:** Universal app |