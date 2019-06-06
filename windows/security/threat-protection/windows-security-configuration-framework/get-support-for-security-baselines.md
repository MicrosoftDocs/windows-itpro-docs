---
title: Get support
description: This article, and the articles it links to, answers frequently asked question on how to get support for Windows baselines, the Security Compliance Toolkit (SCT), and related topics in your organization
keywords: virtualization, security, malware
ms.prod: w10
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
---

# Get Support

**What is the Microsoft Security Compliance Manager (SCM)?**

The Security Compliance Manager (SCM) is now retired and is no longer supported. The reason is that SCM was an incredibly complex and large program that needed to be updated for every Windows release. It has been replaced by the Security Compliance Toolkit (SCT). To provide a better service for our customers, we have moved to SCT with which we can publish baselines through the Microsoft Download Center in a lightweight .zip file that contains GPO backups, GPO reports, Excel spreadsheets, WMI filters, and scripts to apply the settings to local policy.

More information about this change can be found on the [Microsoft Security Guidance blog](https://blogs.technet.microsoft.com/secguide/2017/06/15/security-compliance-manager-scm-retired-new-tools-and-procedures/).

**Where can I get an older version of a Windows baseline?**

Any version of Windows baseline before Windows 10 1703 can still be downloaded using SCM. Any future versions of Windows baseline will be available through SCT. See the version matrix in this article to see if your version of Windows baseline is available on SCT.

-   [SCM 4.0 Download](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx)
-   [SCM Frequently Asked Questions (FAQ)](https://social.technet.microsoft.com/wiki/contents/articles/1836.microsoft-security-compliance-manager-scm-frequently-asked-questions-faq.aspx)
-   [SCM Release Notes](https://social.technet.microsoft.com/wiki/contents/articles/1864.microsoft-security-compliance-manager-scm-release-notes.aspx)
-   [SCM baseline download help](https://social.technet.microsoft.com/wiki/contents/articles/1865.microsoft-security-compliance-manager-scm-baseline-download-help.aspx)

**What file formats are supported by the new SCT?**

The toolkit supports formats created by the Windows GPO backup feature (.pol, .inf, and .csv). Policy Analyzer saves its data in XML files with a .PolicyRules file extension. LGPO also supports its own LGPO text file format as a text-based analog for the binary registry.pol file format. See the LGPO documentation for more information. Keep in mind that SCM’s .cab files are no longer supported.

**Does SCT support Desired State Configuration (DSC) file format?**

Not yet. PowerShell-based DSC is rapidly gaining popularity, and more DSC tools are coming online to convert GPOs and DSC and to validate system configuration. We are currently developing a tool to provide customers with these features.

**Does SCT support the creation of System Center Configuration Manager (SCCM) DCM packs?**

No. A potential alternative is Desired State Configuration (DSC), a feature of the [Windows Management Framework](https://www.microsoft.com/download/details.aspx?id=40855). A tool that supports conversion of GPO backups to DSC format can be found [here](https://github.com/Microsoft/BaselineManagement).

**Does SCT support the creation of Security Content Automation Protocol (SCAP)-format policies?**

No. SCM supported only SCAP 1.0, which was not updated as SCAP evolved. The new toolkit likewise does not include SCAP support.

<br />

## Version Matrix

**Client Versions**

| Name | Build | Baseline Release Date | Security Tools |
|---|---|---|---|
|Windows 10 | [1709 (RS3)](https://blogs.technet.microsoft.com/secguide/2017/09/27/security-baseline-for-windows-10-fall-creators-update-v1709-draft/) <p> [1703 (RS2)](https://blogs.technet.microsoft.com/secguide/2017/08/30/security-baseline-for-windows-10-creators-update-v1703-final/) <p>[1607 (RS1)](https://blogs.technet.microsoft.com/secguide/2016/10/17/security-baseline-for-windows-10-v1607-anniversary-edition-and-windows-server-2016/) <p>[1511 (TH2)](https://blogs.technet.microsoft.com/secguide/2016/01/22/security-baseline-for-windows-10-v1511-threshold-2-final/) <p>[1507 (TH1)](https://blogs.technet.microsoft.com/secguide/2016/01/22/security-baseline-for-windows-10-v1507-build-10240-th1-ltsb-update/)| October 2017 <p>August 2017 <p>October 2016 <p>January 2016<p> January 2016 |[SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319) |
Windows 8.1 |[9600 (April Update)](https://blogs.technet.microsoft.com/secguide/2014/08/13/security-baselines-for-windows-8-1-windows-server-2012-r2-and-internet-explorer-11-final/)| October 2013| [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx) |
Windows 8 |[9200](https://technet.microsoft.com/library/jj916413.aspx) |October 2012| [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx)|
Windows 7 |[7601 (SP1)](https://technet.microsoft.com/library/ee712767.aspx)| October 2009| [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx) |
| Vista |[6002 (SP2)](https://technet.microsoft.com/library/dd450978.aspx)| January 2007| [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx) |
| Windows XP |[2600 (SP3)](https://technet.microsoft.com/library/cc163061.aspx)| October 2001| [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx)|

<br />

**Server Versions**

| Name | Build | Baseline Release Date | Security Tools |
|---|---|---|---|
|Windows Server 2016 | [SecGuide](https://blogs.technet.microsoft.com/secguide/2016/10/17/security-baseline-for-windows-10-v1607-anniversary-edition-and-windows-server-2016/) |October 2016 |[SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319) |
|Windows Server 2012 R2|[SecGuide](https://blogs.technet.microsoft.com/secguide/2016/10/17/security-baseline-for-windows-10-v1607-anniversary-edition-and-windows-server-2016/)|August 2014 | [SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319)|
|Windows Server 2012|[Technet](https://technet.microsoft.com/library/jj898542.aspx) |2012| [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx) |
Windows Server 2008 R2 |[SP1](https://technet.microsoft.com/library/gg236605.aspx)|2009 | [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx) |
| Windows Server 2008 |[SP2](https://technet.microsoft.com/library/cc514539.aspx)| 2008 | [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx) |
|Windows Server 2003 R2|[Technet](https://technet.microsoft.com/library/cc163140.aspx)| 2003 | [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx)|
|Windows Server 2003|[Technet](https://technet.microsoft.com/library/cc163140.aspx)|2003|[SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx)|

<br />

**Microsoft Products**


|           Name            |                                                                            Details                                                                            |                               Security Tools                                |
|---------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------|
|   Internet Explorer 11    | [SecGuide](https://blogs.technet.microsoft.com/secguide/2014/08/13/security-baselines-for-windows-8-1-windows-server-2012-r2-and-internet-explorer-11-final/) |     [SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319)     |
|   Internet Explorer 10    |                                                [Technet](https://technet.microsoft.com/library/jj898540.aspx)                                                 | [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx) |
|    Internet Explorer 9    |                                                [Technet](https://technet.microsoft.com/library/hh539027.aspx)                                                 | [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx) |
|    Internet Explorer 8    |                                                [Technet](https://technet.microsoft.com/library/ee712766.aspx)                                                 | [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx) |
|   Exchange Server 2010    |                                                [Technet](https://technet.microsoft.com/library/hh913521.aspx)                                                 | [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx) |
|   Exchange Server 2007    |                                                [Technet](https://technet.microsoft.com/library/hh913520.aspx)                                                 | [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx) |
|   Microsoft Office 2010   |                                                [Technet](https://technet.microsoft.com/library/gg288965.aspx)                                                 | [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx) |
| Microsoft Office 2007 SP2 |                                                [Technet](https://technet.microsoft.com/library/cc500475.aspx)                                                 | [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx) |

<br />

> [!NOTE]
> Browser baselines are built-in to new OS versions starting with Windows 10

## See also

[Windows security baselines](windows-security-baselines.md)
