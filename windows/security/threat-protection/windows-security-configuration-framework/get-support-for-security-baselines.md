---
title: Get support for Windows security baselines
description: Find answers to frequently asked question on how to get support for Windows baselines, the Security Compliance Toolkit (SCT), and related topics.
keywords: virtualization, security, malware
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.author: dansimp
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 06/25/2018
ms.reviewer: 
ms.technology: mde
---

# Get Support

**What is the Microsoft Security Compliance Manager (SCM)?**

The Security Compliance Manager (SCM) is now retired and is no longer supported. The reason is that SCM was an incredibly complex and large program that needed to be updated for every Windows release. It has been replaced by the Security Compliance Toolkit (SCT). To provide a better service for our customers, we have moved to SCT with which we can publish baselines through the Microsoft Download Center in a lightweight .zip file that contains GPO Backups, GPO reports, Excel spreadsheets, WMI filters, and scripts to apply the settings to local policy.

More information about this change can be found on the [Microsoft Security Guidance blog](/archive/blogs/secguide/security-compliance-manager-scm-retired-new-tools-and-procedures).

**Where can I get an older version of a Windows baseline?**

Any version of Windows baseline before Windows 10 1703 can still be downloaded using SCM. Any future versions of Windows baseline will be available through SCT. See the version matrix in this article to see if your version of Windows baseline is available on SCT.

