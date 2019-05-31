---
title: Create a Group Policy Object (Windows 10)
description: Create a Group Policy Object
ms.assetid: 72a50dd7-5033-4d97-a5eb-0aff8a35cced
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# Create a Group Policy Object

**Applies to**
-   Windows 10
-   Windows Server 2016

To create a new GPO, use the Active Directory Users and Computers MMC snap-in.

**Administrative credentials**

To complete this procedure, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to create new GPOs.

To create a new GPO

1.  Open the Group Policy Management console.

2.  In the navigation pane, expand **Forest:***YourForestName*, expand **Domains**, expand *YourDomainName*, and then click **Group Policy Objects**.

3.  Click **Action**, and then click **New**.

4.  In the **Name** text box, type the name for your new GPO.

    >**Note:**  Be sure to use a name that clearly indicates the purpose of the GPO. Check to see if your organization has a naming convention for GPOs.

5.  Leave **Source Starter GPO** set to **(none)**, and then click **OK**.

6.  If your GPO will not contain any user settings, then you can improve performance by disabling the **User Configuration** section of the GPO. To do this, perform these steps:

    1.  In the navigation pane, click the new GPO.

    2.  In the details pane, click the **Details** tab.

    3.  Change the **GPO Status** to **User configuration settings disabled**.
