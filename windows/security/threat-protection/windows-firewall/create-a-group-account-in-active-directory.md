---
title: Create a Group Account in Active Directory (Windows 10)
description: Create a Group Account in Active Directory
ms.assetid: c3700413-e02d-4d56-96b8-7991f97ae432
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

# Create a Group Account in Active Directory

**Applies to**
-   Windows 10
-   Windows Server 2016

To create a security group to contain the computer accounts for the computers that are to receive a set of Group Policy settings, use the Active Directory Users and Computers console.

**Administrative credentials**

To complete this procedure, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to create new group accounts.

**To add a new membership group in Active Directory**

1.  Open the Active Directory Users and Computers console.

2.  In the navigation pane, select the container in which you want to store your group. This is typically the **Users** container under the domain.

3.  Click **Action**, click **New**, and then click **Group**.

4.  In the **Group name** text box, type the name for your new group.

    >**Note:**  Be sure to use a name that clearly indicates its purpose. Check to see if your organization has a naming convention for groups.

5.  In the **Description** text box, enter a description of the purpose of this group.

6.  In the **Group scope** section, select either **Global** or **Universal**, depending on your Active Directory forest structure. If your group must include computers from multiple domains, then select **Universal**. If all of the members are from the same domain, then select **Global**.

7.  In the **Group type** section, click **Security**.

8.  Click **OK** to save your group.
