---
title: Get support
description: Frequently asked questions about how to get support for Windows baselines and the Security Compliance Toolkit (SCT).
ms.prod: windows-client
ms.localizationpriority: medium
ms.author: dansimp
author: dulcemontemayor
manager: aaroncz
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 06/25/2018
ms.reviewer: 
ms.technology: itpro-security
---

# Get Support for Windows baselines

## Frequently asked questions

### What is the Microsoft Security Compliance Manager (SCM)?

The Security Compliance Manager (SCM) is now retired and is no longer supported. The reason is that SCM was an incredibly complex and large program that needed to be updated for every Windows release. It has been replaced by the Security Compliance Toolkit (SCT). To provide a better service for our customers, we've moved to SCT with which we can publish baselines through the Microsoft Download Center in a lightweight .zip file that contains GPO backups, GPO reports, Excel spreadsheets, WMI filters, and scripts to apply the settings to local policy.

For more information, see [Security Compliance Manager (SCM) retired; new tools and procedures](/archive/blogs/secguide/security-compliance-manager-scm-retired-new-tools-and-procedures).

### Where can I get an older version of a Windows baseline?

Any version of Windows baseline before Windows 10 version 1703 can still be downloaded using SCM. Any future versions of Windows baseline will be available through SCT. To see if your version of Windows baseline is available on SCT, see the [Version matrix](#version-matrix).

- [SCM 4.0 download](https://www.microsoft.com/download/details.aspx?id=53353)
- [SCM frequently asked questions (FAQ)](https://social.technet.microsoft.com/wiki/contents/articles/1836.microsoft-security-compliance-manager-scm-frequently-asked-questions-faq.aspx)
- [SCM release notes](https://social.technet.microsoft.com/wiki/contents/articles/1864.microsoft-security-compliance-manager-scm-release-notes.aspx)
- [SCM baseline download help](https://social.technet.microsoft.com/wiki/contents/articles/1865.microsoft-security-compliance-manager-scm-baseline-download-help.aspx)

### What file formats are supported by the new SCT?

The toolkit supports formats created by the Windows GPO backup feature (`.pol`, `.inf`, and `.csv`). Policy Analyzer saves its data in XML files with a `.PolicyRules` file extension. A local group policy object (LGPO) also supports its own LGPO text file format as a text-based analog for the binary registry.pol file format. For more information, see the LGPO documentation. The `.cab` files from SCM are no longer supported.

### Does SCT support the Desired State Configuration (DSC) file format?

Not yet. PowerShell-based DSC is rapidly gaining popularity, and more DSC tools are coming online to convert GPOs and DSC and to validate system configuration. We're currently developing a tool to provide customers with these features.

### Does SCT support the creation of Microsoft Configuration Manager DCM packs?

No. A potential alternative is Desired State Configuration (DSC), a feature of the [Windows Management Framework](https://www.microsoft.com/download/details.aspx?id=54616). A tool that supports conversion of GPO backups to DSC format is the [BaselineManagement module](https://github.com/Microsoft/BaselineManagement).

### Does SCT support the creation of Security Content Automation Protocol (SCAP)-format policies?

No. SCM supported only SCAP 1.0, which wasn't updated as SCAP evolved. The new toolkit also doesn't include SCAP support.

## Version matrix

### Client versions

| Name | Build | Baseline release date | Security tools |
|---|---|---|---|
| Windows 10 | [Version 1709](/archive/blogs/secguide/security-baseline-for-windows-10-fall-creators-update-v1709-draft) <p> [Version 1703](/archive/blogs/secguide/security-baseline-for-windows-10-creators-update-v1703-final) <p>[Version 1607](/archive/blogs/secguide/security-baseline-for-windows-10-v1607-anniversary-edition-and-windows-server-2016) <p>[1511 (TH2)](/archive/blogs/secguide/security-baseline-for-windows-10-v1511-threshold-2-final) <p>[1507 (TH1)](/archive/blogs/secguide/security-baseline-for-windows-10-v1507-build-10240-th1-ltsb-update)| October 2017 <p>August 2017 <p>October 2016 <p>January 2016<p> January 2016 |[SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319) |
| Windows 8.1 |[9600 (April Update)](/archive/blogs/secguide/security-baselines-for-windows-8-1-windows-server-2012-r2-and-internet-explorer-11-final)| October 2013| [SCM 4.0](https://www.microsoft.com/download/details.aspx?id=53353) |

### Server versions

| Name | Build | Baseline release date | Security tools |
|---|---|---|---|
|Windows Server 2016 | [SecGuide](/archive/blogs/secguide/security-baseline-for-windows-10-v1607-anniversary-edition-and-windows-server-2016) |October 2016 |[SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319) |
|Windows Server 2012 R2|[SecGuide](/archive/blogs/secguide/security-baseline-for-windows-10-v1607-anniversary-edition-and-windows-server-2016)|August 2014 | [SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319)|
|Windows Server 2012|[Technet](/previous-versions/tn-archive/jj898542(v=technet.10)) |2012| [SCM 4.0](https://www.microsoft.com/download/details.aspx?id=53353) |

### Microsoft products

| Name | Details | Security tools |
|--|--|--|
| Internet Explorer 11 | [SecGuide](/archive/blogs/secguide/security-baselines-for-windows-8-1-windows-server-2012-r2-and-internet-explorer-11-final) | [SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319) |
| Exchange Server 2010 | [Technet](/previous-versions/tn-archive/hh913521(v=technet.10)) | [SCM 4.0](https://www.microsoft.com/download/details.aspx?id=53353) |
| Exchange Server 2007 | [Technet](/previous-versions/tn-archive/hh913520(v=technet.10)) | [SCM 4.0](https://www.microsoft.com/download/details.aspx?id=53353) |
| Microsoft Office 2010 | [Technet](/previous-versions/tn-archive/gg288965(v=technet.10)) | [SCM 4.0](https://www.microsoft.com/download/details.aspx?id=53353) |
| Microsoft Office 2007 SP2 | [Technet](/previous-versions/tn-archive/cc500475(v=technet.10)) | [SCM 4.0](https://www.microsoft.com/download/details.aspx?id=53353) |

> [!NOTE]
> Browser baselines are built-in to new OS versions starting with Windows 10.

## See also

[Windows security baselines](windows-security-baselines.md)
