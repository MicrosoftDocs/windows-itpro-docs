---
title: Configure advanced scanning types for Windows Defender AV
description: You can configure Windows Defender AV to scan email storage files, back-up or reparse points, network files, and archived files (such as .zip files).
keywords: advanced scans, scanning, email, archive, zip, rar, archive, reparse scanning
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Configure email, removable storage, network, reparse point, and archive scanning in Windows Defender AV


**Applies to**
-   Windows 10

**Audience**

- Enterprise security administrators

**Manageability available with**

- Group Policy
- System Center Configuration Manager 
- PowerShell
- Windows Management Instrumentation (WMI)
- Microsoft Intune



Scan	Turn on e-mail scanning
Scan	Turn on reparse point scanning



## Manage email scans in Windows Defender

You can use Windows Defender to scan email files. Malware can install itself and hide in email files, and although real-time protection offers you the best protection from email malware, you can also scan emails stored on your PC or server with Windows Defender.
> **Important:**  Mail scanning only applies to on-demand and scheduled scans, not on-access scans.
 
Windows Defender scans Microsoft Office Outlook 2003 and older email files. We identify the file type at run-time based on the content of the file, not on location or extension.
> **Note: **  Scanning email files might increase the time required to complete a scan.
 
Windows Defender can extract embedded objects within a file (attachments and archived files, for example) and scan internally.
> **Note:**  While Windows Defender can be configured to scan email files, it can only remediate threats detected inside certain files, for example:
-   DBX
-   MBX
-   MIME
 
You can configure Windows Defender to scan PST files used by Outlook 2003 or older versions (where the archive type is set to non-uni-code), but Windows Defender cannot remediate threats detected inside PST files. We recommend using real-time protection to protect against email malware.

If Windows Defender detects a threat inside an email, it will show you the following information to assist you in identifying the compromised email, so you can remediate the threat:
-   Email subject
-   Attachment name
Email scanning in Windows Defender is turned off by default. There are three ways you can manage scans through Windows Defender:
-   *Group Policy* settings
-   WMI
-   PowerShell
> **Important:**  There are some risks associated with scanning some Microsoft Outlook files and email messages. You can read about tips and risks associated with scanning Outlook files and email messages in the following articles:
-   [Scanning Outlook files in Outlook 2013](https://technet.microsoft.com/library/dn769141.aspx#bkmk-1)
-   [Scanning email messages in Outlook 2013](https://technet.microsoft.com/library/dn769141.aspx#bkmk-2)
 
## Use *Group Policy* settings to enable email scans

This policy setting allows you to turn on email scanning. When email scanning is enabled, the engine will parse the mailbox and mail files to analyze the mail bodies and attachments.

Turn on email scanning with the following *Group Policy* settings:
1.  Open the **Group Policy Editor**.
2.  In the **Local Computer Policy** tree, expand **Computer Configuration**, then **Administrative Templates**, then **Windows Components**, then **Windows Defender**.
3.  Click **Scan**.
4.  Double-click **Turn on e-mail scanning**.

    This will open the **Turn on e-mail scanning** window:
    
    ![turn on e-mail scanning window](images/defender-scanemailfiles.png)
    
5.  Select **Enabled**.
6.  Click **OK** to apply changes.

## Use WMI to disable email scans

You can write a WMI script or application to disable email scanning. Read more about [WMI in this article](https://msdn.microsoft.com/library/windows/desktop/dn439477.aspx), and read about [Windows Preference classes in this article](https://msdn.microsoft.com/library/windows/desktop/dn455323.aspx).

Use the **DisableEmailScanning** property of the **MSFT\_MpPreference** class (part of the Windows DefenderWMI provider) to enable or disable this setting:
**DisableEmailScanning**
Data type: **boolean**
Access type: Read-only
Disable email scanning.

## Use PowerShell to enable email scans

You can also enable email scanning using the following PowerShell parameter:
1.  Open PowerShell or PowerShellIntegrated Scripting Environment (ISE).
2.  Type **Set-MpPreference -DisableEmailScanning $false**.

Read more about this in:
-   [Scripting with Windows PowerShell](https://technet.microsoft.com/library/bb978526.aspx)
-   [Defender Cmdlets](https://technet.microsoft.com/library/dn433280.aspx)

## Manage archive scans in Windows Defender

You can use Windows Defender to scan archive files. Malware can install itself and hide in archive files, and although real-time protection offers you the best protection from malware, you can also scan archives stored on your PC or server with Windows Defender.
> **Important:**  Archive scanning only applies to on-demand and scheduled scans, not on-access scans.
 
Archive scanning in Windows Defender is turned on by default. There are four ways you can manage scans through Windows Defender:
-   *Group Policy* settings
-   WMI
-   PowerShell
-   Endpoint Protection
> **Note:**  Scanning archive files might increase the time required to complete a scan.
 
If you exclude an archive file type by using the **Extensions** box, Windows Defender will not scan files with that extension (no matter what the content is), even when you have selected the **Scan archive files** check box. For example, if you exclude .rar files but there’s a .r00 file that’s actually .rar content, it will still be scanned if archive scanning is enabled.

## Use *Group Policy* settings to enable archive scans

This policy setting allows you to turn on archive scanning.

Turn on email scanning with the following *Group Policy* settings:
1.  Open the **Group Policy Editor**.
2.  In the **Local Computer Policy** tree, expand **Computer Configuration**, then **Administrative Templates**, then **Windows Components**, then **Windows Defender**.
3.  Click **Scan**.
4.  Double-click **Scan archive files**.

    This will open the **Scan archive files** window:
    
    ![scan archive files window](images/defender-scanarchivefiles.png)
    
5.  Select **Enabled**.
6.  Click **OK** to apply changes.

There are a number of archive scan settings in the **Scan** repository you can configure through *Group Policy*, for example:
-   Maximum directory depth level into which archive files are unpacked during scanning

    ![specify the maximum depth to scan archive files window](images/defender-scanarchivedepth.png)
    
-   Maximum size of archive files that will be scanned

    ![specify the maximum size of archive files to be scanned window](images/defender-scanarchivesize.png)
    
-   Maximum percentage CPU utilization permitted during a scan

    ![specify the maximum percentage od cpu utilization during a scan window](images/defender-scanarchivecpu.png)

## Use WMI to disable archive scans

You can write a WMI script or application to disable archive scanning. Read more about [WMI in this article](https://msdn.microsoft.com/library/windows/desktop/dn439477.aspx), and read about [Windows Preference classes in this article](https://msdn.microsoft.com/library/windows/desktop/dn455323.aspx).

Use the **DisableArchiveScanning** property of the **MSFT\_MpPreference** class (part of the Windows DefenderWMI provider) to enable or disable this setting:
**DisableArchiveScanning**
Data type: **boolean**
Access type: Read-only
Disable archive scanning.

## Use PowerShell to enable archive scans

You can also enable archive scanning using the following PowerShell parameter:
1.  Open PowerShell or PowerShellISE.
2.  Type **Set-MpPreference -DisableArchiveScanning $false**.

Read more about this in:
-   [Scripting with Windows PowerShell](https://technet.microsoft.com/library/bb978526.aspx)
-   [Defender Cmdlets](https://technet.microsoft.com/library/dn433280.aspx)

## Use Endpoint Protection to configure archive scans

In Endpoint Protection, you can use the advanced scanning options to configure archive scanning. For more information, see [What are advanced scanning options?](https://technet.microsoft.com/library/ff823807.aspx)
 
