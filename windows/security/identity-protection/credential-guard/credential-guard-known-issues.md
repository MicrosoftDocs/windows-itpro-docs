---
title: Windows Defender Credential Guard - Known issues (Windows 10)
description: Windows Defender Credential Guard - Known issues in Windows 10 Enterprise
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.date: 08/17/2017
ms.reviewer: 
---

#  Windows Defender Credential Guard: Known issues 

**Applies to**
-   Windows 10
-   Windows Server 2016
 
Windows Defender Credential Guard has certain application requirements. Windows Defender Credential Guard blocks specific authentication capabilities. Therefore applications that require such capabilities will not function when it is enabled. For further information, see [Application requirements](https://docs.microsoft.com/windows/access-protection/credential-guard/credential-guard-requirements#application-requirements). 

The following known issue has been fixed in the [Cumulative Security Update for November 2017](https://support.microsoft.com/help/4051033):

-  Scheduled tasks with stored credentials fail to run when Credential Guard is enabled. The task fails and reports Event ID 104 with the following message: <br>
   "Task Scheduler failed to log on ‘\Test’ . <br>
   Failure occurred in ‘LogonUserExEx’ . <br>
   User Action: Ensure the credentials for the task are correctly specified. <br>
   Additional Data: Error Value: 2147943726. 2147943726 : ERROR\_LOGON\_FAILURE (The user name or password is incorrect)."

The following known issues have been fixed by servicing releases made available in the Cumulative Security Updates for April 2017:

- [KB4015217 Windows Defender Credential Guard generates double bad password count on Active Directory domain-joined Windows 10 machines](https://support.microsoft.com/help/4015217/windows-10-update-kb4015217)

     This issue can potentially lead to unexpected account lockouts. See also Microsoft® Knowledge Base articles [KB4015219](https://support.microsoft.com/help/4015219/windows-10-update-kb4015219) and [KB4015221](https://support.microsoft.com/help/4015221/windows-10-update-kb4015221)


- [KB4033236 Two incorrect logon attempts sent to Active Directory after Windows Defender Credential Guard installed on Windows 10](https://support.microsoft.com/help/4033236/two-incorrect-logon-attempts-sent-to-active-directory-after-credential?preview)

    This issue can potentially lead to unexpected account lockouts. The issue was fixed in servicing updates for each of the following operating systems:

    - Windows 10 Version 1607 and Windows Server 2016: 
    [KB4015217 (OS Build 14393.1066 and 14393.1083)](https://support.microsoft.com/help/4015217) 
    - Windows 10 Version 1511: [KB4015219 (OS Build 10586.873)](https://support.microsoft.com/help/4015219)
    - Windows 10 Version 1507: [KB4015221 (OS Build 10240.17354)](https://support.microsoft.com/help/4015221)

## Known issues involving third-party applications

The following issue affects the Java GSS API. See the following Oracle bug database article: 

- [JDK-8161921: Windows 10 Windows Defender Credential Guard does not allow sharing of TGT with Java](http://bugs.java.com/bugdatabase/view_bug.do?bug_id=8161921)

When Windows Defender Credential Guard is enabled on Windows 10, the Java GSS API will not authenticate. This is expected behavior because Windows Defender Credential Guard blocks specific application authentication capabilities and will not provide the TGT session key to applications regardless of registry key settings. For further information see [Application requirements](https://docs.microsoft.com/windows/access-protection/credential-guard/credential-guard-requirements#application-requirements).

The following issue affects Cisco AnyConnect Secure Mobility Client:

- [Blue screen on Windows 10 computers running Windows Defender Device Guard and Windows Defender Credential Guard with Cisco Anyconnect 4.3.04027](https://quickview.cloudapps.cisco.com/quickview/bug/CSCvc66692) \*

*Registration required to access this article. 

The following issue affects McAfee Application and Change Control (MACC):
- [KB88869 Windows 10 machines exhibit high CPU usage with McAfee Application and Change Control (MACC) installed when Windows Defender Credential Guard is enabled](https://kc.mcafee.com/corporate/index?page=content&id=KB88869) <sup>[1]</sup>
   

The following issue affects AppSense Environment Manager.
  For further information, see the following Knowledge Base article:
- [Installing AppSense Environment Manager on Windows 10 machines causes LSAISO.exe to exhibit high CPU usage when Windows Defender Credential Guard is enabled](http://www.appsense.com/kb/160525073917945) <sup>[1]</sup> \**

The following issue affects Citrix applications:
- Windows 10 machines exhibit high CPU usage with Citrix applications installed when Windows Defender Credential Guard is enabled. <sup>[1]</sup>

<sup>[1]</sup> Products that connect to Virtualization Based Security (VBS) protected processes can cause Windows Defender Credential Guard-enabled Windows 10 or Windows Server 2016 machines to exhibit high CPU usage. For technical and troubleshooting information, see the following Microsoft Knowledge Base article:

- [KB4032786 High CPU usage in the LSAISO process on Windows 10 or Windows Server 2016](https://support.microsoft.com/help/4032786)
    
For further technical information on LSAISO.exe, see the MSDN article: [Isolated User Mode (IUM) Processes](https://msdn.microsoft.com/library/windows/desktop/mt809132(v=vs.85).aspx)
    

  \** Registration is required to access this article.


## Vendor support

See the following article on Citrix support for Secure Boot:
- [Citrix Support for Secure Boot](https://www.citrix.com/blogs/2016/12/08/windows-server-2016-hyper-v-secure-boot-support-now-available-in-xenapp-7-12/)

Windows Defender Credential Guard is not supported by either these products, products versions, computer systems, or Windows 10 versions:

- For Windows Defender Credential Guard on Windows 10 with McAfee Encryption products, see:
  [Support for Windows Defender Device Guard and Windows Defender Credential Guard on Windows 10 with McAfee encryption products](https://kc.mcafee.com/corporate/index?page=content&id=KB86009)

- For Windows Defender Credential Guard on Windows 10 with Check Point Endpoint Security Client, see:
  [Check Point Endpoint Security Client support for Microsoft Windows 10 Windows Defender Credential Guard and Windows Defender Device Guard features](https://supportcenter.checkpoint.com/supportcenter/portal?eventSubmit_doGoviewsolutiondetails=&solutionid=sk113912)

- For Windows Defender Credential Guard on Windows 10 with VMWare Workstation
  [Windows 10 host fails when running VMWare Workstation when Windows Defender Credential Guard is enabled](https://kb.vmware.com/selfservice/microsites/search.do?language=en_US&cmd=displayKC&externalId=2146361)

- For Windows Defender Credential Guard on Windows 10 with specific versions of the Lenovo ThinkPad
  [ThinkPad support for Windows Defender Device Guard and Windows Defender Credential Guard in Microsoft Windows 10 – ThinkPad](https://support.lenovo.com/in/en/solutions/ht503039)

- For Windows Defender Credential Guard on Windows 10 with Symantec Endpoint Protection
  [Windows 10 with Windows Defender Credential Guard and Symantec Endpoint Protection 12.1](https://www.symantec.com/connect/forums/windows-10-device-guard-credentials-guard-and-sep-121)

  This is not a comprehensive list. Check whether your product vendor, product version, or computer system, supports Windows Defender Credential Guard on systems that run Windows 10 or specific versions of Windows 10. Specific computer system models may be incompatible with Windows Defender Credential Guard. 

  Microsoft encourages third-party vendors to contribute to this page by providing relevant product support information and by adding links to their own product support statements.
