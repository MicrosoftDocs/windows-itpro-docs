---
title: Audit MPSSVC Rule-Level Policy Change 
description: Audit MPSSVC Rule-Level Policy Change determines if audit events are generated when policy rules are altered for the Microsoft Protection Service (MPSSVC.exe).
ms.assetid: 263461b3-c61c-4ec3-9dee-851164845019
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/06/2021
ms.topic: reference
---

# Audit MPSSVC Rule-Level Policy Change


Audit MPSSVC Rule-Level Policy Change determines whether the operating system generates audit events when changes are made to policy rules for the Microsoft Protection Service (MPSSVC.exe).

The Microsoft Protection Service, which is used by Windows Firewall, is an integral part of the computer’s threat protection against malware. The tracked activities include:

-   Active policies when the Windows Firewall service starts.

-   Changes to Windows Firewall rules.

-   Changes to the Windows Firewall exception list.

-   Changes to Windows Firewall settings.

-   Rules ignored or not applied by the Windows Firewall service.

-   Changes to Windows Firewall Group Policy settings.

Changes to firewall rules are important for understanding the security state of the computer and how well it is protected against network attacks.

**Event volume**: Medium.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                               |
|-------------------|-----------------|-----------------|------------------|------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | Yes             | Yes              | Yes              | Success events shows you changes in Windows Firewall rules and settings, active configuration and rules after Windows Firewall Service startup and default configuration restore actions.<br>Failure events may help to identify configuration problems with Windows Firewall rules or settings. |
| Member Server     | Yes             | Yes             | Yes              | Yes              | Success events shows you changes in Windows Firewall rules and settings, active configuration and rules after Windows Firewall Service startup and default configuration restore actions.<br>Failure events may help to identify configuration problems with Windows Firewall rules or settings. |
| Workstation       | Yes             | Yes             | Yes              | Yes              | Success events shows you changes in Windows Firewall rules and settings, active configuration and rules after Windows Firewall Service startup and default configuration restore actions.<br>Failure events may help to identify configuration problems with Windows Firewall rules or settings. |

**Events List:**

-   [4944](event-4944.md)(S): The following policy was active when the Windows Firewall started.

-   [4945](event-4945.md)(S): A rule was listed when the Windows Firewall started.

-   [4946](event-4946.md)(S): A change has been made to Windows Firewall exception list. A rule was added.

-   [4947](event-4947.md)(S): A change has been made to Windows Firewall exception list. A rule was modified.

-   [4948](event-4948.md)(S): A change has been made to Windows Firewall exception list. A rule was deleted.

-   [4949](event-4949.md)(S): Windows Firewall settings were restored to the default values.

-   [4950](event-4950.md)(S): A Windows Firewall setting has changed.

-   [4951](event-4951.md)(F): A rule has been ignored because its major version number was not recognized by Windows Firewall.

-   [4952](event-4952.md)(F): Parts of a rule have been ignored because its minor version number was not recognized by Windows Firewall. The other parts of the rule will be enforced.

-   [4953](event-4953.md)(F): A rule has been ignored by Windows Firewall because it could not parse the rule.

-   [4954](event-4954.md)(S): Windows Firewall Group Policy settings have changed. The new settings have been applied.

-   [4956](event-4956.md)(S): Windows Firewall has changed the active profile.

-   [4957](event-4957.md)(F): Windows Firewall did not apply the following rule:

-   [4958](event-4958.md)(F): Windows Firewall did not apply the following rule because the rule referred to items not configured on this computer:

