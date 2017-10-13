---
title: Microsoft Security Baselines
description: This article, and the articles it links to, describe how to use Microsoft Security Baselines in your organization
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: high
ms.author: sagaudre
author: sabrinagaudreau
ms.date: 10/17/2017
---

# Microsoft Security Baselines

**Applies to:**  

-   Windows 10
-   Windows Server (Semi-Annual Channel)
-   Windows Server 2016 

## Using security baselines in your organization 

Microsoft is dedicated to providing our customers with secure operating systems, such as Windows 10 and Windows Server, as well as secure apps, such as Microsoft Edge. In addition to the security assurance of its products, Microsoft also enables you to have fine control of your environments by providing various configuration capabilities. Even though Windows and Windows Server are designed to be secure out-of-the-box, a large number of organizations still want more granular control of their security configurations. To navigate this large number of controls, organizations need guidance for configuring various security features. Microsoft provides this guidance in the form of security baselines.

We recommend implementing an industry-standard configuration that is broadly known and well-tested, such as a Microsoft security baseline, as opposed to creating one yourself. This helps increase flexibility and reduce costs. 

Here is a good blog about [Sticking with Well-Known and Proven Solutions](https://blogs.technet.microsoft.com/fdcc/2010/10/06/sticking-with-well-known-and-proven-solutions/).

## What are security baselines? 

Every organization faces security threats. However, the types of security threats that are of most concern to one organization can be completely different from another organization. For example, an e-commerce company may focus on protecting its Internet-facing web apps, while a hospital may focus on protecting confidential patient information. The one thing that all organizations have in common is a need to keep their apps and devices secure. These devices must be compliant with the security standards (or security baselines) defined by the organization. 

A security baseline is a group of settings that reflects Microsoft recommendations and explains their security impact. These settings are based on feedback from Microsoft security engineering teams, product groups, partners, and customers. 

## Why are security baselines needed? 

Security baselines are an essential benefit to customers because they bring together expert knowledge from Microsoft, partners, and customers. 

For example, there are over 3,000 Group Policy settings for Windows 10, which does not include over 1,800 Internet Explorer 11 settings. Of those 4,800 settings, only some of them are security-related. While Microsoft provides extensive guidance on different security features, going through each of them can take a long time. You would have to determine the security impact of each setting on your own. After you've done that, you still need to determine what values each of these settings should be. 

In modern organizations, the security threat landscape is constantly evolving and IT pros and policy makers must keep current with security threats and changes to Windows security settings to help mitigate these threats.

To help faster deployments and increase the ease of managing Windows, Microsoft provides customers with security baselines that are available in formats that can be consumed, such as Group Policy Objects backups.  

## How can you use security baselines? 

You can use security baselines to: 
-   Ensure that user and device configuration settings are compliant with the baseline. 
-   Set configuration settings. For example, you can use Group Policy, System Center Configuration Manager, or Microsoft Intune to configure a device with the setting values specified in the baseline. 

## Where can I get the security baselines? 

You can download the security baselines from the [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=55319). This download page is for the Security Compliance Toolkit which comprises tools that can assist an admin with managing the baselines in addition to the actual security baselines.

## Microsoft Security Compliance Toolkit 1.0

### What is the Security Compliance Toolkit (SCT)?

The Security Compliance Toolkit is a set of tools that allows enterprise security administrators to download, analyze, test, edit and store Microsoft-recommended security configuration baselines for Windows and other Microsoft products.

It enables the administrators to effectively manage their enterprise’s Group Policy Objects (GPOs). Using the toolkit, administrators can compare their current GPOs with Microsoft-recommended GPO baselines or other baselines, edit them, store them in GPO backup file format, and apply them broadly through Active Directory or individually through local policy.<p></p>

![Security Compliance Toolkit](images/security-compliance-toolkit.png)

The Security Compliance Toolkit consists of:

-   Windows 10 Security Baselines
    -   Windows 10 Version 1709 (Fall Creators Update)
    -    Windows 10 Version 1703 (Creators Update)
    -   Windows 10 Version 1607 (Anniversary Update)
    -   Windows 10 Version 1511 (November Update) 
    -   Windows 10 Version 1507

-   Windows Server Security Baselines
    -   Windows Server 2016
    -   Windows Server 2012 R2

-   Tools
    -   Policy Analyzer tool
    -   Local Group Policy Object (LGPO) tool


You can [download the tools](https://www.microsoft.com/download/details.aspx?id=55319) along with the baselines for the relevant Windows versions.

### What is the Policy Analyzer tool?

The Policy Analyzer is a utility for analyzing and comparing sets of Group Policy Objects (GPOs). Its main features are:
-   Highlight when a set of Group Policies has redundant settings or internal inconsistencies
-   Highlight the differences between versions or sets of Group Policies
-   Compare GPOs against current local policy and local registry settings
-   Export results to a Microsoft Excel spreadsheet

Policy Analyzer lets you treat a set of GPOs as a single unit. This makes it easy to determine whether particular settings are duplicated across the GPOs or are set to conflicting values. It also lets you capture a baseline and then compare it to a snapshot taken at a later time to identify changes anywhere across the set. 

More information on the Policy Analyzer tool can be found on the [Security Guidance blog](https://blogs.technet.microsoft.com/secguide/2016/01/22/new-tool-policy-analyzer/) or by [downloading the tool](https://www.microsoft.com/download/details.aspx?id=55319).

### What is the Local Group Policy Object (LGPO) tool?

LGPO is a tool for transferring Group Policy directly between a host’s registry and a GPO backup file, bypassing the Domain Controller. This gives administrators a simple way to verify the effects of their Group Policy settings directly. 
Documentation for the LGPO tool can be found on the [Security Guidance blog](https://blogs.technet.microsoft.com/secguide/2016/01/21/lgpo-exe-local-group-policy-object-utility-v1-0/) or by [downloading the tool](https://www.microsoft.com/download/details.aspx?id=55319).

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
|Windows Server 2016 | [SecGuide](https://blogs.technet.microsoft.com/secguide/2016/10/17/security-baseline-for-windows-10-v1607-anniversary-edition-and-windows-server-2016/)<p>  |October 2016 |[SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319) |
|Windows Server 2012 R2|[SecGuide](https://blogs.technet.microsoft.com/secguide/2016/10/17/security-baseline-for-windows-10-v1607-anniversary-edition-and-windows-server-2016/)|August 2014 | [SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319)|
|Windows Server 2012|[Technet](https://technet.microsoft.com/library/jj898542.aspx) |2012| [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx) |
Windows Server 2008 R2 |[SP1](https://technet.microsoft.com/library/gg236605.aspx)|2009 | [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx) |
| Windows Server 2008 |[SP2](https://technet.microsoft.com/library/cc514539.aspx)| 2008 | [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx) |
|Windows Server 2003 R2|[Technet](https://technet.microsoft.com/library/cc163140.aspx)| 2003 | [SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx)|
|Windows Server 2003|[Technet](https://technet.microsoft.com/library/cc163140.aspx)|2003|[SCM 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx)|

<br />

**Microsoft Products**

| Name | Details| Security Tools|
|---|---|---|
Internet Explorer 11 | [SecGuide](https://blogs.technet.microsoft.com/secguide/2014/08/13/security-baselines-for-windows-8-1-windows-server-2012-r2-and-internet-explorer-11-final/)|[SCT 1.0](https://www.microsoft.com/download/details.aspx?id=55319)|[SCT 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx)|
|Internet Explorer 10|[Technet](https://technet.microsoft.com/library/jj898540.aspx)|[SCT 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx) |
|Internet Explorer 9|[Technet](https://technet.microsoft.com/library/hh539027.aspx)|[SCT 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx)
|Internet Explorer 8|[Technet](https://technet.microsoft.com/library/ee712766.aspx)|[SCT 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx)
|Exchange Server 2010|[Technet](https://technet.microsoft.com/library/hh913521.aspx)| [SCT 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx)
|Exchange Server 2007|[Technet](https://technet.microsoft.com/library/hh913520.aspx)| [SCT 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx)
|Microsoft Office 2010|[Technet](https://technet.microsoft.com/library/gg288965.aspx)| [SCT 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx)
|Microsoft Office 2007 SP2|[Technet](https://technet.microsoft.com/library/cc500475.aspx)| [SCT 4.0](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx)

<br />

> [!NOTE]
> Browser baselines are built-in to new OS versions starting with Windows 10

## Get Support

**What is the Microsoft Security Compliance Manager (SCM)?**

The Security Compliance Manager is now retired and is no longer supported. It has been replaced by the Security Compliance Toolkit. The reason for this is that SCM was an incredibly complex and large program that needed to be updated for every Windows release. In order to provide a better service for our customers, we have moved to SCT where we can publish baselines through the Microsoft Download Center in a lightweight .zip file that contains GPO backups, GPO reports, Excel spreadsheets, WMI filters, and scripts to apply the settings to local policy.

More information about this change can be found on the Microsoft 
[Microsoft Security Guidance blog](https://blogs.technet.microsoft.com/secguide/2017/06/15/security-compliance-manager-scm-retired-new-tools-and-procedures/).

**Where can I get an older version of a Windows baseline?**

Any version of Windows baseline before Windows 10 1703, will still be downloadable using SCM. Any future versions of Windows baseline will be available through SCT. See matrix below to see if your version of Windows baseline is available on SCT.

-   [SCM 4.0 Download](https://technet.microsoft.com/solutionaccelerators/cc835245.aspx)
-   [SCM Frequently Asked Questions (FAQ)](https://social.technet.microsoft.com/wiki/contents/articles/1836.microsoft-security-compliance-manager-scm-frequently-asked-questions-faq.aspx)
-   [SCM Release Notes](https://social.technet.microsoft.com/wiki/contents/articles/1864.microsoft-security-compliance-manager-scm-release-notes.aspx)
-   [SCM Baseline Download Help](https://social.technet.microsoft.com/wiki/contents/articles/1865.microsoft-security-compliance-manager-scm-baseline-download-help.aspx)

**What file formats are supported by the new SCT?**

The toolkit supports formats created by the Windows GPO backup feature (.pol, inf. and .csv). Policy Analyzer saves its data in XML files with a .PolicyRules file extension. LGPO also supports its own “LGPO text” file format as a text-based analog for the binary registry.pol file format. See the LGPO documentation for more information. Keep in mind that SCM’s .cab files are no longer supported.

**Does SCT support Desired State Configuration (DSC) file format?**

Not yet. PowerShell-based DSC is rapidly gaining popularity, and more DSC tools are coming online to convert GPOs and DSC and to validate system configuration. We are currently working on the development of a tool that will provide customers with these features.

**Does SCT support the creation of System Center Configuration Manager (SCCM) DCM packs?**

No. A potential alternative is Desired State Configuration (DSC), a feature of the [Windows Management Framework](https://www.microsoft.com/download/details.aspx?id=40855). A tool that supports conversion of GPO backups to DSC format can be found [here](https://github.com/Microsoft/BaselineManagement).

**Does SCT support the creation of Security Content Automation Protocol (SCAP)-format policies?**

No. SCM only supported SCAP 1.0, which was not updated as SCAP evolved. The new toolkit likewise does not include SCAP support.

## Community

-  Microsoft security guidance blog -a new discussion forum page where people can ask questions and leave comments.


[![Microsoft Security Guidance Blog](images/community.png)](https://blogs.technet.microsoft.com/secguide/) 


## Related Videos

You may also be interested in this channel 9 msdn video: 
-   [Defrag Tools](https://channel9.msdn.com/Shows/Defrag-Tools/Defrag-Tools-174-Security-Baseline-Policy-Analyzer-and-LGPO)

## See Also

-   [System Center Configuration Manager (SCCM)](https://www.microsoft.com/cloud-platform/system-center-configuration-manager)
-   [Operations Management Suite](https://www.microsoft.com/cloud-platform/operations-management-suite)
-   [Configuration Management for Nano Server](https://blogs.technet.microsoft.com/grouppolicy/2016/05/09/configuration-management-on-servers/)
-   [Security Baseline Blog](https://blogs.technet.microsoft.com/secguide/2017/09/27/security-baseline-for-windows-10-fall-creators-update-v1709-draft/)
-   [Microsoft Compliance Toolkit Download](https://www.microsoft.com/download/details.aspx?id=55319)

- [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=55319) 

