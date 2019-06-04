---
ms.localizationpriority: low
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Details about how the Requester makes sure that the change request update is accurate within the production environment using the Enterprise Mode Site List Portal.
author: eavena
ms.prod: ie11
title: Verify the change request update in the production environment using the Enterprise Mode Site List Portal (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
ms.reviewer: 
manager: dansimp
ms.author: eravena
---

# Verify the change request update in the production environment using the Enterprise Mode Site List Portal

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

## Verify and sign off on the update in the production environment
The Requester tests the changes in the production environment and then goes back into the Enterprise Mode Site List Portal, **Production verification** page to verify whether the testing was successful.

**To verify the changes and sign off**
- On the **Production verification** page, the Requester clicks **Successful**, optionally includes any attachments (only .jpeg, .png, .jpg and .txt files are allowed) to support the testing results, optionally includes a description of the change, and then clicks **Sign off**.

   The Requester, Approver group, and Administrator group all get an email, stating that the change request has been signed off.


**To rollback production changes**
1. On the **Production verification** page, the Requester clicks **Failed** and optionally includes any attachments (only .jpeg, .png, .jpg and .txt files are allowed) to support the testing results.

2. Add a description about the issue into the **Change description** box, and then click **Send failure details**.

   The info is sent to the Administrators.

3. The Requester clicks **Roll back** to roll back the changes in the production environment.

    After the Requester rolls back the changes, the request is automatically handled in the production and pre-production environment site lists.

