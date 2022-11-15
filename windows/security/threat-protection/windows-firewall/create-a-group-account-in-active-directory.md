---
title: Create a Group Account in Active Directory (Windows)
description: Learn how to create a security group for the computers that are to receive Group Policy settings by using the Active Directory Users and Computers console.
ms.assetid: c3700413-e02d-4d56-96b8-7991f97ae432
ms.reviewer: jekrynit
ms.author: paoloma
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: paolomatarazzo
manager: aaroncz
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/07/2021
ms.technology: itpro-security
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>Windows Server 2016</b>
  - ✅ <b>Windows Server 2019</b>
  - ✅ <b>Windows Server 2022</b>
---

# Create a Group Account in Active Directory


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
