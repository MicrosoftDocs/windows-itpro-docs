---
title: Configure Windows Defender AV with Group Policy
description: Configure Windows Defender AV settings with Group Policy
keywords: group policy, GPO, configuration, settings
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Use Group Policy settings to configure and manage Windows Defender AV

**Applies to:**

- Windows 10, version 1703

You can use [Group Policy](https://msdn.microsoft.com/en-us/library/ee663280(v=vs.85).aspx) to configure and manage Windows Defender AV on your endpoints.

<!-- 
The table in this topic lists the Group Policy settings available in Windows 10, version 1703, and provides links to the appropriate topic in this documentation library (where applicable).
-->

In general, you can use the following procedure to configure or change Windows Defender AV group policy settings:

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object (GPO) you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus**.

6. Expand the section that contains the setting you want to configure, double-click the setting to open it, and make configuration changes.

7. [Deploy the updated GPO as you normally do](https://msdn.microsoft.com/en-us/library/ee663280(v=vs.85).aspx). 

## Related topics

- [Reference topics for management and configuration tools](configuration-management-reference-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)