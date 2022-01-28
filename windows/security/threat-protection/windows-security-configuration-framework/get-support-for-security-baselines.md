---
title: Get support for security baselines
description: Find answers to frequently asked question on how to get support for baselines, the Security Compliance Toolkit (SCT), and related topics.
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
ms.date: 01/28/2022
ms.reviewer: 
ms.technology: windows-sec
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

No. PowerShell-based DSC is rapidly gaining popularity, and more DSC tools are coming online to convert GPOs and DSC and to validate system configuration.

**Does SCT support the creation of Microsoft Endpoint Manager DCM packs?**

No. A potential alternative is Desired State Configuration (DSC), a feature of the [Windows Management Framework](https://www.microsoft.com/download/details.aspx?id=40855). A tool that supports conversion of GPO Backups to DSC format can be found [here](https://github.com/Microsoft/BaselineManagement).

**Does SCT support the creation of Security Content Automation Protocol (SCAP)-format policies?**

No. SCM supported only SCAP 1.0, which was not updated as SCAP evolved. The new toolkit likewise does not include SCAP support.

<br />

## Version Matrix

**Client Versions**

| Name | Build | Baseline Release Date | Security Tools |
| ---- | ----- | --------------------- | -------------- |
| Windows 11 | [Windows 11](https://techcommunity.microsoft.com/t5/microsoft-security-baselines/windows-11-security-baseline/ba-p/2810772) <br> | October 2021<br>|[SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319) |
| Windows 10 | [21H2](https://techcommunity.microsoft.com/t5/microsoft-security-baselines/security-baseline-for-windows-10-version-21h2/ba-p/3042703) <br> [21H1](https://techcommunity.microsoft.com/t5/microsoft-security-baselines/security-baseline-final-for-windows-10-version-21h1/ba-p/2362353) <br> [20H2](https://techcommunity.microsoft.com/t5/microsoft-security-baselines/security-baseline-final-for-windows-10-and-windows-server/ba-p/1999393) <br> [1909](https://techcommunity.microsoft.com/t5/microsoft-security-baselines/security-baseline-final-for-windows-10-v1909-and-windows-server/ba-p/1023093) <br> [1809](https://techcommunity.microsoft.com/t5/microsoft-security-baselines/security-baseline-final-for-windows-10-v1809-and-windows-server/ba-p/701082) <br> [1607](/archive/blogs/secguide/security-baseline-for-windows-10-v1607-anniversary-edition-and-windows-server-2016) <br>[1507](/archive/blogs/secguide/security-baseline-for-windows-10-v1507-build-10240-th1-ltsb-update)| December 2021<br>May 2021<br>December 2020<br>November 2019<br>October 2018<br>October 2016 <br>January 2016 |[SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319) |
Windows 8.1 |[9600 (April Update)](/archive/blogs/secguide/security-baselines-for-windows-8-1-windows-server-2012-r2-and-internet-explorer-11-final)| October 2013| [SCM 4.0](/previous-versions/tn-archive/cc936627(v=technet.10)) |

<br />

**Server Versions**

| Name | Build | Baseline Release Date | Security Tools |
|---|---|---|---|
|Windows Server 2022 | [SecGuide](https://techcommunity.microsoft.com/t5/microsoft-security-baselines/windows-server-2022-security-baseline/ba-p/2724685) |September 2021 |[SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319) |
|Windows Server 2019 | [SecGuide](https://techcommunity.microsoft.com/t5/microsoft-security-baselines/security-baseline-final-for-windows-10-v1809-and-windows-server/ba-p/701082) |November 2018 |[SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319) |
|Windows Server 2016 | [SecGuide](/archive/blogs/secguide/security-baseline-for-windows-10-v1607-anniversary-edition-and-windows-server-2016) |October 2016 |[SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319) |
|Windows Server 2012 R2|[SecGuide](/archive/blogs/secguide/security-baseline-for-windows-10-v1607-anniversary-edition-and-windows-server-2016)|August 2014 | [SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319)|

<br />

**Microsoft Products**


|           Name            |                                                                            Details                                                                            |                               Security Tools                                |
|---------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------|
|   Microsoft 365 Apps for enterprise, version 2112    | [SecGuide](https://techcommunity.microsoft.com/t5/microsoft-security-baselines/security-baseline-for-microsoft-365-apps-for-enterprise-v2112/ba-p/3038172) |     [SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319)     |
|   Microsoft Edge, version 97    | [SecGuide](https://techcommunity.microsoft.com/t5/microsoft-security-baselines/security-baseline-for-microsoft-edge-v97/ba-p/3062252) |     [SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319)     |

<br />

## See also

[Windows security baselines](windows-security-baselines.md)