-   [SCM 4.0 Download](/previous-versions/tn-archive/cc936627(v=technet.10))
-   [SCM Frequently Asked Questions (FAQ)](https://social.technet.microsoft.com/wiki/contents/articles/1836.microsoft-security-compliance-manager-scm-frequently-asked-questions-faq.aspx)
-   [SCM Release Notes](https://social.technet.microsoft.com/wiki/contents/articles/1864.microsoft-security-compliance-manager-scm-release-notes.aspx)
-   [SCM baseline download help](https://social.technet.microsoft.com/wiki/contents/articles/1865.microsoft-security-compliance-manager-scm-baseline-download-help.aspx)

**What file formats are supported by the new SCT?**

The toolkit supports formats created by the Windows GPO backup feature (.pol, .inf, and .csv). Policy Analyzer saves its data in XML files with a .PolicyRules file extension. LGPO also supports its own LGPO text file format as a text-based analog for the binary registry.pol file format. See the LGPO documentation for more information. Keep in mind that SCM’s .cab files are no longer supported.

**Does SCT support Desired State Configuration (DSC) file format?**

Not yet. PowerShell-based DSC is rapidly gaining popularity, and more DSC tools are coming online to convert GPOs and DSC and to validate system configuration. We are currently developing a tool to provide customers with these features.

**Does SCT support the creation of Microsoft Endpoint Manager DCM packs?**

No. A potential alternative is Desired State Configuration (DSC), a feature of the [Windows Management Framework](https://www.microsoft.com/download/details.aspx?id=40855). A tool that supports conversion of GPO Backups to DSC format can be found [here](https://github.com/Microsoft/BaselineManagement).

**Does SCT support the creation of Security Content Automation Protocol (SCAP)-format policies?**

No. SCM supported only SCAP 1.0, which was not updated as SCAP evolved. The new toolkit likewise does not include SCAP support.

<br />

## Version Matrix

**Client Versions**

| Name | Build | Baseline Release Date | Security Tools |
| ---- | ----- | --------------------- | -------------- |
| Windows 10 | [1809 (October 2018)](/archive/blogs/secguide/security-baseline-draft-for-windows-10-v1809-and-windows-server-2019) <br>[1803 (RS4)](/archive/blogs/secguide/security-baseline-for-windows-10-v1803-redstone-4-draft) <br>[1709 (RS3)](/archive/blogs/secguide/security-baseline-for-windows-10-fall-creators-update-v1709-draft) <br> [1703 (RS2)](/archive/blogs/secguide/security-baseline-for-windows-10-creators-update-v1703-final) <br>[1607 (RS1)](/archive/blogs/secguide/security-baseline-for-windows-10-v1607-anniversary-edition-and-windows-server-2016) <br>[1511 (TH2)](/archive/blogs/secguide/security-baseline-for-windows-10-v1511-threshold-2-final) <br>[1507 (TH1)](/archive/blogs/secguide/security-baseline-for-windows-10-v1507-build-10240-th1-ltsb-update)| October 2018 <br>March 2018 <br>October 2017 <br>August 2017 <br>October 2016 <br>January 2016<br> January 2016 |[SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319) |
Windows 8.1 |[9600 (April Update)](/archive/blogs/secguide/security-baselines-for-windows-8-1-windows-server-2012-r2-and-internet-explorer-11-final)| October 2013| [SCM 4.0](/previous-versions/tn-archive/cc936627(v=technet.10)) |
Windows 8 |[9200](/previous-versions/tn-archive/jj916413(v=technet.10)) |October 2012| [SCM 4.0](/previous-versions/tn-archive/cc936627(v=technet.10))|
Windows 7 |[7601 (SP1)](/previous-versions/tn-archive/ee712767(v=technet.10))| October 2009| [SCM 4.0](/previous-versions/tn-archive/cc936627(v=technet.10)) |
| Vista |[6002 (SP2)](/previous-versions/tn-archive/dd450978(v=technet.10))| January 2007| [SCM 4.0](/previous-versions/tn-archive/cc936627(v=technet.10)) |
| Windows XP |[2600 (SP3)](/previous-versions/tn-archive/cc163061(v=technet.10))| October 2001| [SCM 4.0](/previous-versions/tn-archive/cc936627(v=technet.10))|

<br />

**Server Versions**

| Name | Build | Baseline Release Date | Security Tools |
|---|---|---|---|
|Windows Server 2016 | [SecGuide](/archive/blogs/secguide/security-baseline-for-windows-10-v1607-anniversary-edition-and-windows-server-2016) |October 2016 |[SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319) |
|Windows Server 2012 R2|[SecGuide](/archive/blogs/secguide/security-baseline-for-windows-10-v1607-anniversary-edition-and-windows-server-2016)|August 2014 | [SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319)|
|Windows Server 2012|[Technet](/previous-versions/tn-archive/jj898542(v=technet.10)) |2012| [SCM 4.0](/previous-versions/tn-archive/cc936627(v=technet.10)) |
Windows Server 2008 R2 |[SP1](/previous-versions/tn-archive/gg236605(v=technet.10))|2009 | [SCM 4.0](/previous-versions/tn-archive/cc936627(v=technet.10)) |
| Windows Server 2008 |[SP2](/previous-versions/tn-archive/cc514539(v=technet.10))| 2008 | [SCM 4.0](/previous-versions/tn-archive/cc936627(v=technet.10)) |
|Windows Server 2003 R2|[Technet](/previous-versions/tn-archive/cc163140(v=technet.10))| 2003 | [SCM 4.0](/previous-versions/tn-archive/cc936627(v=technet.10))|
|Windows Server 2003|[Technet](/previous-versions/tn-archive/cc163140(v=technet.10))|2003|[SCM 4.0](/previous-versions/tn-archive/cc936627(v=technet.10))|

<br />

**Microsoft Products**


|           Name            |                                                                            Details                                                                            |                               Security Tools                                |
|---------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------|
|   Internet Explorer 11    | [SecGuide](/archive/blogs/secguide/security-baselines-for-windows-8-1-windows-server-2012-r2-and-internet-explorer-11-final) |     [SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319)     |
|   Internet Explorer 10    |                                                [Technet](/previous-versions/tn-archive/jj898540(v=technet.10))                                                 | [SCM 4.0](/previous-versions/tn-archive/cc936627(v=technet.10)) |
|    Internet Explorer 9    |                                                [Technet](/previous-versions/tn-archive/hh539027(v=technet.10))                                                 | [SCM 4.0](/previous-versions/tn-archive/cc936627(v=technet.10)) |
|    Internet Explorer 8    |                                                [Technet](/previous-versions/tn-archive/ee712766(v=technet.10))                                                 | [SCM 4.0](/previous-versions/tn-archive/cc936627(v=technet.10)) |
|   Exchange Server 2010    |                                                [Technet](/previous-versions/tn-archive/hh913521(v=technet.10))                                                 | [SCM 4.0](/previous-versions/tn-archive/cc936627(v=technet.10)) |
|   Exchange Server 2007    |                                                [Technet](/previous-versions/tn-archive/hh913520(v=technet.10))                                                 | [SCM 4.0](/previous-versions/tn-archive/cc936627(v=technet.10)) |
|   Microsoft Office 2010   |                                                [Technet](/previous-versions/tn-archive/gg288965(v=technet.10))                                                 | [SCM 4.0](/previous-versions/tn-archive/cc936627(v=technet.10)) |
| Microsoft Office 2007 SP2 |                                                [Technet](/previous-versions/tn-archive/cc500475(v=technet.10))                                                 | [SCM 4.0](/previous-versions/tn-archive/cc936627(v=technet.10)) |

<br />

> [!NOTE]
> Browser baselines are built-in to new OS versions starting with Windows 10

## See also

[Windows security baselines](windows-security-baselines.md)