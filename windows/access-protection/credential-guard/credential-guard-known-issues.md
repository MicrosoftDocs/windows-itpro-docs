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
 
Credential Guard has certain application requirements. Credential Guard blocks specific authentication capabilities. Therefore applications that require such capabilities will not function when Credential Guard is enabled. For further information, see [Application requirements](https://docs.microsoft.com/en-us/windows/access-protection/credential-guard/credential-guard-requirements#application-requirements). 

The following known issues have been fixed by servicing releases made available in the Cumulative Security Updates for April 2017:

-	KB4015217: [Credential Guard generates double bad password count on Active Directory domain-joined Windows 10 machines](https://support.microsoft.com/en-us/help/4015217/windows-10-update-kb4015217)

    This issue can potentially lead to unexpected account lockouts.
See also Knowledge Base articles [KB4015219](https://support.microsoft.com/en-us/help/4015219/windows-10-update-kb4015219) and 
[KB4015221](https://support.microsoft.com/en-us/help/4015221/windows-10-update-kb4015221)

The following issue is under investigation. For available workarounds, see the following Knowledge Base article:
-	[Installing AppSense Environment Manager on Windows 10 machines causes LSAiso.exe to exhibit high CPU usage when Credential Guard is enabled](http://www.appsense.com/kb/160525073917945) * <sup>[1]</sup>

    *Registration required to access this article.
    
    <sup>[1]</sup> For further technical information on LSAiso.exe, see this MSDN article: [Isolated User Mode (IUM) Processes](https://msdn.microsoft.com/library/windows/desktop/mt809132(v=vs.85).aspx)
    
The following issue affects Cisco AnyConnect Secure Mobility Client:

-	[Blue screen on Windows 10 computers running Device Guard and Credential Guard with Cisco Anyconnect 4.3.04027](https://quickview.cloudapps.cisco.com/quickview/bug/CSCvc66692)**

**Registration required to access this article. 

Products that connect to Virtualization Based Security (VBS) protected processes can cause Credential Guard-enabled Windows 10 clients to exhibit high CPU usage. For further information, see the following Knowledge Base article:

-	KB88869: [Windows 10 machines exhibit high CPU usage with McAfee Application and Change Control (MACC) installed when Credential Guard is enabled](https://kc.mcafee.com/corporate/index?page=content&id=KB88869)

The following issue is under investigation:

-	 Windows 10 machines exhibit high CPU usage with Citrix applications installed when Credential Guard is enabled.

## Vendor support

See the following article on Citrix support for Secure Boot:
-	[Citrix Support for Secure Boot](https://www.citrix.com/blogs/2016/12/08/windows-server-2016-hyper-v-secure-boot-support-now-available-in-xenapp-7-12/)

Credential Guard is not supported by either these products, products versions, computer systems, or Windows 10 versions:

-	For Credential Guard on Windows 10 with McAfee Encryption products, see:
[Support for Device Guard and Credential Guard on Windows 10 with McAfee encryption products](https://kc.mcafee.com/corporate/index?page=content&id=KB86009)

-	For Credential Guard on Windows 10 with Check Point Endpoint Security Client, see:
[Check Point Endpoint Security Client support for Microsoft Windows 10 Credential Guard and Device Guard features](https://supportcenter.checkpoint.com/supportcenter/portal?eventSubmit_doGoviewsolutiondetails=&solutionid=sk113912)

-	For Credential Guard on Windows 10 with VMWare Workstation
[Windows 10 host fails when running VMWare Workstation when Credential Guard is enabled](https://kb.vmware.com/selfservice/microsites/search.do?language=en_US&cmd=displayKC&externalId=2146361)

-	For Credential Guard on Windows 10 with specific versions of the Lenovo ThinkPad
[ThinkPad support for Device Guard and Credential Guard in Microsoft Windows 10 – ThinkPad](https://support.lenovo.com/in/en/solutions/ht503039)

-	For Credential Guard on Windows 10 with Symantec Endpoint Protection
[Windows 10 with Credential Guard and Symantec Endpoint Protection 12.1](https://www.symantec.com/connect/forums/windows-10-device-guard-credentials-guard-and-sep-121)

 This is not a comprehensive list. Check whether your product vendor, product version, or computer system, supports Credential guard on systems that run Windows 10 or specific versions of Windows 10. Specific computer system models may be incompatible with Credential Guard. 

 Microsoft encourages third-party vendors to contribute to this page by providing relevant product support information and by adding links to their own product support statements.