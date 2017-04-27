---
title: Credential Guard Known issues (Windows 10)
description: Credential Guard - Known issues in Windows 10 Enterprise
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
localizationpriority: high
author: brianlic-msft
---

#  Credential Guard: Known issues 

**Applies to**
-   Windows 10
-   Windows Server 2016
 
Credential Guard has certain requirements for applications. Credential Guard blocks specific authentication capabilities. Therefore applications that require such capabilities will not function when Credential Guard is enabled. For further information, see [Application requirements](https://docs.microsoft.com/en-us/windows/access-protection/credential-guard/credential-guard-requirements#application-requirements).

The following known issues have been fixed by servicing releases made available in the Cumulative Security Updates for April 2017:

•	KB4015217: [Credential Guard generates double bad password count on Active Directory domain-joined Windows 10 machines](https://support.microsoft.com/en-us/help/4015217/windows-10-update-kb4015217)

This issue can potentially lead to unexpected account lockouts.
See also Knowledge Base articles [KB4015219](https://support.microsoft.com/en-us/help/4015219/windows-10-update-kb4015219) and 
[KB4015221](https://support.microsoft.com/en-us/help/4015221/windows-10-update-kb4015221).

In addition, products that connect to Virtualization Based Security (VBS) protected processes can cause Credential Guard-enabled Windows 10 clients to exhibit high CPU utilization. For further information, see the following Knowledge Base articles:

•	KB88869: [Windows 10 machines exhibit high CPU usage with McAfee Application and Change Control (MACC) installed when Credential Guard is enabled](https://kc.mcafee.com/corporate/index?page=content&id=KB88869)

•	[Installing AppSense Environment Manager on Windows 10 machines causes LsaIso.exe to exhibit high CPU usage when Credential Guard is enabled](http://www.appsense.com/kb/160525073917945) *

 *Registration required to access this article. 
