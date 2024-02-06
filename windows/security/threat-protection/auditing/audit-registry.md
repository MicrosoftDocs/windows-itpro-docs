---
title: Audit Registry 
description: The Advanced Security Audit policy setting, Audit Registry, determines if audit events are generated when users attempt to access registry objects.
ms.assetid: 02bcc23b-4823-46ac-b822-67beedf56b32
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 01/05/2021
ms.topic: reference
---

# Audit Registry


Audit Registry allows you to audit attempts to access registry objects. A security audit event is generated only for objects that have system access control lists ([SACL](/windows/win32/secauthz/access-control-lists)s) specified, and only if the type of access requested, such as Read, Write, or Modify, and the account making the request match the settings in the SACL.

If success auditing is enabled, an audit entry is generated each time any account successfully accesses a registry object that has a matching SACL. If failure auditing is enabled, an audit entry is generated each time any user unsuccessfully attempts to access a registry object that has a matching SACL.

**Event volume**: Low to Medium, depending on how registry SACLs are configured.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
|-------------------|-----------------|-----------------|------------------|------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | IF              | IF              | IF               | IF               | We strongly recommend that you develop a Registry Objects Security Monitoring policy and define appropriate [SACL](/windows/win32/secauthz/access-control-lists)s for registry objects for different operating system templates and roles. Do not enable this subcategory if you have not planned how to use and analyze the collected information. It is also important to delete non-effective, excess [SACL](/windows/win32/secauthz/access-control-lists)s. Otherwise the auditing log will be overloaded with useless information.<br>Failure events can show you unsuccessful attempts to access specific registry objects.<br>Consider enabling this subcategory for critical computers first, after you develop a Registry Objects Security Monitoring policy for them. |
| Member Server     | IF              | IF              | IF               | IF               |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Workstation       | IF              | IF              | IF               | IF               |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |

**Events List:**

-   [4663](event-4663.md)(S): An attempt was made to access an object.

-   [4656](event-4656.md)(S, F): A handle to an object was requested.

-   [4658](event-4658.md)(S): The handle to an object was closed.

-   [4660](event-4660.md)(S): An object was deleted.

-   [4657](event-4657.md)(S): A registry value was modified.

-   [5039](event-5039.md)(-): A registry key was virtualized.

-   [4670](event-4670.md)(S): Permissions on an object were changed.


> [!NOTE]
> On creating a subkey for a parent (RegCreateKey), the expectation is to see an event for opening a handle for the newly created object (event 4656) issued by the object manager. You will see this event only when "Audit Object Access" is enabled under **Local Policies** > **Audit Policy** in Local Security Policy. This event is not generated while using precisely defined settings for seeing only registry-related events under **Advanced Audit Policy Configurations** > **Object Access** > **Audit Registry** in Local Security Policy. For example, you will not see this event with the setting to just see the registry-related auditing events using "auditpol.exe /set /subcategory:{0CCE921E-69AE-11D9-BED3-505054503030} /success:enable". This behavior is expected only on later versions of the operating system (Windows 11, Windows Server 2022, and later). On previous versions, 4656 events are not generated during subkey creation.
>
> Calls to Registry APIs to access an open key object to perform an operation such as RegSetValue, RegEnumValue, and RegRenameKey would trigger an event to access the object (event 4663). For example, creating a subkey using regedit.exe would not trigger a 4663 event, but renaming it would. 
