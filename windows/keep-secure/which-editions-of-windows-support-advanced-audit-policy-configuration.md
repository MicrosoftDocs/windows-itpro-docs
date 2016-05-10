---
title: Which editions of Windows support advanced audit policy configuration (Windows 10)
description: This reference topic for the IT professional describes which versions of the Windows operating systems support advanced security auditing policies.
ms.assetid: 87c71cc5-522d-4771-ac78-34a2a0825f31
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Which editions of Windows support advanced audit policy configuration
**Applies to**
-   Windows 10
This reference topic for the IT professional describes which versions of the Windows operating systems support advanced security auditing policies.
Versions of the Windows operating system that cannot join a domain do not have access to these features. There is no difference in security auditing support between 32-bit and 64-bit versions.
## Are there any special considerations?
In addition, the following special considerations apply to the various tasks associated with advanced security auditing enhancements:
-   **Creating an audit policy.** To create an advanced security auditing policy, you must use a computer running any supported version of Windows. You can use the Group Policy Management Console (GPMC) on a computer running a supported version of the Windows client operating system after installing the Remote Server Administration Tools.
-   **Applying audit policy settings.** If you are using Group Policy to apply the advanced audit policy settings and global object access settings, client computers must be running any supported version of the Windows server operating system or Windows client operating system. In addition, only computers running any of these supported operating systems can provide "reason for access" reporting data.
-   **Developing an audit policy model.** To plan advanced security audit settings and global object access settings, you must use the GPMC that targets a domain controller running a supported version of the Windows server operating system.
-   **Distributing the audit policy.** After a Group Policy Object (GPO) that includes advanced security auditing settings is developed, it can be distributed by using domain controllers running any Windows Server operating system. However, if you cannot put client computers running a supported version of the Windows client operating system into a separate organizational unit (OU), you should use Windows Management Instrumentation (WMI) filtering to ensure that the advanced security auditing policy settings are applied only to client computers running a supported version of the Windows client operating system.
**Important**  
Using both the basic auditing policy settings under **Local Policies\\Audit Policy** and the advanced auditing policy settings under **Advanced Audit Policy Configuration** can cause unexpected results in audit reporting. Therefore, the two sets of audit policy settings should not be combined. If you use advanced audit policy configuration settings, you should enable the **Audit: Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings** policy setting under **Local Policies\\Security Options**. This will prevent conflicts between similar settings by forcing basic security auditing to be ignored.  
 
 
 
