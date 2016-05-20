---
title: Windows Server security baselines (Windows 10)
description: Use this topic to learn about updates to the Windows Server security baselines and where to download them.
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Windows Server security baselines

**Applies to**
-   Windows Server 2012 R2

Use the sections in this topic to learn and what has changed in the Windows Server security baselines as well as a link to download them.

## Windows Server 2012 R2 security baseline

The Windows Server 2012 R2 security baseline is available on the [Microsoft Download Center](http://go.microsoft.com/fwlink/p/?LinkID=799382).

> **Note:**  For Windows Server 2012 R2, we do not recommend applying this baseline to servers that are running the following server roles, such as Hyper-V, Active Directory Certificate Services, DHCP, DNS, File Services, Network Policy and Access, Print Server, Remote Access Services, Remote Desktop Services, and Web Server.  

Here's a list of updates that were made to this version:

-   Added the **Prevent enabling lock screen camera** setting.
-   Added the **Prevent enabling lock screen slide show** setting.
-   Added the **Include command line in process creation events** setting.
-   Added the **Do not display network selection UI** setting.
-   Added the **Allow Microsoft accounts to be optional** setting.
-   Added the **Sign-in last interactive user automatically after a system-initiated restart** setting.
-   Added the **Deny access to this computer from the network** setting.
-   Added the **Deny log on through Remote Desktop Services** setting.
-   Added the **Lsass.exe audit mode** (HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\LSASS.exe!AuditLevel) setting.
-   Added the **Enable LSA Protection** (HKLM\SYSTEM\CurrentControlSet\Control\Lsa\RunAsPPL) setting.
-   Added the **Turn off toast notifications on the lock screen** setting.

Additionally, you can change the following settings to help mitigate Pass-the-hash attacks:

-   Configure the **Apply UAC restrictions to local accounts on network logons** setting to 0.
-   Add **Local account** to the **Deny access to this computer from the network** security policy setting.
-   Add **Local account** to the **Deny log on through Remote Desktop Services** security policy setting.
-   Add **Enterprise Admins** and **Domain Admins** to the **Deny log on as a batch job** security policy setting on all devices except for domain controllers and privileged access workstations.
-   Add **Enterprise Admins** and **Domain Admins** to the **Deny log on as a service** security policy setting on all devices except for domain controllers and privileged access workstations.
-   Add **Enterprise Admins** and **Domain Admins** to the **Deny log on locally** security policy setting on all devices except for domain controllers and privileged access workstations.
-   Disable the **WDigest Authentication** setting.

## Related topics

- [Use security baselines in your organization](security-baselines.md)