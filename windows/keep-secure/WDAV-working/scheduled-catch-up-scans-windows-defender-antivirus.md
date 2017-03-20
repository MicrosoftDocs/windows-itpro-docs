---
title: 
description: 
keywords: 
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Configure scheduled and catch-up scanning options

**Applies to**
-   Windows 10

**Audience**

- Network administrators

**Manageability available with**

- Group Policy
- System Center Configuration Manager
- PowerShell cmdlets
- Windows Management Instruction (WMI)



Windows Defender AV lets you define how many scheduled scans an endpoint can miss before it is required to scan itself. This is especially useful in environments where devices are not often connected to a corporate or external network, or devices that are not used on a daily basis.

You can manage the following options with Group Policy, System Center Configuration Manager, Powershell cmdlets, and WMI classes:

- Define the number of days before an endpoint has outdated protection (PS WMI)
- Define the number of days after which a catch-up update must occur (PS WMI)

## Define the number of days before an endpoint has outdated protection (PS WMI)

You can set the number of consecutive scheduled scans that can be missed before Windows Defender AV will force a scan. This is typically encountered in mobile or shared devices that are not regularly turned on, or to account for users who have not logged on to their PC for a period of days.

For example, you have set up a scheduled quick scan to run at 1 am every day. An employee that uses a particular PC is on break for three days and does not log in to their PC. 

When the user returns to work and logs in to their PC, Windows Defender AV will immediately run a quick scan.

The process for enabling this feature is:

1. Set up at least one scheduled scan
2. Enable the catch-up scan feature
3. Define the number of scans that can be skipped before a catch-up scan occurs

This feature can be enabled for both full and quick scans.





**Use Group Policy to enable and configure the catch-up scan feature:**

1.  Ensure you have set up at least one scheduled scan.

2.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivurs > Scan** and configure the following settings:

    1.  If you have set up scheduled quick scans, double-click the **Turn on catch-up quick scan** setting and set the option to **Enabled**. 
    2. If you have set up scheduled quick scans, double-click the **Turn on catch-up full scan** setting and set the option to **Enabled**. 
    3. Double-click the **Define the number of days after which a catch-up scan is forced** setting and set the option to **Enabled**.
    4. Enter the number of scans that can be missed before a scan will be automatically run when the user next logs on to the PC. If you have set up scheduled quick scans, a quick scan will be run; if you have set up scheduled full scans, a full scan will be run.

> [!NOTE]
> The GP setting title refers to the number of days. The setting, however, is applied to the number of scans (not days) before the catch-up scan will be run.





## Related topics

- [Manage Windows Defender Antivirus updates and apply baselines](manage-updates-baselines-windows-defender-antivirus.md)
- [Update and manage Windows Defender in Windows 10](get-started-with-windows-defender-for-windows-10.md)
- [Troubleshoot Windows Defender in Windows 10](troubleshoot-windows-defender-in-windows-10.md)
