---
title: Understand AppLocker rules and enforcement setting inheritance in Group Policy (Windows 10)
description: This topic for the IT professional describes how application control policies configured in AppLocker are applied through Group Policy.
ms.assetid: c1c5a3d3-540a-4698-83b5-0dab5d27d871
ms.reviewer: 
ms.author: macapara
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: mjcaparas
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# Understand AppLocker rules and enforcement setting inheritance in Group Policy

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic for the IT professional describes how application control policies configured in AppLocker are applied through Group Policy.

Rule enforcement is applied only to collections of rules, not individual rules. AppLocker divides the rules into the following collections: executable files, Windows Installer files, scripts, packaged apps and packaged app installers, and DLL files. The options for rule enforcement are **Not configured**, **Enforce rules**, or **Audit only**. Together, all AppLocker rule collections compose the application control policy, or AppLocker policy.

Group Policy merges AppLocker policy in two ways:

-   **Rules.** Group Policy does not overwrite or replace rules that are already present in a linked Group Policy Object (GPO). For example, if the current GPO has 12 rules and a linked GPO has 50 rules, 62 rules are applied to all computers that receive the AppLocker policy.
    >**Important:**  When determining whether a file is permitted to run, AppLocker processes rules in the following order:

    1.  **Explicit deny.** An administrator created a rule to deny a file.
    2.  **Explicit allow.** An administrator created a rule to allow a file.
    3.  **Implicit deny.** This is also called the default deny because all files that are not affected by an allow rule are automatically blocked.
     
-   **Enforcement settings.** The last write to the policy is applied. For example, if a higher-level GPO has the enforcement setting configured to **Enforce rules** and the closest GPO has the setting configured to **Audit only**, **Audit only** is enforced. If enforcement is not configured on the closest GPO, the setting from the closest linked GPO will be enforced.
Because a computer's effective policy includes rules from each linked GPO, duplicate rules or conflicting rules could be enforced on a user's computer. Therefore, you should carefully plan your deployment to ensure that only rules that are necessary are present in a GPO.

The following figure demonstrates how AppLocker rule enforcement is applied through linked GPOs.

![applocker rule enforcement inheritance chart](images/applocker-plan-inheritance.gif)

In the preceding illustration, note that all GPOs linked to Contoso are applied in order as configured. The rules that are not configured are also applied. For example, the result of the Contoso and Human Resources GPOs is 33 rules enforced, as shown in the client HR-Term1. The Human Resources GPO contains 10 non-configured rules. When the rule collection is configured for **Audit only**, no rules are enforced.

When constructing the Group Policy architecture for applying AppLocker policies, it is important to remember:

-   Rule collections that are not configured will be enforced.
-   Group Policy does not overwrite or replace rules that are already present in a linked GPO.
-   AppLocker processes the explicit deny rule configuration before the allow rule configuration.
-   For rule enforcement, the last write to the GPO is applied.
