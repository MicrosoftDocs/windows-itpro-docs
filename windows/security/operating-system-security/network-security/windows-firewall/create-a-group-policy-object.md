---
title: Create a Group Policy Object 
description: Learn how to use the Active Directory Users and Computers MMC snap-in to create a GPO. You must be a member of the Domain Administrators group.
ms.prod: windows-client
ms.collection: 
  - highpri
  - tier3
  - must-keep
ms.topic: conceptual
ms.date: 09/07/2021
---

# Create a Group Policy Object


To create a new GPO, use the Active Directory Users and Computers MMC snap-in.

**Administrative credentials**

To complete this procedure, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to create new GPOs.

To create a new GPO

1. Open the Group Policy Management console.

2. In the navigation pane, expand **Forest:**<em>YourForestName</em>, expand **Domains**, expand *YourDomainName*, and then click **Group Policy Objects**.

3. Click **Action**, and then click **New**.

4. In the **Name** text box, type the name for your new GPO.

   > [!NOTE]
   > Be sure to use a name that clearly indicates the purpose of the GPO. Check to see if your organization has a naming convention for GPOs.

5. Leave **Source Starter GPO** set to **(none)**, and then click **OK**.

6. If your GPO will not contain any user settings, then you can improve performance by disabling the **User Configuration** section of the GPO. To do this, perform these steps:

   1.  In the navigation pane, click the new GPO.

   2.  In the details pane, click the **Details** tab.

   3.  Change the **GPO Status** to **User configuration settings disabled**.
