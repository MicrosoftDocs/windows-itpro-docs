---
title: Set up a device for anyone to use (kiosk mode) (Windows 10)
description: You can configure Windows 10 as a kiosk device, so that users can only interact with a single app.
ms.assetid: F1F4FF19-188C-4CDC-AABA-977639C53CA8
keywords: ["kiosk", "lockdown", "assigned access"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
---

# Set up a device for anyone to use (kiosk mode)


**Applies to**

-   Windows 10
-   Windows 10 Mobile

**Looking for Windows Embedded 8.1 Industry information?**

-   [Assigned Access]( http://go.microsoft.com/fwlink/p/?LinkId=613653)

You can configure a device running Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, Windows 10 Mobile, or Windows 10 Mobile Enterprise as a kiosk device, so that users can only interact with a single application that you select.

Do you need a computer that can only do one thing? For example:

-   A device in the lobby that customers can use to view your product catalog.

-   A portable device that drivers can use to check a route on a map.

-   A device that a temporary worker uses to enter data.

The following table identifies the type of application that can be used on each Windows 10 edition to create a kiosk device.

> [!NOTE]  
> A Universal Windows app is built on the Universal Windows Platform (UWP), which was first introduced in Windows 8 as the Windows Runtime. A Classic Windows application uses the Classic Windows Platform (CWP) (e.g., COM, Win32, WPF, WinForms, etc.) and is typically launched using an .EXE or .DLL file.

 

| Windows 10 edition | Universal Windows app              | Classic Windows application          |
|--------------------|------------------------------------|--------------------------------------|
| Mobile             | ![supported](images/checkmark.png) | ![unsupported](images/crossmark.png) |
| Mobile Enterprise  | ![supported](images/checkmark.png) | ![unsupported](images/crossmark.png) |
| Pro                | ![supported](images/checkmark.png) | ![unsupported](images/crossmark.png) |
| Enterprise         | ![supported](images/checkmark.png) | ![supported](images/checkmark.png)   |
| Education          | ![supported](images/checkmark.png) | ![supported](images/checkmark.png)   |

 

## In this section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Topic</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[Set up a kiosk on Windows 10 Pro, Enterprise, or Education](set-up-a-kiosk-for-windows-10-for-desktop-editions.md)</p></td>
<td align="left"><p>A single-use device is easy to set up in Windows 10 for desktop editions (Pro, Enterprise, and Education). For a kiosk device to run a Universal Windows app, use the <strong>assigned access</strong> feature. For a kiosk device (Windows 10 Enterprise or Education) to run a Classic Windows application, use <strong>Shell Launcher</strong> to set a custom user interface as the shell.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Set up a kiosk on Windows 10 Mobile or Windows 10 Mobile Enterprise](set-up-a-kiosk-for-windows-10-for-mobile-edition.md)</p></td>
<td align="left"><p>A device in kiosk mode runs a specified app with no access to other device functions, menus, or settings. You configure a device running Windows 10 Mobile or Windows 10 Mobile Enterprise for kiosk mode by using the Apps Corner feature. You can also use the Enterprise Assigned Access configuration service provider (CSP) to configure a kiosk experience.</p></td>
</tr>
</tbody>
</table>

 ## Learn more

[Customizing Your Device Experience with Assigned Access](https://channel9.msdn.com/Events/Build/2016/P508)

 

 





