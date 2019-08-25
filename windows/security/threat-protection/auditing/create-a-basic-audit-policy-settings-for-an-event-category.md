---
title: Create a basic audit policy for an event category (Windows 10)
description: By defining auditing settings for specific event categories, you can create an auditing policy that suits the security needs of your organization.
ms.assetid: C9F52751-B40D-482E-BE9D-2C61098249D3
ms.reviewer: 
ms.author: dolmont
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: none
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# Create a basic audit policy for an event category

**Applies to**
-   Windows 10

By defining auditing settings for specific event categories, you can create an auditing policy that suits the security needs of your organization. On devices that are joined to a domain, auditing settings for the event categories are undefined by default. On domain controllers, auditing is turned on by default.

To complete this procedure, you must be logged on as a member of the built-in Administrators group.

**To define or modify auditing policy settings for an event category for your local computer**

1.  Open the Local Security Policy snap-in (secpol.msc), and then click **Local Policies**.
2.  Click **Audit Policy**.
3.  In the results pane, double-click an event category that you want to change the auditing policy settings for.
4.  Do one or both of the following, and then click **OK.**

    -   To audit successful attempts, select the **Success** check box.
    -   To audit unsuccessful attempts, select the **Failure** check box.

To complete this procedure, you must be logged on as a member of the Domain Admins group.

**To define or modify auditing policy settings for an event category for a domain or organizational unit, when you are on a member server or on a workstation that is joined to a domain**

1.  Open the Group Policy Management Console (GPMC).
2.  In the console tree, double-click **Group Policy objects** in the forest and domain containing the **Default Domain Policy** Group Policy object (GPO) that you want to edit.
3.  Right-click the **Default Domain Policy** GPO, and then click **Edit**.
4.  In the GPMC, go to **Computer Configuration**, **Windows Settings**, **Security Settings**, and then click **Audit Policy**.
5.  In the results pane, double-click an event category that you want to change the auditing policy settings for.
6.  If you are defining auditing policy settings for this event category for the first time, select the **Define these policy settings** check box.
7.  Do one or both of the following, and then click **OK.**

    -   To audit successful attempts, select the **Success** check box.
    -   To audit unsuccessful attempts, select the **Failure** check box.

## Additional considerations

-   To audit object access, enable auditing of the object access event category by following the steps above. Then, enable auditing on the specific object.
-   After your audit policy is configured, events will be recorded in the Security log. Open the Security log to view these events.
-   The default auditing policy setting for domain controllers is **No Auditing**. This means that even if auditing is enabled in the domain, the domain controllers do not inherit auditing policy locally. If you want domain auditing policy to apply to domain controllers, you must modify this policy setting.
