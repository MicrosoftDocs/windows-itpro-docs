---
title: List of enlightened Microsoft apps for use with enterprise data protection (EDP) (Windows 10)
description: Learn the difference between enlightened and unenlightened apps, and then review the list of enlightened apps provided by Microsoft along with the text you will need to use to add them to your Protected Apps list.
ms.assetid: 17C85EA3-9B66-4B80-B511-8F277CB4345F
keywords: ["EDP", "Enterprise Data Protection"]
ms.prod: W10
ms.mktglfcycl: explore
ms.sitesec: library
author: brianlic-msft
---

# List of enlightened Microsoft apps for use with enterprise data protection (EDP)


**Applies to:**

-   Windows 10 Insider Preview
-   Windows 10 Mobile Preview

\[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here. An app that calls an API introduced in Windows SDK Insider Preview Build 14295 cannot be ingested into the Windows Store during the Preview period.\]

Learn the difference between enlightened and unenlightened apps, and then review the list of enlightened apps provided by Microsoft along with the text you will need to use to add them to your **Protected Apps** list.

## Enlightened versus unenlightened apps


Apps can be enlightened (policy-aware) or unenlightened (policy unaware).

-   **Enlightened apps** can differentiate between corporate and personal data, correctly determining which to protect, based on your policies.

-   

    **Unenlightened apps** consider all data corporate and encrypt everything. Typically, you can tell an unenlightened app because:

    -   Windows Desktop shows it as always running in enterprise mode.

    -   Windows **Save As** experiences only allow you to save your files as enterprise.

    it won't use common controls for saving files or text boxes, and will work on personal and enterprise data simultaneously (for example, a browser that displays personal and enterprise web pages on tabs within a single instance).

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

## Adding enlightened Microsoft apps to the Protected Apps list


You can add any or all of the enlightened Microsoft apps to your Protected Apps list. Included here is the **Publisher name**, **Product or File name**, and **App Type** info for both Microsoft Intune and System Center Configuration Manager.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Product name</th>
<th align="left">App info</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft Edge</p></td>
<td align="left"><p><strong>Publisher:</strong> <code>CN=Microsoft Corporation O=Microsoft Corporation, L=Redmond, S=Washington, C=US</code></p>
<p><strong>Product Name:</strong> Microsoft.MicrosoftEdge</p>
<p><strong>App Type:</strong> Universal App</p></td>
</tr>
<tr class="even">
<td align="left"><p>IE11</p></td>
<td align="left"><p><strong>Publisher:</strong> <code>O=Microsoft Corporation, L=Redmond, S=Washington, C=US</code></p>
<p><strong>File Name:</strong> iexplore.exe</p>
<p><strong>App Type:</strong> Desktop App</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft People</p></td>
<td align="left"><p><strong>Publisher:</strong> <code>CN=Microsoft Corporation O=Microsoft Corporation, L=Redmond, S=Washington, C=US</code></p>
<p><strong>Product Name:</strong> Microsoft.People</p>
<p><strong>App Type:</strong> Universal App</p></td>
</tr>
<tr class="even">
<td align="left"><p>Word Mobile</p></td>
<td align="left"><p><strong>Publisher:</strong> <code>CN=Microsoft Corporation O=Microsoft Corporation, L=Redmond, S=Washington, C=US</code></p>
<p><strong>Product Name:</strong> Microsoft.Office.Word</p>
<p><strong>App Type:</strong> Universal App</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Excel Mobile</p></td>
<td align="left"><p><strong>Publisher:</strong> <code>CN=Microsoft Corporation O=Microsoft Corporation, L=Redmond, S=Washington, C=US</code></p>
<p><strong>Product Name:</strong> Microsoft.Office.Excel</p>
<p><strong>App Type:</strong> Universal App</p></td>
</tr>
<tr class="even">
<td align="left"><p>PowerPoint Mobile</p></td>
<td align="left"><p><strong>Publisher:</strong> <code>CN=Microsoft Corporation O=Microsoft Corporation, L=Redmond, S=Washington, C=US</code></p>
<p><strong>Product Name:</strong> Microsoft.Office.PowerPoint</p>
<p><strong>App Type:</strong> Universal App</p></td>
</tr>
<tr class="odd">
<td align="left"><p>OneNote</p></td>
<td align="left"><p><strong>Publisher:</strong> <code>CN=Microsoft Corporation O=Microsoft Corporation, L=Redmond, S=Washington, C=US</code></p>
<p><strong>Product Name:</strong> Microsoft.Office.OneNote</p>
<p><strong>App Type:</strong> Universal App</p></td>
</tr>
<tr class="even">
<td align="left"><p>Outlook Mail and Calendar</p></td>
<td align="left"><p><strong>Publisher:</strong> <code>CN=Microsoft Corporation O=Microsoft Corporation, L=Redmond, S=Washington, C=US</code></p>
<p><strong>Product Name:</strong> microsoft.windowscommunicationsapps</p>
<p><strong>App Type:</strong> Universal App</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Photos</p></td>
<td align="left"><p><strong>Publisher:</strong> <code>CN=Microsoft Corporation O=Microsoft Corporation, L=Redmond, S=Washington, C=US</code></p>
<p><strong>Product Name:</strong> Microsoft.Windows.Photos</p>
<p><strong>App Type:</strong> Universal AppMicrosoft.Windows.Photos</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft OneDrive</p></td>
<td align="left"><p><strong>Publisher:</strong> <code>CN=Microsoft Corporation O=Microsoft Corporation, L=Redmond, S=Washington, C=US</code></p>
<p><strong>Product Name:</strong> microsoft.microsoftskydrive</p>
<p><strong>App Type:</strong> Universal App</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Groove Music</p></td>
<td align="left"><p><strong>Publisher:</strong> <code>CN=Microsoft Corporation O=Microsoft Corporation, L=Redmond, S=Washington, C=US</code></p>
<p><strong>Product Name:</strong> Microsoft.ZuneMusic</p>
<p><strong>App Type:</strong> Universal App</p></td>
</tr>
<tr class="even">
<td align="left"><p>Notepad</p></td>
<td align="left"><p><strong>Publisher:</strong> <code>O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US</code></p>
<p><strong>File Name:</strong> notepad.exe</p>
<p><strong>App Type:</strong> Desktop App</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Paint</p></td>
<td align="left"><p><strong>Publisher:</strong> <code>O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US</code></p>
<p><strong>File Name:</strong> mspaint.exe</p>
<p><strong>App Type:</strong> Desktop App</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Movies &amp; TV</p></td>
<td align="left"><p><strong>Publisher:</strong> <code>CN=Microsoft Corporation O=Microsoft Corporation, L=Redmond, S=Washington, C=US</code></p>
<p><strong>Product Name:</strong> Microsoft.ZuneVideo</p>
<p><strong>App Type:</strong> Universal App</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Messaging</p></td>
<td align="left"><p><strong>Publisher:</strong> <code>CN=Microsoft Corporation O=Microsoft Corporation, L=Redmond, S=Washington, C=US</code></p>
<p><strong>Product Name:</strong> Microsoft.Messaging</p>
<p><strong>App Type:</strong> Universal App</p></td>
</tr>
</tbody>
</table>

 

 

 





